--填充median
drop table if exists wifi_median;
create table wifi_median as select wifi_id,median(db) as db_median from 
user_shop_behavior_wifi group by wifi_id;

drop table if exists user_shop_behavior_wifi_dropout_median;
create table user_shop_behavior_wifi_dropout_median as select
a.row_id,a.mall_id,a.shop_id,a.wifi_id,if(a.db is null,if(b.db_median is not null,b.db_median,-68),a.db) as db,a.flag,a.db_rank
  from user_shop_behavior_wifi a left outer join wifi_median b on a.wifi_id=b.wifi_id;

drop table if exists evaluation_public_wifi_dropout_median;
create table evaluation_public_wifi_dropout_median as select
a.row_id,a.mall_id,a.wifi_id,if(a.db is null,if(b.db_median is not null,b.db_median,-68),a.db) as db,a.flag,a.db_rank
  from evaluation_public_wifi a left outer join wifi_median b on a.wifi_id=b.wifi_id;

--shop 编码
drop table if exists shop_code;
create table shop_code as
select mall_id,shop_id,row_number() over (partition by mall_id order by shop_id) -1 as shop_code
from shop_info;

--最大label
drop table if exists label_max;
create table label_max as 
select mall_id,max(shop_code) as shop_code from shop_code group by mall_id;

--wifi 编码
drop table if exists wifi_code;
create table wifi_code as 
select mall_id,wifi_id,row_number() over (partition by mall_id order by wifi_id) +4 as wifi_code
from
(select mall_id,wifi_id
from user_shop_behavior_wifi group by mall_id,wifi_id having count(*)>20) a;--这里删掉出现20次及以下的wifi

--kv格式的训练数据
drop table if exists user_shop_behavior_kv;
create table user_shop_behavior_kv (row_id bigint,kv string,label bigint) partitioned by (mall_id string);
insert overwrite table user_shop_behavior_kv partition(mall_id) select f.row_id,f.kv,g.shop_code as label,f.mall_id
from
  (select e.row_id,e.mall_id,e.shop_id,
    concat("1:",e.longitude,
           " 2:",e.latitude,
           " 3:",regexp_count(e.wifi_infos,"null"),
           " 4:",regexp_count(e.wifi_infos,"true"),
          if(d.kv is null,"",d.kv)) as kv
  from user_shop_behavior e
  left outer join
    (select row_id,kv(wifi_code,db) as kv
    from
      (select a.row_id,b.wifi_code,a.db
      from user_shop_behavior_wifi_dropout_median a join wifi_code b on a.mall_id=b.mall_id and a.wifi_id=b.wifi_id) c
    group by row_id)d
  on e.row_id=d.row_id)f
left outer join shop_code g on f.shop_id=g.shop_id;

--kv格式的预测数据
drop table if exists evaluation_public_kv;
create table evaluation_public_kv (row_id bigint,kv string) partitioned by (mall_id string);
insert overwrite table evaluation_public_kv partition(mall_id)
select e.row_id,
       concat("1:",e.longitude,
              " 2:",e.latitude,
              " 3:",regexp_count(e.wifi_infos,"null"),
              " 4:",regexp_count(e.wifi_infos,"true"),
              if(d.kv is null,"",d.kv)) as kv,
       e.mall_id
from evaluation_public e
left outer join
  (select row_id,kv(wifi_code,db) as kv
  from
    (select a.row_id,b.wifi_code,a.db
    from evaluation_public_wifi_dropout_median a join wifi_code b on a.mall_id=b.mall_id and a.wifi_id=b.wifi_id) c
  group by row_id)d
on e.row_id=d.row_id;

--去掉含null的数据
create table user_shop_behavior_kv_temp as select * from user_shop_behavior_kv where regexp_count(kv," 3:0 ")=1;
insert overwrite table user_shop_behavior_kv partition(mall_id)
	select row_id,kv,label,mall_id from user_shop_behavior_kv_temp;

--去掉null的数据
create table evaluation_public_kv_temp as select * from evaluation_public_kv where regexp_count(kv," 3:0 ")=1;
insert overwrite table evaluation_public_kv partition(mall_id)
	select row_id,kv,mall_id from evaluation_public_kv_temp;
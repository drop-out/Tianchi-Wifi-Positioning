--拷贝原始表,训练集加入row_id
drop table if exists evaluation_public;
drop table if exists shop_info;
drop table if exists user_shop_behavior;
create table evaluation_public as select 
	cast(row_id as bigint) as row_id,user_id,mall_id,time_stamp,longitude,latitude,wifi_infos
from odps_tc_257100_f673506e024.ant_tianchi_ccf_sl_test;
create table shop_info as select * from odps_tc_257100_f673506e024.ant_tianchi_ccf_sl_shop_info;
create table user_shop_behavior as
select b.*,shop_info.mall_id as mall_id
from
  (select 10000000+row_number() over (partition by 1 order by user_id,shop_id,time_stamp,wifi_infos) as row_id,
  a.* from odps_tc_257100_f673506e024.ant_tianchi_ccf_sl_user_shop_behavior a)b
left outer join shop_info
on b.shop_id=shop_info.shop_id;

--注册udf
drop function if exists wifi_cut;
drop function if exists wifi_cut_history;
drop function if exists kv;
create function wifi_cut as 'wifi.WifiCut' using 'wifi.jar';
create function wifi_cut_history as 'wifi.WifiCutHistory' using 'wifi.jar';
create function kv as 'wifi.KV' using 'wifi.jar';

drop function if exists prob_pivot;
create function prob_pivot as 'wifi.ProbPivot' using 'wifi.jar';

drop function if exists prob_melt;
create function prob_melt as 'wifi.ProbMelt' using 'wifi.jar';


--分训练测试
drop table if exists train_user_shop_behavior;
drop table if exists train;
drop table if exists local_train;
drop table if exists local_test;

create table train_user_shop_behavior as select * from user_shop_behavior where time_stamp<'2017-08-25 00:00';
create table train as select row_id,user_id,mall_id,shop_id as shop_id_true,time_stamp,longitude,latitude,wifi_infos from user_shop_behavior where time_stamp>='2017-08-25 00:00';
create table local_train as select row_id,user_id,mall_id,shop_id as shop_id_true,time_stamp,longitude,latitude,wifi_infos from user_shop_behavior where time_stamp>='2017-08-25 00:00' and time_stamp<'2017-08-29 00:00';
create table local_test as select row_id,user_id,mall_id,shop_id as shop_id_true,time_stamp,longitude,latitude,wifi_infos from user_shop_behavior where time_stamp>='2017-08-29 00:00';

--wifi分列
drop table if exists user_shop_behavior_wifi;
create table user_shop_behavior_wifi as
select row_id,mall_id,shop_id,wifi_id,db,flag,row_number() over (partition by row_id order by db desc) as db_rank
from
    (select wifi_cut_history(row_id,mall_id,shop_id,wifi_infos) as (row_id,mall_id,shop_id,wifi_id,db,flag) from user_shop_behavior) a;

drop table if exists wifi_screen;
create table wifi_screen as select wifi_id,count(*) as n_occurence
from user_shop_behavior_wifi group by wifi_id having count(*)>1;--这里筛掉只出现过一次的wifi

drop table if exists user_shop_behavior_wifi_screen;
create table user_shop_behavior_wifi_screen as 
select row_id,mall_id,shop_id,wifi_id,db,flag,row_number() over (partition by row_id order by db desc) as db_rank
from
	(select * from user_shop_behavior_wifi a left semi join wifi_screen b on a.wifi_id=b.wifi_id) c;

drop table if exists evaluation_public_wifi;
create table evaluation_public_wifi as
select row_id,mall_id,wifi_id,db,flag,row_number() over (partition by row_id order by db desc) as db_rank
from
    (select wifi_cut(row_id,mall_id,wifi_infos) as (row_id,mall_id,wifi_id,db,flag) from evaluation_public)a;

drop table if exists evaluation_public_wifi_screen;
create table evaluation_public_wifi_screen as 
select row_id,mall_id,wifi_id,db,flag,row_number() over (partition by row_id order by db desc) as db_rank
from
	(select * from evaluation_public_wifi a left semi join wifi_screen b on a.wifi_id=b.wifi_id) c;

drop table if exists train_user_shop_behavior_wifi;
create table train_user_shop_behavior_wifi as 
select *
from  user_shop_behavior_wifi_screen a left semi join train_user_shop_behavior b on a.row_id=b.row_id; 

drop table if exists train_wifi;
create table train_wifi as 
select * from user_shop_behavior_wifi_screen a left semi join train b on a.row_id=b.row_id;
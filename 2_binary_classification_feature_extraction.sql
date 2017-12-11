--wifi信号range
drop table if exists train_wifi_range;
create table train_wifi_range as select
shop_id,wifi_id,max(db) as db_max,min(db) as db_min, median(db) as db_median
from train_user_shop_behavior_wifi
group by shop_id,wifi_id;

drop table if exists online_test_wifi_range;
create table online_test_wifi_range as select
shop_id,wifi_id,max(db) as db_max,min(db) as db_min, median(db) as db_median
from user_shop_behavior_wifi_screen
group by shop_id,wifi_id;

--shop频率特征
drop table if exists train_shop_freq;
create table train_shop_freq as 
select mall_id,shop_id,shop_visit,shop_visit/sum(shop_visit) over (partition by mall_id) as shop_freq
from
	(select mall_id,shop_id,count(*) as shop_visit from train_user_shop_behavior group by mall_id,shop_id) a;

drop table if exists online_test_shop_freq;
create table online_test_shop_freq as 
select mall_id,shop_id,shop_visit,shop_visit/sum(shop_visit) over (partition by mall_id) as shop_freq
from
	(select mall_id,shop_id,count(*) as shop_visit from user_shop_behavior group by mall_id,shop_id) a;

--user_shop对
drop table if exists train_user_shop;
create table train_user_shop as select user_id,shop_id,count(*) as user_shop_visit 
from train_user_shop_behavior group by user_id,shop_id;

drop table if exists online_test_user_shop;
create table online_test_user_shop as select user_id,shop_id,count(*) as user_shop_visit 
from user_shop_behavior group by user_id,shop_id;

--user_mall对
drop table if exists train_user_mall;
create table train_user_mall as select user_id,mall_id,count(*) as user_mall_visit
from train_user_shop_behavior group by user_id,mall_id;

drop table if exists online_test_user_mall;
create table online_test_user_mall as select user_id,mall_id,count(*) as user_mall_visit 
from user_shop_behavior group by user_id,mall_id;

--connect_count
drop table if exists train_connect_count;
create table train_connect_count as select wifi_id,count(*) as connect_count
from train_user_shop_behavior_wifi where flag=true group by wifi_id;

drop table if exists online_test_connect_count;
create table online_test_connect_count as select wifi_id,count(*) as connect_count
from user_shop_behavior_wifi_screen where flag=true group by wifi_id;

--connect_shop_count
drop table if exists train_connect_shop_count;
create table train_connect_shop_count as select wifi_id,shop_id,count(*) as connect_shop_count
from train_user_shop_behavior_wifi where flag=true group by wifi_id,shop_id;

drop table if exists online_test_connect_shop_count;
create table online_test_connect_shop_count as select wifi_id,shop_id,count(*) as connect_shop_count
from user_shop_behavior_wifi_screen where flag=true group by wifi_id,shop_id;


--新增：不按位置的统计
drop table if exists train_wifi_count_all_position;
create table train_wifi_count_all_position as select wifi_id,count(1) as wifi_count 
	from train_user_shop_behavior_wifi group by wifi_id;
drop table if exists train_wifi_shop_count_all_position;
create table train_wifi_shop_count_all_position as select wifi_id,shop_id,count(1) as wifi_shop_count 
	from train_user_shop_behavior_wifi group by wifi_id,shop_id;

drop table if exists online_test_wifi_count_all_position;
create table online_test_wifi_count_all_position as select wifi_id,count(1) as wifi_count 
	from user_shop_behavior_wifi_screen group by wifi_id;
drop table if exists online_test_wifi_shop_count_all_position;
create table online_test_wifi_shop_count_all_position as select wifi_id,shop_id,count(1) as wifi_shop_count
	from user_shop_behavior_wifi_screen group by wifi_id,shop_id;



--wifi_count
drop table if exists temp;
create table temp as 
select wifi_id,db_rank as position,count(1) as wifi_count from train_user_shop_behavior_wifi where db is not null
group by wifi_id,db_rank;

drop table if exists train_wifi_count;
create table train_wifi_count 
	(wifi_id string,
	wc_1 bigint,wc_2 bigint,wc_3 bigint,wc_4 bigint,wc_5 bigint,wc_6 bigint,wc_7 bigint,wc_8 bigint,wc_9 bigint,wc_10 bigint);
--@resource_reference{"wifi.jar"}
jar -libjars wifi.jar -classpath ./wifi.jar wifi.WifiPositionCount temp wifi_id position wifi_count train_wifi_count;
drop table temp;


drop table if exists temp;
create table temp as 
select wifi_id,db_rank as position,count(1) as wifi_count from user_shop_behavior_wifi_screen where db is not null
group by wifi_id,db_rank;

drop table if exists online_test_wifi_count;
create table online_test_wifi_count 
	(wifi_id string,
	wc_1 bigint,wc_2 bigint,wc_3 bigint,wc_4 bigint,wc_5 bigint,wc_6 bigint,wc_7 bigint,wc_8 bigint,wc_9 bigint,wc_10 bigint);
--@resource_reference{"wifi.jar"}
jar -libjars wifi.jar -classpath ./wifi.jar wifi.WifiPositionCount temp wifi_id position wifi_count online_test_wifi_count;
drop table temp;


--wifi_shop_count
drop table if exists temp;
create table temp as 
select wifi_id,shop_id,db_rank as position,count(1) as wifi_count from train_user_shop_behavior_wifi where db is not null
group by wifi_id,shop_id,db_rank;

drop table if exists train_wifi_shop_count;
create table train_wifi_shop_count 
	(wifi_id string,shop_id string,
	wsc_1 bigint,wsc_2 bigint,wsc_3 bigint,wsc_4 bigint,wsc_5 bigint,wsc_6 bigint,wsc_7 bigint,wsc_8 bigint,wsc_9 bigint,wsc_10 bigint);
--@resource_reference{"wifi.jar"}
jar -libjars wifi.jar -classpath ./wifi.jar wifi.WifiPositionCount temp wifi_id,shop_id position wifi_count train_wifi_shop_count;
drop table temp;


drop table if exists temp;
create table temp as 
select wifi_id,shop_id,db_rank as position,count(1) as wifi_count from user_shop_behavior_wifi_screen where db is not null
group by wifi_id,shop_id,db_rank;

drop table if exists online_test_wifi_shop_count;
create table online_test_wifi_shop_count 
	(wifi_id string,shop_id string,
	wsc_1 bigint,wsc_2 bigint,wsc_3 bigint,wsc_4 bigint,wsc_5 bigint,wsc_6 bigint,wsc_7 bigint,wsc_8 bigint,wsc_9 bigint,wsc_10 bigint);
--@resource_reference{"wifi.jar"}
jar -libjars wifi.jar -classpath ./wifi.jar wifi.WifiPositionCount temp wifi_id,shop_id position wifi_count online_test_wifi_shop_count;
drop table temp;


--shop经纬度中心
drop table if exists train_shop_center;
create table train_shop_center as select 
shop_id,median(latitude) as latitude_c,median(longitude) as longitude_c 
from train_user_shop_behavior
group by shop_id;

drop table if exists online_test_shop_center;
create table online_test_shop_center as select 
shop_id,median(latitude) as latitude_c,median(longitude) as longitude_c
from user_shop_behavior
group by shop_id;


--block_shop_count
drop table if exists train_block1_shop_count;
create table train_block1_shop_count as select
la_1,lo_1,shop_id,count(*) as block_shop_count
from
	(select shop_id,cast(round(latitude/0.00001) as bigint) as la_1,cast(round(longitude/0.00001) as bigint) as lo_1
	from train_user_shop_behavior) a
group by la_1,lo_1,shop_id;

drop table if exists online_test_block1_shop_count;
create table online_test_block1_shop_count as select
la_1,lo_1,shop_id,count(*) as block_shop_count
from
	(select shop_id,cast(round(latitude/0.00001) as bigint) as la_1,cast(round(longitude/0.00001) as bigint) as lo_1
	from user_shop_behavior) a
group by la_1,lo_1,shop_id;

drop table if exists train_block5_shop_count;
create table train_block5_shop_count as select
la_5,lo_5,shop_id,count(*) as block_shop_count
from
	(select shop_id,cast(round(latitude/0.00005) as bigint) as la_5,cast(round(longitude/0.00005) as bigint) as lo_5
	from train_user_shop_behavior) a
group by la_5,lo_5,shop_id;

drop table if exists online_test_block5_shop_count;
create table online_test_block5_shop_count as select
la_5,lo_5,shop_id,count(*) as block_shop_count
from
	(select shop_id,cast(round(latitude/0.00005) as bigint) as la_5,cast(round(longitude/0.00005) as bigint) as lo_5
	from user_shop_behavior) a
group by la_5,lo_5,shop_id;

drop table if exists train_block10_shop_count;
create table train_block10_shop_count as select
la_10,lo_10,shop_id,count(*) as block_shop_count
from
	(select shop_id,cast(round(latitude/0.0001) as bigint) as la_10,cast(round(longitude/0.0001) as bigint) as lo_10
	from train_user_shop_behavior) a
group by la_10,lo_10,shop_id;

drop table if exists online_test_block10_shop_count;
create table online_test_block10_shop_count as select
la_10,lo_10,shop_id,count(*) as block_shop_count
from
	(select shop_id,cast(round(latitude/0.0001) as bigint) as la_10,cast(round(longitude/0.0001) as bigint) as lo_10
	from user_shop_behavior) a
group by la_10,lo_10,shop_id;


--block_shop_total
drop table if exists train_block1_shop_total;
create table train_block1_shop_total as select
la_1,lo_1,count(*) as block_shop_total
from
	(select shop_id,cast(round(latitude/0.00001) as bigint) as la_1,cast(round(longitude/0.00001) as bigint) as lo_1
	from train_user_shop_behavior) a
group by la_1,lo_1;

drop table if exists online_test_block1_shop_total;
create table online_test_block1_shop_total as select
la_1,lo_1,count(*) as block_shop_total
from
	(select shop_id,cast(round(latitude/0.00001) as bigint) as la_1,cast(round(longitude/0.00001) as bigint) as lo_1
	from user_shop_behavior) a
group by la_1,lo_1;

drop table if exists train_block5_shop_total;
create table train_block5_shop_total as select
la_5,lo_5,count(*) as block_shop_total
from
	(select shop_id,cast(round(latitude/0.00005) as bigint) as la_5,cast(round(longitude/0.00005) as bigint) as lo_5
	from train_user_shop_behavior) a
group by la_5,lo_5;

drop table if exists online_test_block5_shop_total;
create table online_test_block5_shop_total as select
la_5,lo_5,count(*) as block_shop_total
from
	(select shop_id,cast(round(latitude/0.00005) as bigint) as la_5,cast(round(longitude/0.00005) as bigint) as lo_5
	from user_shop_behavior) a
group by la_5,lo_5;

drop table if exists train_block10_shop_total;
create table train_block10_shop_total as select
la_10,lo_10,count(*) as block_shop_total
from
	(select shop_id,cast(round(latitude/0.0001) as bigint) as la_10,cast(round(longitude/0.0001) as bigint) as lo_10
	from train_user_shop_behavior) a
group by la_10,lo_10;

drop table if exists online_test_block10_shop_total;
create table online_test_block10_shop_total as select
la_10,lo_10,count(*) as block_shop_total
from
	(select shop_id,cast(round(latitude/0.0001) as bigint) as la_10,cast(round(longitude/0.0001) as bigint) as lo_10
	from user_shop_behavior) a
group by la_10,lo_10;
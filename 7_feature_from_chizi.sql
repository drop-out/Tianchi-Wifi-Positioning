--train gps adc
drop table if exists local_gpsadc;
create table local_gpsadc (row_id bigint,shop_id string,sum_prob double,min_prob double,max_prob double,count_prob double);
drop table if exists local_train_for_gpsadc;
create table local_train_for_gpsadc as select row_id,mall_id,shop_id as shop_id_true,longitude,latitude from train_user_shop_behavior;
--@resource_reference{"wifi.jar"}
jar -libjars wifi.jar -classpath ./wifi.jar wifi.GPSADC local_train_for_gpsadc train local_gpsadc;

drop table if exists local_gpsadc_one;
create table local_gpsadc_one as 
select 
row_id,shop_id,
if(sum_prob_max=0,0,sum_prob/sum_prob_max) as sum_prob,
sum_prob/count_prob as mean_prob,
min_prob,max_prob
from
	(select *,max(sum_prob) over (partition by row_id) as sum_prob_max
	from local_gpsadc) a;


--online_test gps adc
drop table if exists user_shop_behavior_for_gpsadc;
create table user_shop_behavior_for_gpsadc as select row_id,mall_id,shop_id as shop_id_true,longitude,latitude from user_shop_behavior;
drop table if exists online_test_gpsadc;
create table online_test_gpsadc (row_id bigint,shop_id string,sum_prob double,min_prob double,max_prob double,count_prob double);
--@resource_reference{"wifi.jar"}
jar -libjars wifi.jar -classpath ./wifi.jar wifi.GPSADC user_shop_behavior_for_gpsadc evaluation_public online_test_gpsadc;

drop table if exists online_test_gpsadc_one;
create table online_test_gpsadc_one as 
select 
row_id,shop_id,
if(sum_prob_max=0,0,sum_prob/sum_prob_max) as sum_prob,
sum_prob/count_prob as mean_prob,
min_prob,max_prob
from
	(select *,max(sum_prob) over (partition by row_id) as sum_prob_max
	from online_test_gpsadc) a;


--train tfidf
--核心是用exp(-(db_rank-1) *0.6)把排名转化成一个weight
drop table if exists train_tfidf;
create table train_tfidf as select
row_id,shop_id,tfidf,sum(tfidf) over (partition by row_id) as row_tfidf
from
	(select row_id,shop_id,sum(exp(-(db_rank-1) *0.6)*weight) as tfidf
	from
		(select e.row_id,e.shop_id,e.db_rank,if(b.weight is null,0,b.weight) as weight
		from
			(select c.row_id,d.shop_id,c.wifi_id,c.db_rank
			from train_wifi c left outer join shop_info d on c.mall_id=d.mall_id) e
		left outer join
			(select shop_id,wifi_id,weight/sum(weight) over (partition by shop_id) as weight
			from
				(select shop_id,wifi_id,sum(exp(-(db_rank-1) *0.6)) as weight 
				from train_user_shop_behavior_wifi
				group by shop_id,wifi_id) a
			) b
		on e.shop_id=b.shop_id and e.wifi_id=b.wifi_id) f
	group by row_id,shop_id) g;

--online_test tfidf
--核心是用exp(-(db_rank-1) *0.6)把排名转化成一个weight
drop table if exists online_test_tfidf;
create table online_test_tfidf as select
row_id,shop_id,tfidf,sum(tfidf) over (partition by row_id) as row_tfidf
from
	(select row_id,shop_id,sum(exp(-(db_rank-1) *0.6)*weight) as tfidf
	from
		(select e.row_id,e.shop_id,e.db_rank,if(b.weight is null,0,b.weight) as weight
		from
			(select c.row_id,d.shop_id,c.wifi_id,c.db_rank
			from evaluation_public_wifi_screen c left outer join shop_info d on c.mall_id=d.mall_id) e
		left outer join
			(select shop_id,wifi_id,weight/sum(weight) over (partition by shop_id) as weight
			from
				(select shop_id,wifi_id,sum(exp(-(db_rank-1) *0.6)) as weight 
				from user_shop_behavior_wifi_screen
				group by shop_id,wifi_id) a
			) b
		on e.shop_id=b.shop_id and e.wifi_id=b.wifi_id) f
	group by row_id,shop_id) g;

--李强要的tfidf
create table train_l2_user_shop_behavior as select * from user_shop_behavior where time_stamp<'2017-08-18 00:00';
create table train_l2 as select row_id,user_id,mall_id,shop_id as shop_id_true,time_stamp,longitude,latitude,wifi_infos from user_shop_behavior 
	where time_stamp>='2017-08-18 00:00' and time_stamp<'2017-08-25 00:00';

create table train_l2_user_shop_behavior_wifi as 
select * from user_shop_behavior_wifi_screen a left semi join train_l2_user_shop_behavior b on a.row_id=b.row_id;
create table train_l2_wifi as 
select * from user_shop_behavior_wifi_screen a left semi join train_l2 b on a.row_id=b.row_id;

drop table if exists train_l2_tfidf;
create table train_l2_tfidf as select
row_id,shop_id,tfidf,sum(tfidf) over (partition by row_id) as row_tfidf
from
	(select row_id,shop_id,sum(exp(-(db_rank-1) *0.6)*weight) as tfidf
	from
		(select e.row_id,e.shop_id,e.db_rank,if(b.weight is null,0,b.weight) as weight
		from
			(select c.row_id,d.shop_id,c.wifi_id,c.db_rank
			from train_l2_wifi c left outer join shop_info d on c.mall_id=d.mall_id) e
		left outer join
			(select shop_id,wifi_id,weight/sum(weight) over (partition by shop_id) as weight
			from
				(select shop_id,wifi_id,sum(exp(-(db_rank-1) *0.6)) as weight 
				from train_l2_user_shop_behavior_wifi
				group by shop_id,wifi_id) a
			) b
		on e.shop_id=b.shop_id and e.wifi_id=b.wifi_id) f
	group by row_id,shop_id) g;

drop table if exists local_tfidf;
create table local_tfidf as select * from train_tfidf union select * from train_l2_tfidf;
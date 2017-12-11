--wifi to row
drop table if exists train_wifi_in_row;
create table train_wifi_in_row 
	(row_id bigint,mall_id string,
	w_1 string,w_2 string,w_3 string,w_4 string,w_5 string,w_6 string,w_7 string,w_8 string,w_9 string,w_10 string,
	db_1 bigint,db_2 bigint,db_3 bigint,db_4 bigint,db_5 bigint,db_6 bigint,db_7 bigint,db_8 bigint,db_9 bigint,db_10 bigint,
	w_c string);
--@resource_reference{"wifi.jar"}
jar -libjars wifi.jar -classpath ./wifi.jar wifi.WifiToRow train_wifi train_wifi_in_row;

--构造训练架子
drop table if exists train_struct;
create table train_struct as 
select t.row_id,t.shop_id,t.mall_id,
d.w_1,d.w_2,d.w_3,d.w_4,d.w_5,d.w_6,d.w_7,d.w_8,d.w_9,d.w_10,
d.db_1,d.db_2,d.db_3,d.db_4,d.db_5,d.db_6,d.db_7,d.db_8,d.db_9,d.db_10,
d.w_c
from
	(select a.row_id,a.mall_id,b.shop_id from train a left outer join shop_info b on a.mall_id=b.mall_id) t
left outer join train_wifi_in_row d on t.row_id=d.row_id;

--往架子上加强度特征
drop table if exists train_struct_2;
create table train_struct_2 as select
j.row_id,j.mall_id,j.shop_id,
j.w_1,j.w_2,j.w_3,j.w_4,j.w_5,j.w_6,j.w_7,j.w_8,j.w_9,j.w_10,j.w_c,
j.db_median_1,j.db_median_2,j.db_median_3,j.db_median_4,j.db_median_5,j.db_median_6,j.db_median_7,j.db_median_8,j.db_median_9,
j.db_min_1,j.db_min_2,j.db_min_3,j.db_min_4,j.db_min_5,j.db_min_6,j.db_min_7,j.db_min_8,j.db_min_9,
j.db_max_1,j.db_max_2,j.db_max_3,j.db_max_4,j.db_max_5,j.db_max_6,j.db_max_7,j.db_max_8,j.db_max_9,
j.db_10 - w.db_median as db_median_10,j.db_10 - w.db_max as db_max_10,j.db_10 - w.db_min as db_min_10
from
	(select i.*,i.db_9 - w.db_median as db_median_9,i.db_9 - w.db_max as db_max_9,i.db_9 - w.db_min as db_min_9
	from
		(select h.*,h.db_8 - w.db_median as db_median_8,h.db_7 - w.db_max as db_max_8,h.db_8 - w.db_min as db_min_8
		from
			(select g.*,g.db_7 - w.db_median as db_median_7,g.db_7 - w.db_max as db_max_7,g.db_7 - w.db_min as db_min_7
			from
				(select f.*,f.db_6 - w.db_median as db_median_6,f.db_6 - w.db_max as db_max_6,f.db_6 - w.db_min as db_min_6
				from
					(select e.*,e.db_5 - w.db_median as db_median_5,e.db_5 - w.db_max as db_max_5,e.db_5 - w.db_min as db_min_5
					from
						(select d.*,d.db_4 - w.db_median as db_median_4,d.db_4 - w.db_max as db_max_4,d.db_4 - w.db_min as db_min_4
						from
							(select c.*,c.db_3 - w.db_median as db_median_3,c.db_3 - w.db_max as db_max_3,c.db_3 - w.db_min as db_min_3
							from
								(select b.*,b.db_2 - w.db_median as db_median_2,b.db_2 - w.db_max as db_max_2,b.db_2 - w.db_min as db_min_2
								from
									(select a.*,a.db_1 - w.db_median as db_median_1,a.db_1 - w.db_max as db_max_1,a.db_1 - w.db_min as db_min_1
									from train_struct a
									left outer join train_wifi_range w on a.w_1=w.wifi_id and a.shop_id=w.shop_id) b
								left outer join train_wifi_range w on b.w_2=w.wifi_id and b.shop_id=w.shop_id) c
							left outer join train_wifi_range w on c.w_3=w.wifi_id and c.shop_id=w.shop_id) d
						left outer join train_wifi_range w on d.w_4=w.wifi_id and d.shop_id=w.shop_id) e
					left outer join train_wifi_range w on e.w_5=w.wifi_id and e.shop_id=w.shop_id) f
				left outer join train_wifi_range w on f.w_6=w.wifi_id and f.shop_id=w.shop_id) g
			left outer join train_wifi_range w on g.w_7=w.wifi_id and g.shop_id=w.shop_id) h
		left outer join train_wifi_range w on h.w_8=w.wifi_id and h.shop_id=w.shop_id) i
	left outer join train_wifi_range w on i.w_9=w.wifi_id and i.shop_id=w.shop_id) j
left outer join train_wifi_range w on j.w_10=w.wifi_id and j.shop_id=w.shop_id;
--往架子上加wifi-shop-count
drop table if exists train_struct_3;
create table train_struct_3 as select
k.*,t.wifi_shop_count
from 
	(select j.*,w.wsc_10
	from
		(select i.*,w.wsc_9
		from
			(select h.*,w.wsc_8
			from
				(select g.*,w.wsc_7
					from
					(select f.*,w.wsc_6
					from
						(select e.*,w.wsc_5
						from
							(select d.*,w.wsc_4
							from
								(select c.*,w.wsc_3
								from
									(select b.*,w.wsc_2
									from
										(select a.*,w.wsc_1
										from train_struct_2 a
										left outer join train_wifi_shop_count w on a.w_1=w.wifi_id and a.shop_id=w.shop_id) b
									left outer join train_wifi_shop_count w on b.w_2=w.wifi_id and b.shop_id=w.shop_id) c
								left outer join train_wifi_shop_count w on c.w_3=w.wifi_id and c.shop_id=w.shop_id) d
							left outer join train_wifi_shop_count w on d.w_4=w.wifi_id and d.shop_id=w.shop_id) e
						left outer join train_wifi_shop_count w on e.w_5=w.wifi_id and e.shop_id=w.shop_id) f
					left outer join train_wifi_shop_count w on f.w_6=w.wifi_id and f.shop_id=w.shop_id) g
				left outer join train_wifi_shop_count w on g.w_7=w.wifi_id and g.shop_id=w.shop_id) h
			left outer join train_wifi_shop_count w on h.w_8=w.wifi_id and h.shop_id=w.shop_id) i
		left outer join train_wifi_shop_count w on i.w_9=w.wifi_id and i.shop_id=w.shop_id) j
	left outer join train_wifi_shop_count w on j.w_10=w.wifi_id and j.shop_id=w.shop_id) k
left outer join train_wifi_shop_count_all_position t on k.w_1=t.wifi_id and k.shop_id=t.shop_id;
--往架子上加wifi-count
drop table if exists train_struct_4;
create table train_struct_4 as select
k.*,t.wifi_count
from
	(select j.*,w.wc_10
	from
		(select i.*,w.wc_9
		from
			(select h.*,w.wc_8
			from
				(select g.*,w.wc_7
					from
					(select f.*,w.wc_6
					from
						(select e.*,w.wc_5
						from
							(select d.*,w.wc_4
							from
								(select c.*,w.wc_3
								from
									(select b.*,w.wc_2
									from
										(select a.*,w.wc_1
										from train_struct_3 a
										left outer join train_wifi_count w on a.w_1=w.wifi_id) b
									left outer join train_wifi_count w on b.w_2=w.wifi_id) c
								left outer join train_wifi_count w on c.w_3=w.wifi_id) d
							left outer join train_wifi_count w on d.w_4=w.wifi_id) e
						left outer join train_wifi_count w on e.w_5=w.wifi_id) f
					left outer join train_wifi_count w on f.w_6=w.wifi_id) g
				left outer join train_wifi_count w on g.w_7=w.wifi_id) h
			left outer join train_wifi_count w on h.w_8=w.wifi_id) i
		left outer join train_wifi_count w on i.w_9=w.wifi_id) j
	left outer join train_wifi_count w on j.w_10=w.wifi_id) k
left outer join train_wifi_count_all_position t on k.w_1=t.wifi_id;
--并入杂特征
drop table if exists train_struct_5;
create table train_struct_5 as select
o.*,p.connect_shop_count
from
	(select m.*,n.connect_count
	from
		(select k.*,l.user_mall_visit
		from
			(select i.*,j.user_shop_visit
			from
				(select g.*,h.longitude as longitude_s,h.latitude as latitude_s
				from
					(select e.*,f.longitude_c,f.latitude_c
					from
						(select c.*,d.shop_visit,d.shop_freq 
						from 
							(select a.*,b.shop_id_true,b.user_id,regexp_count(b.wifi_infos,'null') as contain_null,b.longitude,b.latitude
							from train_struct_4 a left outer join train b on a.row_id=b.row_id) c
						left outer join train_shop_freq d on c.shop_id=d.shop_id) e
					left outer join train_shop_center f on e.shop_id=f.shop_id) g
				left outer join shop_info h on g.shop_id=h.shop_id) i
			left outer join train_user_shop j on i.user_id=j.user_id and i.shop_id=j.shop_id) k
		left outer join train_user_mall l on k.user_id=l.user_id and k.mall_id=l.mall_id) m
	left outer join train_connect_count n on m.w_c=n.wifi_id) o
left outer join train_connect_shop_count p on o.w_c=p.wifi_id and o.shop_id=p.shop_id;
--并入shop_block特征
drop table if exists train_struct_6;
create table train_struct_6 as select 
k.*,l.block_shop_count as bsc_10
from
	(select i.*,j.block_shop_count as bsc_5
	from
		(select g.*,h.block_shop_count as bsc_1
		from
			(select e.*,f.block_shop_total as bst_10
			from
				(select c.*,d.block_shop_total as bst_5
				from
					(select a.*,b.block_shop_total as bst_1
					from train_struct_5 a left outer join train_block1_shop_total b 
					on cast(round(a.latitude/0.00001)as bigint)=b.la_1 and cast(round(a.longitude/0.00001)as bigint)=b.lo_1) c
				left outer join train_block5_shop_total d
				on cast(round(c.latitude/0.00005)as bigint)=d.la_5 and cast(round(c.longitude/0.00005)as bigint)=d.lo_5) e
			left outer join train_block10_shop_total f
			on cast(round(e.latitude/0.0001)as bigint)=f.la_10 and cast(round(e.longitude/0.0001)as bigint)=f.lo_10) g
		left outer join train_block1_shop_count h
		on  cast(round(g.latitude/0.00001)as bigint)=h.la_1 and cast(round(g.longitude/0.00001)as bigint)=h.lo_1 and g.shop_id=h.shop_id) i
	left outer join train_block5_shop_count j
	on cast(round(i.latitude/0.00005)as bigint)=j.la_5 and cast(round(i.longitude/0.00005)as bigint)=j.lo_5 and i.shop_id=j.shop_id) k
left outer join train_block10_shop_count l
on cast(round(k.latitude/0.0001)as bigint)=l.la_10 and cast(round(k.longitude/0.0001)as bigint)=l.lo_10 and k.shop_id=l.shop_id;

--提特征
drop table if exists train_feature;
create table train_feature as select
t.*,
if(wifi_common=0,0,(abs(db_median_1)+abs(db_median_2)+abs(db_median_3)+abs(db_median_4)+abs(db_median_5)+abs(db_median_6)+abs(db_median_7)+abs(db_median_8)+abs(db_median_9)+abs(db_median_10))/wifi_common) as L1,
if(wifi_common=0,0,sqrt((pow(db_median_1,2)+pow(db_median_2,2)+pow(db_median_3,2)+pow(db_median_4,2)+pow(db_median_5,2)+pow(db_median_6,2)+pow(db_median_7,2)+pow(db_median_8,2)+pow(db_median_9,2)+pow(db_median_10,2))/wifi_common)) as L2,
if(wifi_common=0,0,(wsc_1+wsc_2+wsc_3+wsc_4+wsc_5+wsc_6+wsc_7+wsc_8+wsc_9+wsc_10)/wifi_common) as count_distance
from
	(select
	row_id,
	shop_id,
	if(shop_id=shop_id_true,1,0) as label,
	if(wifi_count is null,0,wifi_count) as wifi_count,
	if(wc_1 is null,0,wc_1) as wc_1,
	if(wc_2 is null,0,wc_2) as wc_2,
	if(wc_3 is null,0,wc_3) as wc_3,
	if(wc_4 is null,0,wc_4) as wc_4,
	if(wc_5 is null,0,wc_5) as wc_5,
	if(wc_6 is null,0,wc_6) as wc_6,
	if(wc_7 is null,0,wc_7) as wc_7,
	if(wc_8 is null,0,wc_8) as wc_8,
	if(wc_9 is null,0,wc_9) as wc_9,
	if(wc_10 is null,0,wc_10) as wc_10,
	if(wifi_shop_count>0,wifi_shop_count/wifi_count,0) as wifi_shop_count,
	if(wsc_1>0,wsc_1/wc_1,0) as wsc_1,
	if(wsc_2>0,wsc_2/wc_2,0) as wsc_2,
	if(wsc_3>0,wsc_3/wc_3,0) as wsc_3,
	if(wsc_4>0,wsc_4/wc_4,0) as wsc_4,
	if(wsc_5>0,wsc_5/wc_5,0) as wsc_5,
	if(wsc_6>0,wsc_6/wc_6,0) as wsc_6,
	if(wsc_7>0,wsc_7/wc_7,0) as wsc_7,
	if(wsc_8>0,wsc_8/wc_8,0) as wsc_8,
	if(wsc_9>0,wsc_9/wc_9,0) as wsc_9,
	if(wsc_10>0,wsc_10/wc_10,0) as wsc_10,
	contain_null,
	if(connect_count is null,0,connect_count) as connect_count,
	if(connect_shop_count>0,connect_shop_count/connect_count,0) as connect_shop_count,
	if(db_median_1 is null,0,db_median_1) as db_median_1,
	if(db_median_2 is null,0,db_median_2) as db_median_2,
	if(db_median_3 is null,0,db_median_3) as db_median_3,
	if(db_median_4 is null,0,db_median_4) as db_median_4,
	if(db_median_5 is null,0,db_median_5) as db_median_5,
	if(db_median_6 is null,0,db_median_6) as db_median_6,
	if(db_median_7 is null,0,db_median_7) as db_median_7,
	if(db_median_8 is null,0,db_median_8) as db_median_8,
	if(db_median_9 is null,0,db_median_9) as db_median_9,
	if(db_median_10 is null,0,db_median_10) as db_median_10,
	if(db_max_1 is null,0,db_max_1) as db_max_1,
	if(db_max_2 is null,0,db_max_2) as db_max_2,
	if(db_max_3 is null,0,db_max_3) as db_max_3,
	if(db_max_4 is null,0,db_max_4) as db_max_4,
	if(db_max_5 is null,0,db_max_5) as db_max_5,
	if(db_max_6 is null,0,db_max_6) as db_max_6,
	if(db_max_7 is null,0,db_max_7) as db_max_7,
	if(db_max_8 is null,0,db_max_8) as db_max_8,
	if(db_max_9 is null,0,db_max_9) as db_max_9,
	if(db_max_10 is null,0,db_max_10) as db_max_10,
	if(db_min_1 is null,0,db_min_1) as db_min_1,
	if(db_min_2 is null,0,db_min_2) as db_min_2,
	if(db_min_3 is null,0,db_min_3) as db_min_3,
	if(db_min_4 is null,0,db_min_4) as db_min_4,
	if(db_min_5 is null,0,db_min_5) as db_min_5,
	if(db_min_6 is null,0,db_min_6) as db_min_6,
	if(db_min_7 is null,0,db_min_7) as db_min_7,
	if(db_min_8 is null,0,db_min_8) as db_min_8,
	if(db_min_9 is null,0,db_min_9) as db_min_9,
	if(db_min_10 is null,0,db_min_10) as db_min_10,
	if(db_min_1 is null,0,1)+if(db_min_2 is null,0,1)+if(db_min_3 is null,0,1)+if(db_min_4 is null,0,1)+if(db_min_5 is null,0,1)+if(db_min_6 is null,0,1)+if(db_min_7 is null,0,1)+if(db_min_8 is null,0,1)+if(db_min_9 is null,0,1)+if(db_min_10 is null,0,1) as wifi_common,
	if(user_mall_visit is null,0,user_mall_visit) as user_mall_visit,
	if(user_shop_visit is null,0,user_shop_visit) as user_shop_visit,
	if(user_shop_visit>0,user_shop_visit/user_mall_visit,0) as user_shop_over_mall,
	if(shop_visit is null,0,shop_visit) as shop_visit,
	if(shop_freq is null,0,shop_freq) as shop_freq,
	if(latitude_c is null,0,sqrt(pow(latitude-latitude_c,2)+pow(longitude-longitude_c,2))) as distance_c,
	sqrt(pow(latitude-latitude_s,2)+pow(longitude-longitude_s,2)) as distance_s,
	if(bst_1 is null,0,bst_1) as bst_1,
	if(bst_5 is null,0,bst_5) as bst_5,
	if(bst_10 is null,0,bst_10) as bst_10,
	if(bsc_1>0,bsc_1/bst_1,0) as bsc_1,
	if(bsc_5>0,bsc_5/bst_5,0) as bsc_5,
	if(bsc_10>0,bsc_10/bst_10,0) as bsc_10
	from train_struct_6) t;

drop table if exists train_feature_with_tfidf;
create table train_feature_with_tfidf as select
c.*,
if(d.sum_prob is null,0,d.sum_prob) as sum_prob,
if(d.min_prob is null,0,d.min_prob) as min_prob,
if(d.max_prob is null,0,d.max_prob) as max_prob,
if(d.mean_prob is null,0,d.mean_prob) as mean_prob
from
	(select a.*,if(b.tfidf is null,0,tfidf) as tfidf,if (b.row_tfidf is null,0,row_tfidf) as row_tfidf
	from train_feature a left outer join train_tfidf b on a.row_id=b.row_id and a.shop_id=b.shop_id) c
left outer join local_gpsadc_one d on c.row_id=d.row_id and c.shop_id=d.shop_id;

drop table if exists train_feature_with_multi;
create table train_feature_with_multi as 
	select a.*,if(b.prob is null,0,b.prob) as prob_multi from train_feature_with_tfidf a
	left outer join train_multi_prob_normal b on a.row_id=b.row_id and a.shop_id=b.shop_id;

drop table if exists train_feature_with_knn;
create table train_feature_with_knn as select 
	a.*,
	if(b1.nearest1 is null,0,b1.nearest1) as knn1,
	if(b2.nearest2 is null,0,b2.nearest2) as knn2,
	if(b3.nearest3 is null,0,b3.nearest3) as knn3,
	if(b5.nearest5 is null,0,b5.nearest5) as knn5,
	if(b7.nearest7 is null,0,b7.nearest7) as knn7,
	if(b10.nearest10 is null,0,b10.nearest10) as knn10,
	if(b15.nearest15 is null,0,b15.nearest15) as knn15,
	if(b20.nearest20 is null,0,b20.nearest20) as knn20,
	if(b30.nearest30 is null,0,b30.nearest30) as knn30,
	if(b50.nearest50 is null,0,b50.nearest50) as knn50
from train_feature_with_multi a
left outer join lq_feature_offline_test_nearest1  b1 on a.row_id=b1.row_id and a.shop_id=b1.pre_shop_id
left outer join lq_feature_offline_test_nearest2  b2 on a.row_id=b2.row_id and a.shop_id=b2.pre_shop_id
left outer join lq_feature_offline_test_nearest3  b3 on a.row_id=b3.row_id and a.shop_id=b3.pre_shop_id
left outer join lq_feature_offline_test_nearest5  b5 on a.row_id=b5.row_id and a.shop_id=b5.pre_shop_id
left outer join lq_feature_offline_test_nearest7  b7 on a.row_id=b7.row_id and a.shop_id=b7.pre_shop_id
left outer join lq_feature_offline_test_nearest10  b10 on a.row_id=b10.row_id and a.shop_id=b10.pre_shop_id
left outer join lq_feature_offline_test_nearest15  b15 on a.row_id=b15.row_id and a.shop_id=b15.pre_shop_id
left outer join lq_feature_offline_test_nearest20  b20 on a.row_id=b20.row_id and a.shop_id=b20.pre_shop_id
left outer join lq_feature_offline_test_nearest30  b30 on a.row_id=b30.row_id and a.shop_id=b30.pre_shop_id
left outer join lq_feature_offline_test_nearest50  b50 on a.row_id=b50.row_id and a.shop_id=b50.pre_shop_id;
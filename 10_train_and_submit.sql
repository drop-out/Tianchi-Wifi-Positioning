--训练
drop offlinemodel if exists dropout_xgboost_knn;
PAI
-name xgboost
-Deta="0.1"
-Dobjective="binary:logistic"
-Dseed="0"
-Dnum_round="700"
-DlabelColName="label"
-DinputTableName="train_feature_with_knn"
-DenableSparse="false"
-Dmax_depth="8"
-DmodelName="dropout_xgboost_knn"
-DfeatureColNames="knn1,knn2,knn3,knn5,knn7,knn10,knn15,knn20,knn30,knn50,prob_multi,sum_prob,mean_prob,max_prob,min_prob,tfidf,row_tfidf,wifi_count,wifi_shop_count,wc_1,wc_2,wc_3,wc_4,wc_5,wc_6,wc_7,wc_8,wc_9,wc_10,wsc_1,wsc_2,wsc_3,wsc_4,wsc_5,wsc_6,wsc_7,wsc_8,wsc_9,wsc_10,contain_null,connect_count,connect_shop_count,db_median_1,db_median_2,db_median_3,db_median_4,db_median_5,db_median_6,db_median_7,db_median_8,db_median_9,db_median_10,db_min_1,db_min_2,db_min_3,db_min_4,db_min_5,db_min_6,db_min_7,db_min_8,db_min_9,db_min_10,db_max_1,db_max_2,db_max_3,db_max_4,db_max_5,db_max_6,db_max_7,db_max_8,db_max_9,db_max_10,wifi_common,user_mall_visit,user_shop_visit,user_shop_over_mall,shop_visit,shop_freq,distance_c,distance_s,bst_1,bst_5,bst_10,bsc_1,bsc_5,bsc_10,l1,l2,count_distance";

--预测
drop table if exists dropout_xgboost_prediction_detail_knn;
PAI
-name prediction
-DmodelName="dropout_xgboost_knn"
-DinputTableName="online_test_feature_with_knn"
-DoutputTableName="dropout_xgboost_prediction_detail_knn"
-DappendColNames="row_id,shop_id"
-Dlifecycle="28"
-DenableSparse="false"
-DfeatureColNames="knn1,knn2,knn3,knn5,knn7,knn10,knn15,knn20,knn30,knn50,prob_multi,sum_prob,mean_prob,max_prob,min_prob,tfidf,row_tfidf,wifi_count,wifi_shop_count,wc_1,wc_2,wc_3,wc_4,wc_5,wc_6,wc_7,wc_8,wc_9,wc_10,wsc_1,wsc_2,wsc_3,wsc_4,wsc_5,wsc_6,wsc_7,wsc_8,wsc_9,wsc_10,contain_null,connect_count,connect_shop_count,db_median_1,db_median_2,db_median_3,db_median_4,db_median_5,db_median_6,db_median_7,db_median_8,db_median_9,db_median_10,db_min_1,db_min_2,db_min_3,db_min_4,db_min_5,db_min_6,db_min_7,db_min_8,db_min_9,db_min_10,db_max_1,db_max_2,db_max_3,db_max_4,db_max_5,db_max_6,db_max_7,db_max_8,db_max_9,db_max_10,wifi_common,user_mall_visit,user_shop_visit,user_shop_over_mall,shop_visit,shop_freq,distance_c,distance_s,bst_1,bst_5,bst_10,bsc_1,bsc_5,bsc_10,l1,l2,count_distance";

--概率表
drop table if exists dropout_prob_with_knn;
create table dropout_prob_with_knn as 
select row_id,shop_id,if(prediction_result=0,1-prediction_score,prediction_score) as prob 
		from dropout_xgboost_prediction_detail_knn;

--融合
drop table if exists dropout_online_blending;
create table dropout_online_blending as select 
e.*,f.prob as prob_kk
from
	(select c.*,d.prob as prob_lq
	from
		(select a.row_id,a.shop_id,a.prob as prob_dropout,b.prob as prob_multi from dropout_prob_with_knn a
		left outer join online_test_multi_prob_normal_and_null b on a.row_id=b.row_id and a.shop_id=b.shop_id) c
	left outer join lq_final_400_feature_result d on c.row_id=d.row_id and c.shop_id=d.shop_id) e
left outer join online_prob_feature_28_union_near_d2v f on e.row_id=f.row_id and e.shop_id=f.shop_id;

--提交
drop table if exists ant_tianchi_ccf_sl_predict;
create table ant_tianchi_ccf_sl_predict as 
select cast(row_id as string) as row_id,shop_id from
	(select row_id,shop_id,row_number() over (partition by row_id order by prob desc) as r
	from
		(select row_id,
			shop_id,
			(0.5*if(prob_lq is null,prob_dropout,prob_lq) +
			   0.4*if(prob_kk is null,prob_dropout,prob_kk) +
			   0.4*prob_dropout
			   ) as prob 
		from dropout_online_blending) a
	) b 
where r=1;



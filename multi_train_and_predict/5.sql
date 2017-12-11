
PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2361"
    -DclassNum=38
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2361
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2361;
drop table if exists online_test_prob_m_2361;
create table online_test_m_2361 as select * from evaluation_public_kv where mall_id='m_2361';
PAI -name prediction
    -DinputTableName=online_test_m_2361
    -DmodelName=dropout_multi_model_m_2361
    -DoutputTableName=online_test_prob_m_2361
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2361;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2369"
    -DclassNum=46
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2369
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2369;
drop table if exists online_test_prob_m_2369;
create table online_test_m_2369 as select * from evaluation_public_kv where mall_id='m_2369';
PAI -name prediction
    -DinputTableName=online_test_m_2369
    -DmodelName=dropout_multi_model_m_2369
    -DoutputTableName=online_test_prob_m_2369
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2369;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2395"
    -DclassNum=50
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2395
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2395;
drop table if exists online_test_prob_m_2395;
create table online_test_m_2395 as select * from evaluation_public_kv where mall_id='m_2395';
PAI -name prediction
    -DinputTableName=online_test_m_2395
    -DmodelName=dropout_multi_model_m_2395
    -DoutputTableName=online_test_prob_m_2395
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2395;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2404"
    -DclassNum=54
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2404
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2404;
drop table if exists online_test_prob_m_2404;
create table online_test_m_2404 as select * from evaluation_public_kv where mall_id='m_2404';
PAI -name prediction
    -DinputTableName=online_test_m_2404
    -DmodelName=dropout_multi_model_m_2404
    -DoutputTableName=online_test_prob_m_2404
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2404;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2413"
    -DclassNum=72
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2413
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2413;
drop table if exists online_test_prob_m_2413;
create table online_test_m_2413 as select * from evaluation_public_kv where mall_id='m_2413';
PAI -name prediction
    -DinputTableName=online_test_m_2413
    -DmodelName=dropout_multi_model_m_2413
    -DoutputTableName=online_test_prob_m_2413
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2413;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2414"
    -DclassNum=52
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2414
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2414;
drop table if exists online_test_prob_m_2414;
create table online_test_m_2414 as select * from evaluation_public_kv where mall_id='m_2414';
PAI -name prediction
    -DinputTableName=online_test_m_2414
    -DmodelName=dropout_multi_model_m_2414
    -DoutputTableName=online_test_prob_m_2414
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2414;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2415"
    -DclassNum=106
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2415
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2415;
drop table if exists online_test_prob_m_2415;
create table online_test_m_2415 as select * from evaluation_public_kv where mall_id='m_2415';
PAI -name prediction
    -DinputTableName=online_test_m_2415
    -DmodelName=dropout_multi_model_m_2415
    -DoutputTableName=online_test_prob_m_2415
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2415;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2419"
    -DclassNum=71
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2419
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2419;
drop table if exists online_test_prob_m_2419;
create table online_test_m_2419 as select * from evaluation_public_kv where mall_id='m_2419';
PAI -name prediction
    -DinputTableName=online_test_m_2419
    -DmodelName=dropout_multi_model_m_2419
    -DoutputTableName=online_test_prob_m_2419
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2419;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2431"
    -DclassNum=63
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2431
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2431;
drop table if exists online_test_prob_m_2431;
create table online_test_m_2431 as select * from evaluation_public_kv where mall_id='m_2431';
PAI -name prediction
    -DinputTableName=online_test_m_2431
    -DmodelName=dropout_multi_model_m_2431
    -DoutputTableName=online_test_prob_m_2431
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2431;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2450"
    -DclassNum=33
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2450
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2450;
drop table if exists online_test_prob_m_2450;
create table online_test_m_2450 as select * from evaluation_public_kv where mall_id='m_2450';
PAI -name prediction
    -DinputTableName=online_test_m_2450
    -DmodelName=dropout_multi_model_m_2450
    -DoutputTableName=online_test_prob_m_2450
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2450;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2467"
    -DclassNum=103
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2467
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2467;
drop table if exists online_test_prob_m_2467;
create table online_test_m_2467 as select * from evaluation_public_kv where mall_id='m_2467';
PAI -name prediction
    -DinputTableName=online_test_m_2467
    -DmodelName=dropout_multi_model_m_2467
    -DoutputTableName=online_test_prob_m_2467
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2467;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2476"
    -DclassNum=50
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2476
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2476;
drop table if exists online_test_prob_m_2476;
create table online_test_m_2476 as select * from evaluation_public_kv where mall_id='m_2476';
PAI -name prediction
    -DinputTableName=online_test_m_2476
    -DmodelName=dropout_multi_model_m_2476
    -DoutputTableName=online_test_prob_m_2476
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2476;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2514"
    -DclassNum=30
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2514
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2514;
drop table if exists online_test_prob_m_2514;
create table online_test_m_2514 as select * from evaluation_public_kv where mall_id='m_2514';
PAI -name prediction
    -DinputTableName=online_test_m_2514
    -DmodelName=dropout_multi_model_m_2514
    -DoutputTableName=online_test_prob_m_2514
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2514;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2539"
    -DclassNum=25
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2539
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2539;
drop table if exists online_test_prob_m_2539;
create table online_test_m_2539 as select * from evaluation_public_kv where mall_id='m_2539';
PAI -name prediction
    -DinputTableName=online_test_m_2539
    -DmodelName=dropout_multi_model_m_2539
    -DoutputTableName=online_test_prob_m_2539
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2539;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2571"
    -DclassNum=58
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2571
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2571;
drop table if exists online_test_prob_m_2571;
create table online_test_m_2571 as select * from evaluation_public_kv where mall_id='m_2571';
PAI -name prediction
    -DinputTableName=online_test_m_2571
    -DmodelName=dropout_multi_model_m_2571
    -DoutputTableName=online_test_prob_m_2571
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2571;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2578"
    -DclassNum=131
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2578
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2578;
drop table if exists online_test_prob_m_2578;
create table online_test_m_2578 as select * from evaluation_public_kv where mall_id='m_2578';
PAI -name prediction
    -DinputTableName=online_test_m_2578
    -DmodelName=dropout_multi_model_m_2578
    -DoutputTableName=online_test_prob_m_2578
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2578;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2715"
    -DclassNum=89
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2715
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2715;
drop table if exists online_test_prob_m_2715;
create table online_test_m_2715 as select * from evaluation_public_kv where mall_id='m_2715';
PAI -name prediction
    -DinputTableName=online_test_m_2715
    -DmodelName=dropout_multi_model_m_2715
    -DoutputTableName=online_test_prob_m_2715
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2715;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2864"
    -DclassNum=65
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2864
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2864;
drop table if exists online_test_prob_m_2864;
create table online_test_m_2864 as select * from evaluation_public_kv where mall_id='m_2864';
PAI -name prediction
    -DinputTableName=online_test_m_2864
    -DmodelName=dropout_multi_model_m_2864
    -DoutputTableName=online_test_prob_m_2864
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2864;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2878"
    -DclassNum=97
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2878
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2878;
drop table if exists online_test_prob_m_2878;
create table online_test_m_2878 as select * from evaluation_public_kv where mall_id='m_2878';
PAI -name prediction
    -DinputTableName=online_test_m_2878
    -DmodelName=dropout_multi_model_m_2878
    -DoutputTableName=online_test_prob_m_2878
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2878;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2892"
    -DclassNum=63
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2892
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2892;
drop table if exists online_test_prob_m_2892;
create table online_test_m_2892 as select * from evaluation_public_kv where mall_id='m_2892';
PAI -name prediction
    -DinputTableName=online_test_m_2892
    -DmodelName=dropout_multi_model_m_2892
    -DoutputTableName=online_test_prob_m_2892
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2892;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2907"
    -DclassNum=86
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2907
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2907;
drop table if exists online_test_prob_m_2907;
create table online_test_m_2907 as select * from evaluation_public_kv where mall_id='m_2907';
PAI -name prediction
    -DinputTableName=online_test_m_2907
    -DmodelName=dropout_multi_model_m_2907
    -DoutputTableName=online_test_prob_m_2907
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2907;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3001"
    -DclassNum=57
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3001
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3001;
drop table if exists online_test_prob_m_3001;
create table online_test_m_3001 as select * from evaluation_public_kv where mall_id='m_3001';
PAI -name prediction
    -DinputTableName=online_test_m_3001
    -DmodelName=dropout_multi_model_m_3001
    -DoutputTableName=online_test_prob_m_3001
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3001;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3005"
    -DclassNum=95
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3005
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3005;
drop table if exists online_test_prob_m_3005;
create table online_test_m_3005 as select * from evaluation_public_kv where mall_id='m_3005';
PAI -name prediction
    -DinputTableName=online_test_m_3005
    -DmodelName=dropout_multi_model_m_3005
    -DoutputTableName=online_test_prob_m_3005
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3005;

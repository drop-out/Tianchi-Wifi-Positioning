

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5343"
    -DclassNum=44
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5343
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5343;
drop table if exists online_test_prob_m_5343;
create table online_test_m_5343 as select * from evaluation_public_kv where mall_id='m_5343';
PAI -name prediction
    -DinputTableName=online_test_m_5343
    -DmodelName=dropout_multi_model_m_5343
    -DoutputTableName=online_test_prob_m_5343
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5343;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5349"
    -DclassNum=48
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5349
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5349;
drop table if exists online_test_prob_m_5349;
create table online_test_m_5349 as select * from evaluation_public_kv where mall_id='m_5349';
PAI -name prediction
    -DinputTableName=online_test_m_5349
    -DmodelName=dropout_multi_model_m_5349
    -DoutputTableName=online_test_prob_m_5349
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5349;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5352"
    -DclassNum=82
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5352
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5352;
drop table if exists online_test_prob_m_5352;
create table online_test_m_5352 as select * from evaluation_public_kv where mall_id='m_5352';
PAI -name prediction
    -DinputTableName=online_test_m_5352
    -DmodelName=dropout_multi_model_m_5352
    -DoutputTableName=online_test_prob_m_5352
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5352;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5363"
    -DclassNum=53
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5363
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5363;
drop table if exists online_test_prob_m_5363;
create table online_test_m_5363 as select * from evaluation_public_kv where mall_id='m_5363';
PAI -name prediction
    -DinputTableName=online_test_m_5363
    -DmodelName=dropout_multi_model_m_5363
    -DoutputTableName=online_test_prob_m_5363
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5363;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5364"
    -DclassNum=68
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5364
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5364;
drop table if exists online_test_prob_m_5364;
create table online_test_m_5364 as select * from evaluation_public_kv where mall_id='m_5364';
PAI -name prediction
    -DinputTableName=online_test_m_5364
    -DmodelName=dropout_multi_model_m_5364
    -DoutputTableName=online_test_prob_m_5364
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5364;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5369"
    -DclassNum=50
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5369
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5369;
drop table if exists online_test_prob_m_5369;
create table online_test_m_5369 as select * from evaluation_public_kv where mall_id='m_5369';
PAI -name prediction
    -DinputTableName=online_test_m_5369
    -DmodelName=dropout_multi_model_m_5369
    -DoutputTableName=online_test_prob_m_5369
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5369;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5374"
    -DclassNum=55
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5374
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5374;
drop table if exists online_test_prob_m_5374;
create table online_test_m_5374 as select * from evaluation_public_kv where mall_id='m_5374';
PAI -name prediction
    -DinputTableName=online_test_m_5374
    -DmodelName=dropout_multi_model_m_5374
    -DoutputTableName=online_test_prob_m_5374
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5374;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5382"
    -DclassNum=48
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5382
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5382;
drop table if exists online_test_prob_m_5382;
create table online_test_m_5382 as select * from evaluation_public_kv where mall_id='m_5382';
PAI -name prediction
    -DinputTableName=online_test_m_5382
    -DmodelName=dropout_multi_model_m_5382
    -DoutputTableName=online_test_prob_m_5382
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5382;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5413"
    -DclassNum=46
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5413
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5413;
drop table if exists online_test_prob_m_5413;
create table online_test_m_5413 as select * from evaluation_public_kv where mall_id='m_5413';
PAI -name prediction
    -DinputTableName=online_test_m_5413
    -DmodelName=dropout_multi_model_m_5413
    -DoutputTableName=online_test_prob_m_5413
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5413;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5424"
    -DclassNum=59
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5424
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5424;
drop table if exists online_test_prob_m_5424;
create table online_test_m_5424 as select * from evaluation_public_kv where mall_id='m_5424';
PAI -name prediction
    -DinputTableName=online_test_m_5424
    -DmodelName=dropout_multi_model_m_5424
    -DoutputTableName=online_test_prob_m_5424
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5424;
PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5435"
    -DclassNum=53
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5435
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5435;
drop table if exists online_test_prob_m_5435;
create table online_test_m_5435 as select * from evaluation_public_kv where mall_id='m_5435';
PAI -name prediction
    -DinputTableName=online_test_m_5435
    -DmodelName=dropout_multi_model_m_5435
    -DoutputTableName=online_test_prob_m_5435
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5435;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5443"
    -DclassNum=60
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5443
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5443;
drop table if exists online_test_prob_m_5443;
create table online_test_m_5443 as select * from evaluation_public_kv where mall_id='m_5443';
PAI -name prediction
    -DinputTableName=online_test_m_5443
    -DmodelName=dropout_multi_model_m_5443
    -DoutputTableName=online_test_prob_m_5443
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5443;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5446"
    -DclassNum=54
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5446
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5446;
drop table if exists online_test_prob_m_5446;
create table online_test_m_5446 as select * from evaluation_public_kv where mall_id='m_5446';
PAI -name prediction
    -DinputTableName=online_test_m_5446
    -DmodelName=dropout_multi_model_m_5446
    -DoutputTableName=online_test_prob_m_5446
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5446;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5450"
    -DclassNum=61
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5450
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5450;
drop table if exists online_test_prob_m_5450;
create table online_test_m_5450 as select * from evaluation_public_kv where mall_id='m_5450';
PAI -name prediction
    -DinputTableName=online_test_m_5450
    -DmodelName=dropout_multi_model_m_5450
    -DoutputTableName=online_test_prob_m_5450
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5450;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5452"
    -DclassNum=50
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5452
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5452;
drop table if exists online_test_prob_m_5452;
create table online_test_m_5452 as select * from evaluation_public_kv where mall_id='m_5452';
PAI -name prediction
    -DinputTableName=online_test_m_5452
    -DmodelName=dropout_multi_model_m_5452
    -DoutputTableName=online_test_prob_m_5452
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5452;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5471"
    -DclassNum=45
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5471
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5471;
drop table if exists online_test_prob_m_5471;
create table online_test_m_5471 as select * from evaluation_public_kv where mall_id='m_5471';
PAI -name prediction
    -DinputTableName=online_test_m_5471
    -DmodelName=dropout_multi_model_m_5471
    -DoutputTableName=online_test_prob_m_5471
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5471;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5473"
    -DclassNum=73
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5473
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5473;
drop table if exists online_test_prob_m_5473;
create table online_test_m_5473 as select * from evaluation_public_kv where mall_id='m_5473';
PAI -name prediction
    -DinputTableName=online_test_m_5473
    -DmodelName=dropout_multi_model_m_5473
    -DoutputTableName=online_test_prob_m_5473
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5473;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5481"
    -DclassNum=37
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5481
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5481;
drop table if exists online_test_prob_m_5481;
create table online_test_m_5481 as select * from evaluation_public_kv where mall_id='m_5481';
PAI -name prediction
    -DinputTableName=online_test_m_5481
    -DmodelName=dropout_multi_model_m_5481
    -DoutputTableName=online_test_prob_m_5481
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5481;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5487"
    -DclassNum=38
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5487
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5487;
drop table if exists online_test_prob_m_5487;
create table online_test_m_5487 as select * from evaluation_public_kv where mall_id='m_5487';
PAI -name prediction
    -DinputTableName=online_test_m_5487
    -DmodelName=dropout_multi_model_m_5487
    -DoutputTableName=online_test_prob_m_5487
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5487;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5503"
    -DclassNum=32
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5503
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5503;
drop table if exists online_test_prob_m_5503;
create table online_test_m_5503 as select * from evaluation_public_kv where mall_id='m_5503';
PAI -name prediction
    -DinputTableName=online_test_m_5503
    -DmodelName=dropout_multi_model_m_5503
    -DoutputTableName=online_test_prob_m_5503
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5503;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5516"
    -DclassNum=50
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5516
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5516;
drop table if exists online_test_prob_m_5516;
create table online_test_m_5516 as select * from evaluation_public_kv where mall_id='m_5516';
PAI -name prediction
    -DinputTableName=online_test_m_5516
    -DmodelName=dropout_multi_model_m_5516
    -DoutputTableName=online_test_prob_m_5516
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5516;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5519"
    -DclassNum=52
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5519
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5519;
drop table if exists online_test_prob_m_5519;
create table online_test_m_5519 as select * from evaluation_public_kv where mall_id='m_5519';
PAI -name prediction
    -DinputTableName=online_test_m_5519
    -DmodelName=dropout_multi_model_m_5519
    -DoutputTableName=online_test_prob_m_5519
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5519;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5527"
    -DclassNum=48
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5527
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5527;
drop table if exists online_test_prob_m_5527;
create table online_test_m_5527 as select * from evaluation_public_kv where mall_id='m_5527';
PAI -name prediction
    -DinputTableName=online_test_m_5527
    -DmodelName=dropout_multi_model_m_5527
    -DoutputTableName=online_test_prob_m_5527
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5527;

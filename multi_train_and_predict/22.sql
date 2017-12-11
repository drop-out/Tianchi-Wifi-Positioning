
PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8275"
    -DclassNum=55
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8275
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8275;
drop table if exists online_test_prob_m_8275;
create table online_test_m_8275 as select * from evaluation_public_kv where mall_id='m_8275';
PAI -name prediction
    -DinputTableName=online_test_m_8275
    -DmodelName=dropout_multi_model_m_8275
    -DoutputTableName=online_test_prob_m_8275
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8275;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_828"
    -DclassNum=41
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_828
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_828;
drop table if exists online_test_prob_m_828;
create table online_test_m_828 as select * from evaluation_public_kv where mall_id='m_828';
PAI -name prediction
    -DinputTableName=online_test_m_828
    -DmodelName=dropout_multi_model_m_828
    -DoutputTableName=online_test_prob_m_828
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_828;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8282"
    -DclassNum=42
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8282
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8282;
drop table if exists online_test_prob_m_8282;
create table online_test_m_8282 as select * from evaluation_public_kv where mall_id='m_8282';
PAI -name prediction
    -DinputTableName=online_test_m_8282
    -DmodelName=dropout_multi_model_m_8282
    -DoutputTableName=online_test_prob_m_8282
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8282;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8285"
    -DclassNum=49
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8285
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8285;
drop table if exists online_test_prob_m_8285;
create table online_test_m_8285 as select * from evaluation_public_kv where mall_id='m_8285';
PAI -name prediction
    -DinputTableName=online_test_m_8285
    -DmodelName=dropout_multi_model_m_8285
    -DoutputTableName=online_test_prob_m_8285
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8285;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8327"
    -DclassNum=48
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8327
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8327;
drop table if exists online_test_prob_m_8327;
create table online_test_m_8327 as select * from evaluation_public_kv where mall_id='m_8327';
PAI -name prediction
    -DinputTableName=online_test_m_8327
    -DmodelName=dropout_multi_model_m_8327
    -DoutputTableName=online_test_prob_m_8327
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8327;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8344"
    -DclassNum=121
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8344
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8344;
drop table if exists online_test_prob_m_8344;
create table online_test_m_8344 as select * from evaluation_public_kv where mall_id='m_8344';
PAI -name prediction
    -DinputTableName=online_test_m_8344
    -DmodelName=dropout_multi_model_m_8344
    -DoutputTableName=online_test_prob_m_8344
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8344;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8414"
    -DclassNum=53
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8414
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8414;
drop table if exists online_test_prob_m_8414;
create table online_test_m_8414 as select * from evaluation_public_kv where mall_id='m_8414';
PAI -name prediction
    -DinputTableName=online_test_m_8414
    -DmodelName=dropout_multi_model_m_8414
    -DoutputTableName=online_test_prob_m_8414
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8414;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8429"
    -DclassNum=42
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8429
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8429;
drop table if exists online_test_prob_m_8429;
create table online_test_m_8429 as select * from evaluation_public_kv where mall_id='m_8429';
PAI -name prediction
    -DinputTableName=online_test_m_8429
    -DmodelName=dropout_multi_model_m_8429
    -DoutputTableName=online_test_prob_m_8429
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8429;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8430"
    -DclassNum=71
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8430
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8430;
drop table if exists online_test_prob_m_8430;
create table online_test_m_8430 as select * from evaluation_public_kv where mall_id='m_8430';
PAI -name prediction
    -DinputTableName=online_test_m_8430
    -DmodelName=dropout_multi_model_m_8430
    -DoutputTableName=online_test_prob_m_8430
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8430;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8452"
    -DclassNum=39
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8452
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8452;
drop table if exists online_test_prob_m_8452;
create table online_test_m_8452 as select * from evaluation_public_kv where mall_id='m_8452';
PAI -name prediction
    -DinputTableName=online_test_m_8452
    -DmodelName=dropout_multi_model_m_8452
    -DoutputTableName=online_test_prob_m_8452
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8452;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8494"
    -DclassNum=41
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8494
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8494;
drop table if exists online_test_prob_m_8494;
create table online_test_m_8494 as select * from evaluation_public_kv where mall_id='m_8494';
PAI -name prediction
    -DinputTableName=online_test_m_8494
    -DmodelName=dropout_multi_model_m_8494
    -DoutputTableName=online_test_prob_m_8494
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8494;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8550"
    -DclassNum=47
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8550
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8550;
drop table if exists online_test_prob_m_8550;
create table online_test_m_8550 as select * from evaluation_public_kv where mall_id='m_8550';
PAI -name prediction
    -DinputTableName=online_test_m_8550
    -DmodelName=dropout_multi_model_m_8550
    -DoutputTableName=online_test_prob_m_8550
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8550;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8563"
    -DclassNum=46
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8563
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8563;
drop table if exists online_test_prob_m_8563;
create table online_test_m_8563 as select * from evaluation_public_kv where mall_id='m_8563';
PAI -name prediction
    -DinputTableName=online_test_m_8563
    -DmodelName=dropout_multi_model_m_8563
    -DoutputTableName=online_test_prob_m_8563
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8563;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_867"
    -DclassNum=28
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_867
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_867;
drop table if exists online_test_prob_m_867;
create table online_test_m_867 as select * from evaluation_public_kv where mall_id='m_867';
PAI -name prediction
    -DinputTableName=online_test_m_867
    -DmodelName=dropout_multi_model_m_867
    -DoutputTableName=online_test_prob_m_867
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_867;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8671"
    -DclassNum=44
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8671
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8671;
drop table if exists online_test_prob_m_8671;
create table online_test_m_8671 as select * from evaluation_public_kv where mall_id='m_8671';
PAI -name prediction
    -DinputTableName=online_test_m_8671
    -DmodelName=dropout_multi_model_m_8671
    -DoutputTableName=online_test_prob_m_8671
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8671;

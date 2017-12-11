
PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7346"
    -DclassNum=53
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7346
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7346;
drop table if exists online_test_prob_m_7346;
create table online_test_m_7346 as select * from evaluation_public_kv where mall_id='m_7346';
PAI -name prediction
    -DinputTableName=online_test_m_7346
    -DmodelName=dropout_multi_model_m_7346
    -DoutputTableName=online_test_prob_m_7346
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7346;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7374"
    -DclassNum=87
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7374
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7374;
drop table if exists online_test_prob_m_7374;
create table online_test_m_7374 as select * from evaluation_public_kv where mall_id='m_7374';
PAI -name prediction
    -DinputTableName=online_test_m_7374
    -DmodelName=dropout_multi_model_m_7374
    -DoutputTableName=online_test_prob_m_7374
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7374;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7375"
    -DclassNum=61
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7375
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7375;
drop table if exists online_test_prob_m_7375;
create table online_test_m_7375 as select * from evaluation_public_kv where mall_id='m_7375';
PAI -name prediction
    -DinputTableName=online_test_m_7375
    -DmodelName=dropout_multi_model_m_7375
    -DoutputTableName=online_test_prob_m_7375
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7375;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7383"
    -DclassNum=33
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7383
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7383;
drop table if exists online_test_prob_m_7383;
create table online_test_m_7383 as select * from evaluation_public_kv where mall_id='m_7383';
PAI -name prediction
    -DinputTableName=online_test_m_7383
    -DmodelName=dropout_multi_model_m_7383
    -DoutputTableName=online_test_prob_m_7383
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7383;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7410"
    -DclassNum=41
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7410
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7410;
drop table if exists online_test_prob_m_7410;
create table online_test_m_7410 as select * from evaluation_public_kv where mall_id='m_7410';
PAI -name prediction
    -DinputTableName=online_test_m_7410
    -DmodelName=dropout_multi_model_m_7410
    -DoutputTableName=online_test_prob_m_7410
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7410;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7501"
    -DclassNum=85
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7501
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7501;
drop table if exists online_test_prob_m_7501;
create table online_test_m_7501 as select * from evaluation_public_kv where mall_id='m_7501';
PAI -name prediction
    -DinputTableName=online_test_m_7501
    -DmodelName=dropout_multi_model_m_7501
    -DoutputTableName=online_test_prob_m_7501
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7501;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7516"
    -DclassNum=89
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7516
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7516;
drop table if exists online_test_prob_m_7516;
create table online_test_m_7516 as select * from evaluation_public_kv where mall_id='m_7516';
PAI -name prediction
    -DinputTableName=online_test_m_7516
    -DmodelName=dropout_multi_model_m_7516
    -DoutputTableName=online_test_prob_m_7516
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7516;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7520"
    -DclassNum=55
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7520
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7520;
drop table if exists online_test_prob_m_7520;
create table online_test_m_7520 as select * from evaluation_public_kv where mall_id='m_7520';
PAI -name prediction
    -DinputTableName=online_test_m_7520
    -DmodelName=dropout_multi_model_m_7520
    -DoutputTableName=online_test_prob_m_7520
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7520;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7523"
    -DclassNum=82
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7523
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7523;
drop table if exists online_test_prob_m_7523;
create table online_test_m_7523 as select * from evaluation_public_kv where mall_id='m_7523';
PAI -name prediction
    -DinputTableName=online_test_m_7523
    -DmodelName=dropout_multi_model_m_7523
    -DoutputTableName=online_test_prob_m_7523
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7523;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7544"
    -DclassNum=40
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7544
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7544;
drop table if exists online_test_prob_m_7544;
create table online_test_m_7544 as select * from evaluation_public_kv where mall_id='m_7544';
PAI -name prediction
    -DinputTableName=online_test_m_7544
    -DmodelName=dropout_multi_model_m_7544
    -DoutputTableName=online_test_prob_m_7544
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7544;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_755"
    -DclassNum=40
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_755
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_755;
drop table if exists online_test_prob_m_755;
create table online_test_m_755 as select * from evaluation_public_kv where mall_id='m_755';
PAI -name prediction
    -DinputTableName=online_test_m_755
    -DmodelName=dropout_multi_model_m_755
    -DoutputTableName=online_test_prob_m_755
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_755;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_760"
    -DclassNum=47
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_760
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_760;
drop table if exists online_test_prob_m_760;
create table online_test_m_760 as select * from evaluation_public_kv where mall_id='m_760';
PAI -name prediction
    -DinputTableName=online_test_m_760
    -DmodelName=dropout_multi_model_m_760
    -DoutputTableName=online_test_prob_m_760
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_760;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7601"
    -DclassNum=90
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7601
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7601;
drop table if exists online_test_prob_m_7601;
create table online_test_m_7601 as select * from evaluation_public_kv where mall_id='m_7601';
PAI -name prediction
    -DinputTableName=online_test_m_7601
    -DmodelName=dropout_multi_model_m_7601
    -DoutputTableName=online_test_prob_m_7601
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7601;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7616"
    -DclassNum=52
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7616
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7616;
drop table if exists online_test_prob_m_7616;
create table online_test_m_7616 as select * from evaluation_public_kv where mall_id='m_7616';
PAI -name prediction
    -DinputTableName=online_test_m_7616
    -DmodelName=dropout_multi_model_m_7616
    -DoutputTableName=online_test_prob_m_7616
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7616;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7671"
    -DclassNum=37
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7671
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7671;
drop table if exists online_test_prob_m_7671;
create table online_test_m_7671 as select * from evaluation_public_kv where mall_id='m_7671';
PAI -name prediction
    -DinputTableName=online_test_m_7671
    -DmodelName=dropout_multi_model_m_7671
    -DoutputTableName=online_test_prob_m_7671
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7671;

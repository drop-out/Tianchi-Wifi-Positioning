
PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_6803"
    -DclassNum=92
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_6803
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_6803;
drop table if exists online_test_prob_m_6803;
create table online_test_m_6803 as select * from evaluation_public_kv where mall_id='m_6803';
PAI -name prediction
    -DinputTableName=online_test_m_6803
    -DmodelName=dropout_multi_model_m_6803
    -DoutputTableName=online_test_prob_m_6803
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_6803;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_689"
    -DclassNum=46
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_689
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_689;
drop table if exists online_test_prob_m_689;
create table online_test_m_689 as select * from evaluation_public_kv where mall_id='m_689';
PAI -name prediction
    -DinputTableName=online_test_m_689
    -DmodelName=dropout_multi_model_m_689
    -DoutputTableName=online_test_prob_m_689
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_689;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_690"
    -DclassNum=145
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_690
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_690;
drop table if exists online_test_prob_m_690;
create table online_test_m_690 as select * from evaluation_public_kv where mall_id='m_690';
PAI -name prediction
    -DinputTableName=online_test_m_690
    -DmodelName=dropout_multi_model_m_690
    -DoutputTableName=online_test_prob_m_690
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_690;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_6923"
    -DclassNum=27
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_6923
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_6923;
drop table if exists online_test_prob_m_6923;
create table online_test_m_6923 as select * from evaluation_public_kv where mall_id='m_6923';
PAI -name prediction
    -DinputTableName=online_test_m_6923
    -DmodelName=dropout_multi_model_m_6923
    -DoutputTableName=online_test_prob_m_6923
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_6923;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_699"
    -DclassNum=50
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_699
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_699;
drop table if exists online_test_prob_m_699;
create table online_test_m_699 as select * from evaluation_public_kv where mall_id='m_699';
PAI -name prediction
    -DinputTableName=online_test_m_699
    -DmodelName=dropout_multi_model_m_699
    -DoutputTableName=online_test_prob_m_699
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_699;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7039"
    -DclassNum=76
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7039
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7039;
drop table if exists online_test_prob_m_7039;
create table online_test_m_7039 as select * from evaluation_public_kv where mall_id='m_7039';
PAI -name prediction
    -DinputTableName=online_test_m_7039
    -DmodelName=dropout_multi_model_m_7039
    -DoutputTableName=online_test_prob_m_7039
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7039;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7168"
    -DclassNum=100
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7168
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7168;
drop table if exists online_test_prob_m_7168;
create table online_test_m_7168 as select * from evaluation_public_kv where mall_id='m_7168';
PAI -name prediction
    -DinputTableName=online_test_m_7168
    -DmodelName=dropout_multi_model_m_7168
    -DoutputTableName=online_test_prob_m_7168
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7168;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7199"
    -DclassNum=34
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7199
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7199;
drop table if exists online_test_prob_m_7199;
create table online_test_m_7199 as select * from evaluation_public_kv where mall_id='m_7199';
PAI -name prediction
    -DinputTableName=online_test_m_7199
    -DmodelName=dropout_multi_model_m_7199
    -DoutputTableName=online_test_prob_m_7199
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7199;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7225"
    -DclassNum=37
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7225
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7225;
drop table if exists online_test_prob_m_7225;
create table online_test_m_7225 as select * from evaluation_public_kv where mall_id='m_7225';
PAI -name prediction
    -DinputTableName=online_test_m_7225
    -DmodelName=dropout_multi_model_m_7225
    -DoutputTableName=online_test_prob_m_7225
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7225;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7255"
    -DclassNum=53
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7255
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7255;
drop table if exists online_test_prob_m_7255;
create table online_test_m_7255 as select * from evaluation_public_kv where mall_id='m_7255';
PAI -name prediction
    -DinputTableName=online_test_m_7255
    -DmodelName=dropout_multi_model_m_7255
    -DoutputTableName=online_test_prob_m_7255
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7255;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7256"
    -DclassNum=39
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7256
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7256;
drop table if exists online_test_prob_m_7256;
create table online_test_m_7256 as select * from evaluation_public_kv where mall_id='m_7256';
PAI -name prediction
    -DinputTableName=online_test_m_7256
    -DmodelName=dropout_multi_model_m_7256
    -DoutputTableName=online_test_prob_m_7256
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7256;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7283"
    -DclassNum=52
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7283
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7283;
drop table if exists online_test_prob_m_7283;
create table online_test_m_7283 as select * from evaluation_public_kv where mall_id='m_7283';
PAI -name prediction
    -DinputTableName=online_test_m_7283
    -DmodelName=dropout_multi_model_m_7283
    -DoutputTableName=online_test_prob_m_7283
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7283;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7304"
    -DclassNum=38
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7304
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7304;
drop table if exists online_test_prob_m_7304;
create table online_test_m_7304 as select * from evaluation_public_kv where mall_id='m_7304';
PAI -name prediction
    -DinputTableName=online_test_m_7304
    -DmodelName=dropout_multi_model_m_7304
    -DoutputTableName=online_test_prob_m_7304
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7304;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7323"
    -DclassNum=28
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7323
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7323;
drop table if exists online_test_prob_m_7323;
create table online_test_m_7323 as select * from evaluation_public_kv where mall_id='m_7323';
PAI -name prediction
    -DinputTableName=online_test_m_7323
    -DmodelName=dropout_multi_model_m_7323
    -DoutputTableName=online_test_prob_m_7323
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7323;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7329"
    -DclassNum=52
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7329
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7329;
drop table if exists online_test_prob_m_7329;
create table online_test_m_7329 as select * from evaluation_public_kv where mall_id='m_7329';
PAI -name prediction
    -DinputTableName=online_test_m_7329
    -DmodelName=dropout_multi_model_m_7329
    -DoutputTableName=online_test_prob_m_7329
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7329;


PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_9068"
    -DclassNum=80
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_9068
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_9068;
drop table if exists online_test_prob_m_9068;
create table online_test_m_9068 as select * from evaluation_public_kv where mall_id='m_9068';
PAI -name prediction
    -DinputTableName=online_test_m_9068
    -DmodelName=dropout_multi_model_m_9068
    -DoutputTableName=online_test_prob_m_9068
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_9068;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_909"
    -DclassNum=97
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_909
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_909;
drop table if exists online_test_prob_m_909;
create table online_test_m_909 as select * from evaluation_public_kv where mall_id='m_909';
PAI -name prediction
    -DinputTableName=online_test_m_909
    -DmodelName=dropout_multi_model_m_909
    -DoutputTableName=online_test_prob_m_909
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_909;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_911"
    -DclassNum=88
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_911
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_911;
drop table if exists online_test_prob_m_911;
create table online_test_m_911 as select * from evaluation_public_kv where mall_id='m_911';
PAI -name prediction
    -DinputTableName=online_test_m_911
    -DmodelName=dropout_multi_model_m_911
    -DoutputTableName=online_test_prob_m_911
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_911;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_912"
    -DclassNum=43
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_912
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_912;
drop table if exists online_test_prob_m_912;
create table online_test_m_912 as select * from evaluation_public_kv where mall_id='m_912';
PAI -name prediction
    -DinputTableName=online_test_m_912
    -DmodelName=dropout_multi_model_m_912
    -DoutputTableName=online_test_prob_m_912
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_912;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_919"
    -DclassNum=54
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_919
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_919;
drop table if exists online_test_prob_m_919;
create table online_test_m_919 as select * from evaluation_public_kv where mall_id='m_919';
PAI -name prediction
    -DinputTableName=online_test_m_919
    -DmodelName=dropout_multi_model_m_919
    -DoutputTableName=online_test_prob_m_919
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_919;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_927"
    -DclassNum=41
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_927
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_927;
drop table if exists online_test_prob_m_927;
create table online_test_m_927 as select * from evaluation_public_kv where mall_id='m_927';
PAI -name prediction
    -DinputTableName=online_test_m_927
    -DmodelName=dropout_multi_model_m_927
    -DoutputTableName=online_test_prob_m_927
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_927;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_954"
    -DclassNum=60
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_954
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_954;
drop table if exists online_test_prob_m_954;
create table online_test_m_954 as select * from evaluation_public_kv where mall_id='m_954';
PAI -name prediction
    -DinputTableName=online_test_m_954
    -DmodelName=dropout_multi_model_m_954
    -DoutputTableName=online_test_prob_m_954
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_954;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_957"
    -DclassNum=46
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_957
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_957;
drop table if exists online_test_prob_m_957;
create table online_test_m_957 as select * from evaluation_public_kv where mall_id='m_957';
PAI -name prediction
    -DinputTableName=online_test_m_957
    -DmodelName=dropout_multi_model_m_957
    -DoutputTableName=online_test_prob_m_957
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_957;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_966"
    -DclassNum=26
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_966
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_966;
drop table if exists online_test_prob_m_966;
create table online_test_m_966 as select * from evaluation_public_kv where mall_id='m_966';
PAI -name prediction
    -DinputTableName=online_test_m_966
    -DmodelName=dropout_multi_model_m_966
    -DoutputTableName=online_test_prob_m_966
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_966;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_968"
    -DclassNum=100
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_968
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_968;
drop table if exists online_test_prob_m_968;
create table online_test_m_968 as select * from evaluation_public_kv where mall_id='m_968';
PAI -name prediction
    -DinputTableName=online_test_m_968
    -DmodelName=dropout_multi_model_m_968
    -DoutputTableName=online_test_prob_m_968
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_968;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_976"
    -DclassNum=71
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_976
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_976;
drop table if exists online_test_prob_m_976;
create table online_test_m_976 as select * from evaluation_public_kv where mall_id='m_976';
PAI -name prediction
    -DinputTableName=online_test_m_976
    -DmodelName=dropout_multi_model_m_976
    -DoutputTableName=online_test_prob_m_976
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_976;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_979"
    -DclassNum=76
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_979
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_979;
drop table if exists online_test_prob_m_979;
create table online_test_m_979 as select * from evaluation_public_kv where mall_id='m_979';
PAI -name prediction
    -DinputTableName=online_test_m_979
    -DmodelName=dropout_multi_model_m_979
    -DoutputTableName=online_test_prob_m_979
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_979;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_988"
    -DclassNum=30
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_988
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_988;
drop table if exists online_test_prob_m_988;
create table online_test_m_988 as select * from evaluation_public_kv where mall_id='m_988';
PAI -name prediction
    -DinputTableName=online_test_m_988
    -DmodelName=dropout_multi_model_m_988
    -DoutputTableName=online_test_prob_m_988
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_988;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_989"
    -DclassNum=34
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_989
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_989;
drop table if exists online_test_prob_m_989;
create table online_test_m_989 as select * from evaluation_public_kv where mall_id='m_989';
PAI -name prediction
    -DinputTableName=online_test_m_989
    -DmodelName=dropout_multi_model_m_989
    -DoutputTableName=online_test_prob_m_989
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_989;
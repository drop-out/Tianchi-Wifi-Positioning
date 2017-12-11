
PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_768"
    -DclassNum=79
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_768
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_768;
drop table if exists online_test_prob_m_768;
create table online_test_m_768 as select * from evaluation_public_kv where mall_id='m_768';
PAI -name prediction
    -DinputTableName=online_test_m_768
    -DmodelName=dropout_multi_model_m_768
    -DoutputTableName=online_test_prob_m_768
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_768;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7697"
    -DclassNum=32
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7697
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7697;
drop table if exists online_test_prob_m_7697;
create table online_test_m_7697 as select * from evaluation_public_kv where mall_id='m_7697';
PAI -name prediction
    -DinputTableName=online_test_m_7697
    -DmodelName=dropout_multi_model_m_7697
    -DoutputTableName=online_test_prob_m_7697
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7697;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7701"
    -DclassNum=59
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7701
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7701;
drop table if exists online_test_prob_m_7701;
create table online_test_m_7701 as select * from evaluation_public_kv where mall_id='m_7701';
PAI -name prediction
    -DinputTableName=online_test_m_7701
    -DmodelName=dropout_multi_model_m_7701
    -DoutputTableName=online_test_prob_m_7701
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7701;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7724"
    -DclassNum=57
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7724
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7724;
drop table if exists online_test_prob_m_7724;
create table online_test_m_7724 as select * from evaluation_public_kv where mall_id='m_7724';
PAI -name prediction
    -DinputTableName=online_test_m_7724
    -DmodelName=dropout_multi_model_m_7724
    -DoutputTableName=online_test_prob_m_7724
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7724;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7746"
    -DclassNum=49
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7746
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7746;
drop table if exists online_test_prob_m_7746;
create table online_test_m_7746 as select * from evaluation_public_kv where mall_id='m_7746';
PAI -name prediction
    -DinputTableName=online_test_m_7746
    -DmodelName=dropout_multi_model_m_7746
    -DoutputTableName=online_test_prob_m_7746
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7746;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7778"
    -DclassNum=63
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7778
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7778;
drop table if exists online_test_prob_m_7778;
create table online_test_m_7778 as select * from evaluation_public_kv where mall_id='m_7778';
PAI -name prediction
    -DinputTableName=online_test_m_7778
    -DmodelName=dropout_multi_model_m_7778
    -DoutputTableName=online_test_prob_m_7778
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7778;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7781"
    -DclassNum=65
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7781
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7781;
drop table if exists online_test_prob_m_7781;
create table online_test_m_7781 as select * from evaluation_public_kv where mall_id='m_7781';
PAI -name prediction
    -DinputTableName=online_test_m_7781
    -DmodelName=dropout_multi_model_m_7781
    -DoutputTableName=online_test_prob_m_7781
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7781;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7791"
    -DclassNum=60
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7791
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7791;
drop table if exists online_test_prob_m_7791;
create table online_test_m_7791 as select * from evaluation_public_kv where mall_id='m_7791';
PAI -name prediction
    -DinputTableName=online_test_m_7791
    -DmodelName=dropout_multi_model_m_7791
    -DoutputTableName=online_test_prob_m_7791
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7791;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7792"
    -DclassNum=44
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7792
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7792;
drop table if exists online_test_prob_m_7792;
create table online_test_m_7792 as select * from evaluation_public_kv where mall_id='m_7792';
PAI -name prediction
    -DinputTableName=online_test_m_7792
    -DmodelName=dropout_multi_model_m_7792
    -DoutputTableName=online_test_prob_m_7792
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7792;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7796"
    -DclassNum=71
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7796
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7796;
drop table if exists online_test_prob_m_7796;
create table online_test_m_7796 as select * from evaluation_public_kv where mall_id='m_7796';
PAI -name prediction
    -DinputTableName=online_test_m_7796
    -DmodelName=dropout_multi_model_m_7796
    -DoutputTableName=online_test_prob_m_7796
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7796;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7800"
    -DclassNum=91
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7800
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7800;
drop table if exists online_test_prob_m_7800;
create table online_test_m_7800 as select * from evaluation_public_kv where mall_id='m_7800';
PAI -name prediction
    -DinputTableName=online_test_m_7800
    -DmodelName=dropout_multi_model_m_7800
    -DoutputTableName=online_test_prob_m_7800
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7800;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7811"
    -DclassNum=68
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7811
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7811;
drop table if exists online_test_prob_m_7811;
create table online_test_m_7811 as select * from evaluation_public_kv where mall_id='m_7811';
PAI -name prediction
    -DinputTableName=online_test_m_7811
    -DmodelName=dropout_multi_model_m_7811
    -DoutputTableName=online_test_prob_m_7811
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7811;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7821"
    -DclassNum=35
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7821
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7821;
drop table if exists online_test_prob_m_7821;
create table online_test_m_7821 as select * from evaluation_public_kv where mall_id='m_7821';
PAI -name prediction
    -DinputTableName=online_test_m_7821
    -DmodelName=dropout_multi_model_m_7821
    -DoutputTableName=online_test_prob_m_7821
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7821;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7832"
    -DclassNum=35
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7832
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7832;
drop table if exists online_test_prob_m_7832;
create table online_test_m_7832 as select * from evaluation_public_kv where mall_id='m_7832';
PAI -name prediction
    -DinputTableName=online_test_m_7832
    -DmodelName=dropout_multi_model_m_7832
    -DoutputTableName=online_test_prob_m_7832
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7832;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7833"
    -DclassNum=41
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7833
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7833;
drop table if exists online_test_prob_m_7833;
create table online_test_m_7833 as select * from evaluation_public_kv where mall_id='m_7833';
PAI -name prediction
    -DinputTableName=online_test_m_7833
    -DmodelName=dropout_multi_model_m_7833
    -DoutputTableName=online_test_prob_m_7833
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7833;

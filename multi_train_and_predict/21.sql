
PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_800"
    -DclassNum=54
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_800
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_800;
drop table if exists online_test_prob_m_800;
create table online_test_m_800 as select * from evaluation_public_kv where mall_id='m_800';
PAI -name prediction
    -DinputTableName=online_test_m_800
    -DmodelName=dropout_multi_model_m_800
    -DoutputTableName=online_test_prob_m_800
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_800;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8015"
    -DclassNum=42
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8015
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8015;
drop table if exists online_test_prob_m_8015;
create table online_test_m_8015 as select * from evaluation_public_kv where mall_id='m_8015';
PAI -name prediction
    -DinputTableName=online_test_m_8015
    -DmodelName=dropout_multi_model_m_8015
    -DoutputTableName=online_test_prob_m_8015
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8015;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_802"
    -DclassNum=70
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_802
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_802;
drop table if exists online_test_prob_m_802;
create table online_test_m_802 as select * from evaluation_public_kv where mall_id='m_802';
PAI -name prediction
    -DinputTableName=online_test_m_802
    -DmodelName=dropout_multi_model_m_802
    -DoutputTableName=online_test_prob_m_802
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_802;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8041"
    -DclassNum=54
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8041
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8041;
drop table if exists online_test_prob_m_8041;
create table online_test_m_8041 as select * from evaluation_public_kv where mall_id='m_8041';
PAI -name prediction
    -DinputTableName=online_test_m_8041
    -DmodelName=dropout_multi_model_m_8041
    -DoutputTableName=online_test_prob_m_8041
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8041;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8052"
    -DclassNum=51
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8052
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8052;
drop table if exists online_test_prob_m_8052;
create table online_test_m_8052 as select * from evaluation_public_kv where mall_id='m_8052';
PAI -name prediction
    -DinputTableName=online_test_m_8052
    -DmodelName=dropout_multi_model_m_8052
    -DoutputTableName=online_test_prob_m_8052
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8052;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8063"
    -DclassNum=52
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8063
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8063;
drop table if exists online_test_prob_m_8063;
create table online_test_m_8063 as select * from evaluation_public_kv where mall_id='m_8063';
PAI -name prediction
    -DinputTableName=online_test_m_8063
    -DmodelName=dropout_multi_model_m_8063
    -DoutputTableName=online_test_prob_m_8063
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8063;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8093"
    -DclassNum=83
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8093
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8093;
drop table if exists online_test_prob_m_8093;
create table online_test_m_8093 as select * from evaluation_public_kv where mall_id='m_8093';
PAI -name prediction
    -DinputTableName=online_test_m_8093
    -DmodelName=dropout_multi_model_m_8093
    -DoutputTableName=online_test_prob_m_8093
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8093;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8157"
    -DclassNum=50
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8157
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8157;
drop table if exists online_test_prob_m_8157;
create table online_test_m_8157 as select * from evaluation_public_kv where mall_id='m_8157';
PAI -name prediction
    -DinputTableName=online_test_m_8157
    -DmodelName=dropout_multi_model_m_8157
    -DoutputTableName=online_test_prob_m_8157
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8157;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8188"
    -DclassNum=37
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8188
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8188;
drop table if exists online_test_prob_m_8188;
create table online_test_m_8188 as select * from evaluation_public_kv where mall_id='m_8188';
PAI -name prediction
    -DinputTableName=online_test_m_8188
    -DmodelName=dropout_multi_model_m_8188
    -DoutputTableName=online_test_prob_m_8188
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8188;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8200"
    -DclassNum=91
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8200
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8200;
drop table if exists online_test_prob_m_8200;
create table online_test_m_8200 as select * from evaluation_public_kv where mall_id='m_8200';
PAI -name prediction
    -DinputTableName=online_test_m_8200
    -DmodelName=dropout_multi_model_m_8200
    -DoutputTableName=online_test_prob_m_8200
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8200;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8215"
    -DclassNum=48
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8215
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8215;
drop table if exists online_test_prob_m_8215;
create table online_test_m_8215 as select * from evaluation_public_kv where mall_id='m_8215';
PAI -name prediction
    -DinputTableName=online_test_m_8215
    -DmodelName=dropout_multi_model_m_8215
    -DoutputTableName=online_test_prob_m_8215
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8215;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_822"
    -DclassNum=90
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_822
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_822;
drop table if exists online_test_prob_m_822;
create table online_test_m_822 as select * from evaluation_public_kv where mall_id='m_822';
PAI -name prediction
    -DinputTableName=online_test_m_822
    -DmodelName=dropout_multi_model_m_822
    -DoutputTableName=online_test_prob_m_822
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_822;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8222"
    -DclassNum=61
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8222
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8222;
drop table if exists online_test_prob_m_8222;
create table online_test_m_8222 as select * from evaluation_public_kv where mall_id='m_8222';
PAI -name prediction
    -DinputTableName=online_test_m_8222
    -DmodelName=dropout_multi_model_m_8222
    -DoutputTableName=online_test_prob_m_8222
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8222;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8251"
    -DclassNum=64
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8251
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8251;
drop table if exists online_test_prob_m_8251;
create table online_test_m_8251 as select * from evaluation_public_kv where mall_id='m_8251';
PAI -name prediction
    -DinputTableName=online_test_m_8251
    -DmodelName=dropout_multi_model_m_8251
    -DoutputTableName=online_test_prob_m_8251
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8251;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_826"
    -DclassNum=51
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_826
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_826;
drop table if exists online_test_prob_m_826;
create table online_test_m_826 as select * from evaluation_public_kv where mall_id='m_826';
PAI -name prediction
    -DinputTableName=online_test_m_826
    -DmodelName=dropout_multi_model_m_826
    -DoutputTableName=online_test_prob_m_826
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_826;

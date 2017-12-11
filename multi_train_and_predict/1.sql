
PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1006"
    -DclassNum=51
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1006
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1006;
drop table if exists online_test_prob_m_1006;
create table online_test_m_1006 as select * from evaluation_public_kv where mall_id='m_1006';
PAI -name prediction
    -DinputTableName=online_test_m_1006
    -DmodelName=dropout_multi_model_m_1006
    -DoutputTableName=online_test_prob_m_1006
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1006;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1010"
    -DclassNum=45
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1010
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1010;
drop table if exists online_test_prob_m_1010;
create table online_test_m_1010 as select * from evaluation_public_kv where mall_id='m_1010';
PAI -name prediction
    -DinputTableName=online_test_m_1010
    -DmodelName=dropout_multi_model_m_1010
    -DoutputTableName=online_test_prob_m_1010
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1010;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1021"
    -DclassNum=78
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1021
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1021;
drop table if exists online_test_prob_m_1021;
create table online_test_m_1021 as select * from evaluation_public_kv where mall_id='m_1021';
PAI -name prediction
    -DinputTableName=online_test_m_1021
    -DmodelName=dropout_multi_model_m_1021
    -DoutputTableName=online_test_prob_m_1021
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1021;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1043"
    -DclassNum=61
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1043
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1043;
drop table if exists online_test_prob_m_1043;
create table online_test_m_1043 as select * from evaluation_public_kv where mall_id='m_1043';
PAI -name prediction
    -DinputTableName=online_test_m_1043
    -DmodelName=dropout_multi_model_m_1043
    -DoutputTableName=online_test_prob_m_1043
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1043;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1052"
    -DclassNum=37
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1052
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1052;
drop table if exists online_test_prob_m_1052;
create table online_test_m_1052 as select * from evaluation_public_kv where mall_id='m_1052';
PAI -name prediction
    -DinputTableName=online_test_m_1052
    -DmodelName=dropout_multi_model_m_1052
    -DoutputTableName=online_test_prob_m_1052
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1052;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1057"
    -DclassNum=36
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1057
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1057;
drop table if exists online_test_prob_m_1057;
create table online_test_m_1057 as select * from evaluation_public_kv where mall_id='m_1057';
PAI -name prediction
    -DinputTableName=online_test_m_1057
    -DmodelName=dropout_multi_model_m_1057
    -DoutputTableName=online_test_prob_m_1057
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1057;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1071"
    -DclassNum=19
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1071
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1071;
drop table if exists online_test_prob_m_1071;
create table online_test_m_1071 as select * from evaluation_public_kv where mall_id='m_1071';
PAI -name prediction
    -DinputTableName=online_test_m_1071
    -DmodelName=dropout_multi_model_m_1071
    -DoutputTableName=online_test_prob_m_1071
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1071;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1080"
    -DclassNum=47
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1080
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1080;
drop table if exists online_test_prob_m_1080;
create table online_test_m_1080 as select * from evaluation_public_kv where mall_id='m_1080';
PAI -name prediction
    -DinputTableName=online_test_m_1080
    -DmodelName=dropout_multi_model_m_1080
    -DoutputTableName=online_test_prob_m_1080
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1080;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1081"
    -DclassNum=46
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1081
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1081;
drop table if exists online_test_prob_m_1081;
create table online_test_m_1081 as select * from evaluation_public_kv where mall_id='m_1081';
PAI -name prediction
    -DinputTableName=online_test_m_1081
    -DmodelName=dropout_multi_model_m_1081
    -DoutputTableName=online_test_prob_m_1081
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1081;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1082"
    -DclassNum=4
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1082
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1082;
drop table if exists online_test_prob_m_1082;
create table online_test_m_1082 as select * from evaluation_public_kv where mall_id='m_1082';
PAI -name prediction
    -DinputTableName=online_test_m_1082
    -DmodelName=dropout_multi_model_m_1082
    -DoutputTableName=online_test_prob_m_1082
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1082;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1085"
    -DclassNum=57
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1085
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1085;
drop table if exists online_test_prob_m_1085;
create table online_test_m_1085 as select * from evaluation_public_kv where mall_id='m_1085';
PAI -name prediction
    -DinputTableName=online_test_m_1085
    -DmodelName=dropout_multi_model_m_1085
    -DoutputTableName=online_test_prob_m_1085
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1085;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1089"
    -DclassNum=139
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1089
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1089;
drop table if exists online_test_prob_m_1089;
create table online_test_m_1089 as select * from evaluation_public_kv where mall_id='m_1089';
PAI -name prediction
    -DinputTableName=online_test_m_1089
    -DmodelName=dropout_multi_model_m_1089
    -DoutputTableName=online_test_prob_m_1089
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1089;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1106"
    -DclassNum=60
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1106
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1106;
drop table if exists online_test_prob_m_1106;
create table online_test_m_1106 as select * from evaluation_public_kv where mall_id='m_1106';
PAI -name prediction
    -DinputTableName=online_test_m_1106
    -DmodelName=dropout_multi_model_m_1106
    -DoutputTableName=online_test_prob_m_1106
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1106;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1111"
    -DclassNum=58
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1111
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1111;
drop table if exists online_test_prob_m_1111;
create table online_test_m_1111 as select * from evaluation_public_kv where mall_id='m_1111';
PAI -name prediction
    -DinputTableName=online_test_m_1111
    -DmodelName=dropout_multi_model_m_1111
    -DoutputTableName=online_test_prob_m_1111
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1111;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1115"
    -DclassNum=54
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1115
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1115;
drop table if exists online_test_prob_m_1115;
create table online_test_m_1115 as select * from evaluation_public_kv where mall_id='m_1115';
PAI -name prediction
    -DinputTableName=online_test_m_1115
    -DmodelName=dropout_multi_model_m_1115
    -DoutputTableName=online_test_prob_m_1115
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1115;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1128"
    -DclassNum=52
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1128
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1128;
drop table if exists online_test_prob_m_1128;
create table online_test_m_1128 as select * from evaluation_public_kv where mall_id='m_1128';
PAI -name prediction
    -DinputTableName=online_test_m_1128
    -DmodelName=dropout_multi_model_m_1128
    -DoutputTableName=online_test_prob_m_1128
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1128;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1129"
    -DclassNum=50
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1129
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1129;
drop table if exists online_test_prob_m_1129;
create table online_test_m_1129 as select * from evaluation_public_kv where mall_id='m_1129';
PAI -name prediction
    -DinputTableName=online_test_m_1129
    -DmodelName=dropout_multi_model_m_1129
    -DoutputTableName=online_test_prob_m_1129
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1129;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1161"
    -DclassNum=43
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1161
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1161;
drop table if exists online_test_prob_m_1161;
create table online_test_m_1161 as select * from evaluation_public_kv where mall_id='m_1161';
PAI -name prediction
    -DinputTableName=online_test_m_1161
    -DmodelName=dropout_multi_model_m_1161
    -DoutputTableName=online_test_prob_m_1161
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1161;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1164"
    -DclassNum=52
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1164
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1164;
drop table if exists online_test_prob_m_1164;
create table online_test_m_1164 as select * from evaluation_public_kv where mall_id='m_1164';
PAI -name prediction
    -DinputTableName=online_test_m_1164
    -DmodelName=dropout_multi_model_m_1164
    -DoutputTableName=online_test_prob_m_1164
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1164;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1175"
    -DclassNum=136
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1175
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1175;
drop table if exists online_test_prob_m_1175;
create table online_test_m_1175 as select * from evaluation_public_kv where mall_id='m_1175';
PAI -name prediction
    -DinputTableName=online_test_m_1175
    -DmodelName=dropout_multi_model_m_1175
    -DoutputTableName=online_test_prob_m_1175
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1175;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1176"
    -DclassNum=50
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1176
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1176;
drop table if exists online_test_prob_m_1176;
create table online_test_m_1176 as select * from evaluation_public_kv where mall_id='m_1176';
PAI -name prediction
    -DinputTableName=online_test_m_1176
    -DmodelName=dropout_multi_model_m_1176
    -DoutputTableName=online_test_prob_m_1176
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1176;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1263"
    -DclassNum=107
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1263
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1263;
drop table if exists online_test_prob_m_1263;
create table online_test_m_1263 as select * from evaluation_public_kv where mall_id='m_1263';
PAI -name prediction
    -DinputTableName=online_test_m_1263
    -DmodelName=dropout_multi_model_m_1263
    -DoutputTableName=online_test_prob_m_1263
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1263;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1291"
    -DclassNum=49
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1291
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1291;
drop table if exists online_test_prob_m_1291;
create table online_test_m_1291 as select * from evaluation_public_kv where mall_id='m_1291';
PAI -name prediction
    -DinputTableName=online_test_m_1291
    -DmodelName=dropout_multi_model_m_1291
    -DoutputTableName=online_test_prob_m_1291
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1291;

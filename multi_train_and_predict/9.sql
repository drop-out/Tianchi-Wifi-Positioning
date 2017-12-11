
PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4049"
    -DclassNum=64
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4049
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4049;
drop table if exists online_test_prob_m_4049;
create table online_test_m_4049 as select * from evaluation_public_kv where mall_id='m_4049';
PAI -name prediction
    -DinputTableName=online_test_m_4049
    -DmodelName=dropout_multi_model_m_4049
    -DoutputTableName=online_test_prob_m_4049
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4049;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4058"
    -DclassNum=51
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4058
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4058;
drop table if exists online_test_prob_m_4058;
create table online_test_m_4058 as select * from evaluation_public_kv where mall_id='m_4058';
PAI -name prediction
    -DinputTableName=online_test_m_4058
    -DmodelName=dropout_multi_model_m_4058
    -DoutputTableName=online_test_prob_m_4058
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4058;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4064"
    -DclassNum=52
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4064
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4064;
drop table if exists online_test_prob_m_4064;
create table online_test_m_4064 as select * from evaluation_public_kv where mall_id='m_4064';
PAI -name prediction
    -DinputTableName=online_test_m_4064
    -DmodelName=dropout_multi_model_m_4064
    -DoutputTableName=online_test_prob_m_4064
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4064;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4066"
    -DclassNum=39
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4066
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4066;
drop table if exists online_test_prob_m_4066;
create table online_test_m_4066 as select * from evaluation_public_kv where mall_id='m_4066';
PAI -name prediction
    -DinputTableName=online_test_m_4066
    -DmodelName=dropout_multi_model_m_4066
    -DoutputTableName=online_test_prob_m_4066
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4066;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4068"
    -DclassNum=38
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4068
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4068;
drop table if exists online_test_prob_m_4068;
create table online_test_m_4068 as select * from evaluation_public_kv where mall_id='m_4068';
PAI -name prediction
    -DinputTableName=online_test_m_4068
    -DmodelName=dropout_multi_model_m_4068
    -DoutputTableName=online_test_prob_m_4068
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4068;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4079"
    -DclassNum=99
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4079
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4079;
drop table if exists online_test_prob_m_4079;
create table online_test_m_4079 as select * from evaluation_public_kv where mall_id='m_4079';
PAI -name prediction
    -DinputTableName=online_test_m_4079
    -DmodelName=dropout_multi_model_m_4079
    -DoutputTableName=online_test_prob_m_4079
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4079;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4094"
    -DclassNum=82
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4094
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4094;
drop table if exists online_test_prob_m_4094;
create table online_test_m_4094 as select * from evaluation_public_kv where mall_id='m_4094';
PAI -name prediction
    -DinputTableName=online_test_m_4094
    -DmodelName=dropout_multi_model_m_4094
    -DoutputTableName=online_test_prob_m_4094
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4094;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4098"
    -DclassNum=41
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4098
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4098;
drop table if exists online_test_prob_m_4098;
create table online_test_m_4098 as select * from evaluation_public_kv where mall_id='m_4098';
PAI -name prediction
    -DinputTableName=online_test_m_4098
    -DmodelName=dropout_multi_model_m_4098
    -DoutputTableName=online_test_prob_m_4098
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4098;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4099"
    -DclassNum=42
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4099
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4099;
drop table if exists online_test_prob_m_4099;
create table online_test_m_4099 as select * from evaluation_public_kv where mall_id='m_4099';
PAI -name prediction
    -DinputTableName=online_test_m_4099
    -DmodelName=dropout_multi_model_m_4099
    -DoutputTableName=online_test_prob_m_4099
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4099;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4112"
    -DclassNum=51
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4112
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4112;
drop table if exists online_test_prob_m_4112;
create table online_test_m_4112 as select * from evaluation_public_kv where mall_id='m_4112';
PAI -name prediction
    -DinputTableName=online_test_m_4112
    -DmodelName=dropout_multi_model_m_4112
    -DoutputTableName=online_test_prob_m_4112
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4112;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4121"
    -DclassNum=82
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4121
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4121;
drop table if exists online_test_prob_m_4121;
create table online_test_m_4121 as select * from evaluation_public_kv where mall_id='m_4121';
PAI -name prediction
    -DinputTableName=online_test_m_4121
    -DmodelName=dropout_multi_model_m_4121
    -DoutputTableName=online_test_prob_m_4121
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4121;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4132"
    -DclassNum=67
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4132
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4132;
drop table if exists online_test_prob_m_4132;
create table online_test_m_4132 as select * from evaluation_public_kv where mall_id='m_4132';
PAI -name prediction
    -DinputTableName=online_test_m_4132
    -DmodelName=dropout_multi_model_m_4132
    -DoutputTableName=online_test_prob_m_4132
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4132;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4139"
    -DclassNum=59
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4139
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4139;
drop table if exists online_test_prob_m_4139;
create table online_test_m_4139 as select * from evaluation_public_kv where mall_id='m_4139';
PAI -name prediction
    -DinputTableName=online_test_m_4139
    -DmodelName=dropout_multi_model_m_4139
    -DoutputTableName=online_test_prob_m_4139
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4139;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4157"
    -DclassNum=41
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4157
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4157;
drop table if exists online_test_prob_m_4157;
create table online_test_m_4157 as select * from evaluation_public_kv where mall_id='m_4157';
PAI -name prediction
    -DinputTableName=online_test_m_4157
    -DmodelName=dropout_multi_model_m_4157
    -DoutputTableName=online_test_prob_m_4157
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4157;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4160"
    -DclassNum=58
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4160
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4160;
drop table if exists online_test_prob_m_4160;
create table online_test_m_4160 as select * from evaluation_public_kv where mall_id='m_4160';
PAI -name prediction
    -DinputTableName=online_test_m_4160
    -DmodelName=dropout_multi_model_m_4160
    -DoutputTableName=online_test_prob_m_4160
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4160;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4162"
    -DclassNum=48
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4162
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4162;
drop table if exists online_test_prob_m_4162;
create table online_test_m_4162 as select * from evaluation_public_kv where mall_id='m_4162';
PAI -name prediction
    -DinputTableName=online_test_m_4162
    -DmodelName=dropout_multi_model_m_4162
    -DoutputTableName=online_test_prob_m_4162
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4162;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4168"
    -DclassNum=82
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4168
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4168;
drop table if exists online_test_prob_m_4168;
create table online_test_m_4168 as select * from evaluation_public_kv where mall_id='m_4168';
PAI -name prediction
    -DinputTableName=online_test_m_4168
    -DmodelName=dropout_multi_model_m_4168
    -DoutputTableName=online_test_prob_m_4168
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4168;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4173"
    -DclassNum=46
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4173
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4173;
drop table if exists online_test_prob_m_4173;
create table online_test_m_4173 as select * from evaluation_public_kv where mall_id='m_4173';
PAI -name prediction
    -DinputTableName=online_test_m_4173
    -DmodelName=dropout_multi_model_m_4173
    -DoutputTableName=online_test_prob_m_4173
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4173;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4178"
    -DclassNum=66
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4178
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4178;
drop table if exists online_test_prob_m_4178;
create table online_test_m_4178 as select * from evaluation_public_kv where mall_id='m_4178';
PAI -name prediction
    -DinputTableName=online_test_m_4178
    -DmodelName=dropout_multi_model_m_4178
    -DoutputTableName=online_test_prob_m_4178
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4178;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4181"
    -DclassNum=42
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4181
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4181;
drop table if exists online_test_prob_m_4181;
create table online_test_m_4181 as select * from evaluation_public_kv where mall_id='m_4181';
PAI -name prediction
    -DinputTableName=online_test_m_4181
    -DmodelName=dropout_multi_model_m_4181
    -DoutputTableName=online_test_prob_m_4181
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4181;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4187"
    -DclassNum=94
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4187
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4187;
drop table if exists online_test_prob_m_4187;
create table online_test_m_4187 as select * from evaluation_public_kv where mall_id='m_4187';
PAI -name prediction
    -DinputTableName=online_test_m_4187
    -DmodelName=dropout_multi_model_m_4187
    -DoutputTableName=online_test_prob_m_4187
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4187;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4199"
    -DclassNum=67
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4199
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4199;
drop table if exists online_test_prob_m_4199;
create table online_test_m_4199 as select * from evaluation_public_kv where mall_id='m_4199';
PAI -name prediction
    -DinputTableName=online_test_m_4199
    -DmodelName=dropout_multi_model_m_4199
    -DoutputTableName=online_test_prob_m_4199
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4199;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4205"
    -DclassNum=54
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4205
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4205;
drop table if exists online_test_prob_m_4205;
create table online_test_m_4205 as select * from evaluation_public_kv where mall_id='m_4205';
PAI -name prediction
    -DinputTableName=online_test_m_4205
    -DmodelName=dropout_multi_model_m_4205
    -DoutputTableName=online_test_prob_m_4205
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4205;

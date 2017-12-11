
PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3010"
    -DclassNum=45
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3010
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3010;
drop table if exists online_test_prob_m_3010;
create table online_test_m_3010 as select * from evaluation_public_kv where mall_id='m_3010';
PAI -name prediction
    -DinputTableName=online_test_m_3010
    -DmodelName=dropout_multi_model_m_3010
    -DoutputTableName=online_test_prob_m_3010
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3010;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3019"
    -DclassNum=68
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3019
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3019;
drop table if exists online_test_prob_m_3019;
create table online_test_m_3019 as select * from evaluation_public_kv where mall_id='m_3019';
PAI -name prediction
    -DinputTableName=online_test_m_3019
    -DmodelName=dropout_multi_model_m_3019
    -DoutputTableName=online_test_prob_m_3019
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3019;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3027"
    -DclassNum=51
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3027
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3027;
drop table if exists online_test_prob_m_3027;
create table online_test_m_3027 as select * from evaluation_public_kv where mall_id='m_3027';
PAI -name prediction
    -DinputTableName=online_test_m_3027
    -DmodelName=dropout_multi_model_m_3027
    -DoutputTableName=online_test_prob_m_3027
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3027;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3031"
    -DclassNum=65
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3031
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3031;
drop table if exists online_test_prob_m_3031;
create table online_test_m_3031 as select * from evaluation_public_kv where mall_id='m_3031';
PAI -name prediction
    -DinputTableName=online_test_m_3031
    -DmodelName=dropout_multi_model_m_3031
    -DoutputTableName=online_test_prob_m_3031
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3031;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3034"
    -DclassNum=65
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3034
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3034;
drop table if exists online_test_prob_m_3034;
create table online_test_m_3034 as select * from evaluation_public_kv where mall_id='m_3034';
PAI -name prediction
    -DinputTableName=online_test_m_3034
    -DmodelName=dropout_multi_model_m_3034
    -DoutputTableName=online_test_prob_m_3034
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3034;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3054"
    -DclassNum=83
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3054
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3054;
drop table if exists online_test_prob_m_3054;
create table online_test_m_3054 as select * from evaluation_public_kv where mall_id='m_3054';
PAI -name prediction
    -DinputTableName=online_test_m_3054
    -DmodelName=dropout_multi_model_m_3054
    -DoutputTableName=online_test_prob_m_3054
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3054;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3092"
    -DclassNum=49
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3092
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3092;
drop table if exists online_test_prob_m_3092;
create table online_test_m_3092 as select * from evaluation_public_kv where mall_id='m_3092';
PAI -name prediction
    -DinputTableName=online_test_m_3092
    -DmodelName=dropout_multi_model_m_3092
    -DoutputTableName=online_test_prob_m_3092
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3092;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3112"
    -DclassNum=79
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3112
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3112;
drop table if exists online_test_prob_m_3112;
create table online_test_m_3112 as select * from evaluation_public_kv where mall_id='m_3112';
PAI -name prediction
    -DinputTableName=online_test_m_3112
    -DmodelName=dropout_multi_model_m_3112
    -DoutputTableName=online_test_prob_m_3112
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3112;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3117"
    -DclassNum=57
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3117
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3117;
drop table if exists online_test_prob_m_3117;
create table online_test_m_3117 as select * from evaluation_public_kv where mall_id='m_3117';
PAI -name prediction
    -DinputTableName=online_test_m_3117
    -DmodelName=dropout_multi_model_m_3117
    -DoutputTableName=online_test_prob_m_3117
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3117;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3120"
    -DclassNum=60
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3120
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3120;
drop table if exists online_test_prob_m_3120;
create table online_test_m_3120 as select * from evaluation_public_kv where mall_id='m_3120';
PAI -name prediction
    -DinputTableName=online_test_m_3120
    -DmodelName=dropout_multi_model_m_3120
    -DoutputTableName=online_test_prob_m_3120
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3120;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3143"
    -DclassNum=53
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3143
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3143;
drop table if exists online_test_prob_m_3143;
create table online_test_m_3143 as select * from evaluation_public_kv where mall_id='m_3143';
PAI -name prediction
    -DinputTableName=online_test_m_3143
    -DmodelName=dropout_multi_model_m_3143
    -DoutputTableName=online_test_prob_m_3143
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3143;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3197"
    -DclassNum=46
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3197
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3197;
drop table if exists online_test_prob_m_3197;
create table online_test_m_3197 as select * from evaluation_public_kv where mall_id='m_3197';
PAI -name prediction
    -DinputTableName=online_test_m_3197
    -DmodelName=dropout_multi_model_m_3197
    -DoutputTableName=online_test_prob_m_3197
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3197;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3219"
    -DclassNum=64
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3219
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3219;
drop table if exists online_test_prob_m_3219;
create table online_test_m_3219 as select * from evaluation_public_kv where mall_id='m_3219';
PAI -name prediction
    -DinputTableName=online_test_m_3219
    -DmodelName=dropout_multi_model_m_3219
    -DoutputTableName=online_test_prob_m_3219
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3219;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3231"
    -DclassNum=61
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3231
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3231;
drop table if exists online_test_prob_m_3231;
create table online_test_m_3231 as select * from evaluation_public_kv where mall_id='m_3231';
PAI -name prediction
    -DinputTableName=online_test_m_3231
    -DmodelName=dropout_multi_model_m_3231
    -DoutputTableName=online_test_prob_m_3231
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3231;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3232"
    -DclassNum=61
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3232
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3232;
drop table if exists online_test_prob_m_3232;
create table online_test_m_3232 as select * from evaluation_public_kv where mall_id='m_3232';
PAI -name prediction
    -DinputTableName=online_test_m_3232
    -DmodelName=dropout_multi_model_m_3232
    -DoutputTableName=online_test_prob_m_3232
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3232;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3268"
    -DclassNum=27
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3268
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3268;
drop table if exists online_test_prob_m_3268;
create table online_test_m_3268 as select * from evaluation_public_kv where mall_id='m_3268';
PAI -name prediction
    -DinputTableName=online_test_m_3268
    -DmodelName=dropout_multi_model_m_3268
    -DoutputTableName=online_test_prob_m_3268
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3268;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3281"
    -DclassNum=39
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3281
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3281;
drop table if exists online_test_prob_m_3281;
create table online_test_m_3281 as select * from evaluation_public_kv where mall_id='m_3281';
PAI -name prediction
    -DinputTableName=online_test_m_3281
    -DmodelName=dropout_multi_model_m_3281
    -DoutputTableName=online_test_prob_m_3281
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3281;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3313"
    -DclassNum=86
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3313
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3313;
drop table if exists online_test_prob_m_3313;
create table online_test_m_3313 as select * from evaluation_public_kv where mall_id='m_3313';
PAI -name prediction
    -DinputTableName=online_test_m_3313
    -DmodelName=dropout_multi_model_m_3313
    -DoutputTableName=online_test_prob_m_3313
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3313;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3319"
    -DclassNum=32
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3319
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3319;
drop table if exists online_test_prob_m_3319;
create table online_test_m_3319 as select * from evaluation_public_kv where mall_id='m_3319';
PAI -name prediction
    -DinputTableName=online_test_m_3319
    -DmodelName=dropout_multi_model_m_3319
    -DoutputTableName=online_test_prob_m_3319
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3319;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3329"
    -DclassNum=42
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3329
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3329;
drop table if exists online_test_prob_m_3329;
create table online_test_m_3329 as select * from evaluation_public_kv where mall_id='m_3329';
PAI -name prediction
    -DinputTableName=online_test_m_3329
    -DmodelName=dropout_multi_model_m_3329
    -DoutputTableName=online_test_prob_m_3329
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3329;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3414"
    -DclassNum=55
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3414
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3414;
drop table if exists online_test_prob_m_3414;
create table online_test_m_3414 as select * from evaluation_public_kv where mall_id='m_3414';
PAI -name prediction
    -DinputTableName=online_test_m_3414
    -DmodelName=dropout_multi_model_m_3414
    -DoutputTableName=online_test_prob_m_3414
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3414;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3425"
    -DclassNum=80
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3425
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3425;
drop table if exists online_test_prob_m_3425;
create table online_test_m_3425 as select * from evaluation_public_kv where mall_id='m_3425';
PAI -name prediction
    -DinputTableName=online_test_m_3425
    -DmodelName=dropout_multi_model_m_3425
    -DoutputTableName=online_test_prob_m_3425
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3425;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3434"
    -DclassNum=65
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3434
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3434;
drop table if exists online_test_prob_m_3434;
create table online_test_m_3434 as select * from evaluation_public_kv where mall_id='m_3434';
PAI -name prediction
    -DinputTableName=online_test_m_3434
    -DmodelName=dropout_multi_model_m_3434
    -DoutputTableName=online_test_prob_m_3434
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3434;

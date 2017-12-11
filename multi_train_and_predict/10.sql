
PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4206"
    -DclassNum=52
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4206
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4206;
drop table if exists online_test_prob_m_4206;
create table online_test_m_4206 as select * from evaluation_public_kv where mall_id='m_4206';
PAI -name prediction
    -DinputTableName=online_test_m_4206
    -DmodelName=dropout_multi_model_m_4206
    -DoutputTableName=online_test_prob_m_4206
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4206;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4211"
    -DclassNum=54
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4211
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4211;
drop table if exists online_test_prob_m_4211;
create table online_test_m_4211 as select * from evaluation_public_kv where mall_id='m_4211';
PAI -name prediction
    -DinputTableName=online_test_m_4211
    -DmodelName=dropout_multi_model_m_4211
    -DoutputTableName=online_test_prob_m_4211
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4211;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4216"
    -DclassNum=56
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4216
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4216;
drop table if exists online_test_prob_m_4216;
create table online_test_m_4216 as select * from evaluation_public_kv where mall_id='m_4216';
PAI -name prediction
    -DinputTableName=online_test_m_4216
    -DmodelName=dropout_multi_model_m_4216
    -DoutputTableName=online_test_prob_m_4216
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4216;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4221"
    -DclassNum=90
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4221
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4221;
drop table if exists online_test_prob_m_4221;
create table online_test_m_4221 as select * from evaluation_public_kv where mall_id='m_4221';
PAI -name prediction
    -DinputTableName=online_test_m_4221
    -DmodelName=dropout_multi_model_m_4221
    -DoutputTableName=online_test_prob_m_4221
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4221;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4224"
    -DclassNum=49
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4224
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4224;
drop table if exists online_test_prob_m_4224;
create table online_test_m_4224 as select * from evaluation_public_kv where mall_id='m_4224';
PAI -name prediction
    -DinputTableName=online_test_m_4224
    -DmodelName=dropout_multi_model_m_4224
    -DoutputTableName=online_test_prob_m_4224
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4224;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4227"
    -DclassNum=64
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4227
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4227;
drop table if exists online_test_prob_m_4227;
create table online_test_m_4227 as select * from evaluation_public_kv where mall_id='m_4227';
PAI -name prediction
    -DinputTableName=online_test_m_4227
    -DmodelName=dropout_multi_model_m_4227
    -DoutputTableName=online_test_prob_m_4227
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4227;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4244"
    -DclassNum=64
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4244
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4244;
drop table if exists online_test_prob_m_4244;
create table online_test_m_4244 as select * from evaluation_public_kv where mall_id='m_4244';
PAI -name prediction
    -DinputTableName=online_test_m_4244
    -DmodelName=dropout_multi_model_m_4244
    -DoutputTableName=online_test_prob_m_4244
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4244;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4253"
    -DclassNum=56
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4253
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4253;
drop table if exists online_test_prob_m_4253;
create table online_test_m_4253 as select * from evaluation_public_kv where mall_id='m_4253';
PAI -name prediction
    -DinputTableName=online_test_m_4253
    -DmodelName=dropout_multi_model_m_4253
    -DoutputTableName=online_test_prob_m_4253
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4253;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4269"
    -DclassNum=52
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4269
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4269;
drop table if exists online_test_prob_m_4269;
create table online_test_m_4269 as select * from evaluation_public_kv where mall_id='m_4269';
PAI -name prediction
    -DinputTableName=online_test_m_4269
    -DmodelName=dropout_multi_model_m_4269
    -DoutputTableName=online_test_prob_m_4269
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4269;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4312"
    -DclassNum=35
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4312
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4312;
drop table if exists online_test_prob_m_4312;
create table online_test_m_4312 as select * from evaluation_public_kv where mall_id='m_4312';
PAI -name prediction
    -DinputTableName=online_test_m_4312
    -DmodelName=dropout_multi_model_m_4312
    -DoutputTableName=online_test_prob_m_4312
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4312;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4341"
    -DclassNum=100
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4341
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4341;
drop table if exists online_test_prob_m_4341;
create table online_test_m_4341 as select * from evaluation_public_kv where mall_id='m_4341';
PAI -name prediction
    -DinputTableName=online_test_m_4341
    -DmodelName=dropout_multi_model_m_4341
    -DoutputTableName=online_test_prob_m_4341
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4341;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4347"
    -DclassNum=58
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4347
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4347;
drop table if exists online_test_prob_m_4347;
create table online_test_m_4347 as select * from evaluation_public_kv where mall_id='m_4347';
PAI -name prediction
    -DinputTableName=online_test_m_4347
    -DmodelName=dropout_multi_model_m_4347
    -DoutputTableName=online_test_prob_m_4347
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4347;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4357"
    -DclassNum=25
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4357
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4357;
drop table if exists online_test_prob_m_4357;
create table online_test_m_4357 as select * from evaluation_public_kv where mall_id='m_4357';
PAI -name prediction
    -DinputTableName=online_test_m_4357
    -DmodelName=dropout_multi_model_m_4357
    -DoutputTableName=online_test_prob_m_4357
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4357;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4358"
    -DclassNum=47
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4358
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4358;
drop table if exists online_test_prob_m_4358;
create table online_test_m_4358 as select * from evaluation_public_kv where mall_id='m_4358';
PAI -name prediction
    -DinputTableName=online_test_m_4358
    -DmodelName=dropout_multi_model_m_4358
    -DoutputTableName=online_test_prob_m_4358
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4358;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4372"
    -DclassNum=46
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4372
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4372;
drop table if exists online_test_prob_m_4372;
create table online_test_m_4372 as select * from evaluation_public_kv where mall_id='m_4372';
PAI -name prediction
    -DinputTableName=online_test_m_4372
    -DmodelName=dropout_multi_model_m_4372
    -DoutputTableName=online_test_prob_m_4372
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4372;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4380"
    -DclassNum=70
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4380
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4380;
drop table if exists online_test_prob_m_4380;
create table online_test_m_4380 as select * from evaluation_public_kv where mall_id='m_4380';
PAI -name prediction
    -DinputTableName=online_test_m_4380
    -DmodelName=dropout_multi_model_m_4380
    -DoutputTableName=online_test_prob_m_4380
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4380;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4384"
    -DclassNum=59
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4384
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4384;
drop table if exists online_test_prob_m_4384;
create table online_test_m_4384 as select * from evaluation_public_kv where mall_id='m_4384';
PAI -name prediction
    -DinputTableName=online_test_m_4384
    -DmodelName=dropout_multi_model_m_4384
    -DoutputTableName=online_test_prob_m_4384
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4384;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4406"
    -DclassNum=72
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4406
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4406;
drop table if exists online_test_prob_m_4406;
create table online_test_m_4406 as select * from evaluation_public_kv where mall_id='m_4406';
PAI -name prediction
    -DinputTableName=online_test_m_4406
    -DmodelName=dropout_multi_model_m_4406
    -DoutputTableName=online_test_prob_m_4406
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4406;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4422"
    -DclassNum=100
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4422
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4422;
drop table if exists online_test_prob_m_4422;
create table online_test_m_4422 as select * from evaluation_public_kv where mall_id='m_4422';
PAI -name prediction
    -DinputTableName=online_test_m_4422
    -DmodelName=dropout_multi_model_m_4422
    -DoutputTableName=online_test_prob_m_4422
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4422;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4423"
    -DclassNum=37
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4423
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4423;
drop table if exists online_test_prob_m_4423;
create table online_test_m_4423 as select * from evaluation_public_kv where mall_id='m_4423';
PAI -name prediction
    -DinputTableName=online_test_m_4423
    -DmodelName=dropout_multi_model_m_4423
    -DoutputTableName=online_test_prob_m_4423
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4423;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4434"
    -DclassNum=74
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4434
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4434;
drop table if exists online_test_prob_m_4434;
create table online_test_m_4434 as select * from evaluation_public_kv where mall_id='m_4434';
PAI -name prediction
    -DinputTableName=online_test_m_4434
    -DmodelName=dropout_multi_model_m_4434
    -DoutputTableName=online_test_prob_m_4434
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4434;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4459"
    -DclassNum=89
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4459
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4459;
drop table if exists online_test_prob_m_4459;
create table online_test_m_4459 as select * from evaluation_public_kv where mall_id='m_4459';
PAI -name prediction
    -DinputTableName=online_test_m_4459
    -DmodelName=dropout_multi_model_m_4459
    -DoutputTableName=online_test_prob_m_4459
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4459;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4466"
    -DclassNum=50
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4466
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4466;
drop table if exists online_test_prob_m_4466;
create table online_test_m_4466 as select * from evaluation_public_kv where mall_id='m_4466';
PAI -name prediction
    -DinputTableName=online_test_m_4466
    -DmodelName=dropout_multi_model_m_4466
    -DoutputTableName=online_test_prob_m_4466
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4466;


PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4983"
    -DclassNum=56
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4983
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4983;
drop table if exists online_test_prob_m_4983;
create table online_test_m_4983 as select * from evaluation_public_kv where mall_id='m_4983';
PAI -name prediction
    -DinputTableName=online_test_m_4983
    -DmodelName=dropout_multi_model_m_4983
    -DoutputTableName=online_test_prob_m_4983
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4983;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4998"
    -DclassNum=63
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4998
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4998;
drop table if exists online_test_prob_m_4998;
create table online_test_m_4998 as select * from evaluation_public_kv where mall_id='m_4998';
PAI -name prediction
    -DinputTableName=online_test_m_4998
    -DmodelName=dropout_multi_model_m_4998
    -DoutputTableName=online_test_prob_m_4998
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4998;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5014"
    -DclassNum=59
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5014
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5014;
drop table if exists online_test_prob_m_5014;
create table online_test_m_5014 as select * from evaluation_public_kv where mall_id='m_5014';
PAI -name prediction
    -DinputTableName=online_test_m_5014
    -DmodelName=dropout_multi_model_m_5014
    -DoutputTableName=online_test_prob_m_5014
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5014;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5019"
    -DclassNum=38
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5019
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5019;
drop table if exists online_test_prob_m_5019;
create table online_test_m_5019 as select * from evaluation_public_kv where mall_id='m_5019';
PAI -name prediction
    -DinputTableName=online_test_m_5019
    -DmodelName=dropout_multi_model_m_5019
    -DoutputTableName=online_test_prob_m_5019
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5019;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5024"
    -DclassNum=54
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5024
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5024;
drop table if exists online_test_prob_m_5024;
create table online_test_m_5024 as select * from evaluation_public_kv where mall_id='m_5024';
PAI -name prediction
    -DinputTableName=online_test_m_5024
    -DmodelName=dropout_multi_model_m_5024
    -DoutputTableName=online_test_prob_m_5024
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5024;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5076"
    -DclassNum=152
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5076
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5076;
drop table if exists online_test_prob_m_5076;
create table online_test_m_5076 as select * from evaluation_public_kv where mall_id='m_5076';
PAI -name prediction
    -DinputTableName=online_test_m_5076
    -DmodelName=dropout_multi_model_m_5076
    -DoutputTableName=online_test_prob_m_5076
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5076;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5081"
    -DclassNum=35
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5081
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5081;
drop table if exists online_test_prob_m_5081;
create table online_test_m_5081 as select * from evaluation_public_kv where mall_id='m_5081';
PAI -name prediction
    -DinputTableName=online_test_m_5081
    -DmodelName=dropout_multi_model_m_5081
    -DoutputTableName=online_test_prob_m_5081
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5081;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5085"
    -DclassNum=85
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5085
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5085;
drop table if exists online_test_prob_m_5085;
create table online_test_m_5085 as select * from evaluation_public_kv where mall_id='m_5085';
PAI -name prediction
    -DinputTableName=online_test_m_5085
    -DmodelName=dropout_multi_model_m_5085
    -DoutputTableName=online_test_prob_m_5085
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5085;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5154"
    -DclassNum=78
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5154
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5154;
drop table if exists online_test_prob_m_5154;
create table online_test_m_5154 as select * from evaluation_public_kv where mall_id='m_5154';
PAI -name prediction
    -DinputTableName=online_test_m_5154
    -DmodelName=dropout_multi_model_m_5154
    -DoutputTableName=online_test_prob_m_5154
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5154;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5182"
    -DclassNum=48
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5182
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5182;
drop table if exists online_test_prob_m_5182;
create table online_test_m_5182 as select * from evaluation_public_kv where mall_id='m_5182';
PAI -name prediction
    -DinputTableName=online_test_m_5182
    -DmodelName=dropout_multi_model_m_5182
    -DoutputTableName=online_test_prob_m_5182
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5182;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5192"
    -DclassNum=36
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5192
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5192;
drop table if exists online_test_prob_m_5192;
create table online_test_m_5192 as select * from evaluation_public_kv where mall_id='m_5192';
PAI -name prediction
    -DinputTableName=online_test_m_5192
    -DmodelName=dropout_multi_model_m_5192
    -DoutputTableName=online_test_prob_m_5192
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5192;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5200"
    -DclassNum=27
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5200
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5200;
drop table if exists online_test_prob_m_5200;
create table online_test_m_5200 as select * from evaluation_public_kv where mall_id='m_5200';
PAI -name prediction
    -DinputTableName=online_test_m_5200
    -DmodelName=dropout_multi_model_m_5200
    -DoutputTableName=online_test_prob_m_5200
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5200;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5214"
    -DclassNum=57
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5214
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5214;
drop table if exists online_test_prob_m_5214;
create table online_test_m_5214 as select * from evaluation_public_kv where mall_id='m_5214';
PAI -name prediction
    -DinputTableName=online_test_m_5214
    -DmodelName=dropout_multi_model_m_5214
    -DoutputTableName=online_test_prob_m_5214
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5214;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5258"
    -DclassNum=65
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5258
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5258;
drop table if exists online_test_prob_m_5258;
create table online_test_m_5258 as select * from evaluation_public_kv where mall_id='m_5258';
PAI -name prediction
    -DinputTableName=online_test_m_5258
    -DmodelName=dropout_multi_model_m_5258
    -DoutputTableName=online_test_prob_m_5258
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5258;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5291"
    -DclassNum=58
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5291
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5291;
drop table if exists online_test_prob_m_5291;
create table online_test_m_5291 as select * from evaluation_public_kv where mall_id='m_5291';
PAI -name prediction
    -DinputTableName=online_test_m_5291
    -DmodelName=dropout_multi_model_m_5291
    -DoutputTableName=online_test_prob_m_5291
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5291;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5296"
    -DclassNum=40
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5296
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5296;
drop table if exists online_test_prob_m_5296;
create table online_test_m_5296 as select * from evaluation_public_kv where mall_id='m_5296';
PAI -name prediction
    -DinputTableName=online_test_m_5296
    -DmodelName=dropout_multi_model_m_5296
    -DoutputTableName=online_test_prob_m_5296
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5296;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5311"
    -DclassNum=45
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5311
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5311;
drop table if exists online_test_prob_m_5311;
create table online_test_m_5311 as select * from evaluation_public_kv where mall_id='m_5311';
PAI -name prediction
    -DinputTableName=online_test_m_5311
    -DmodelName=dropout_multi_model_m_5311
    -DoutputTableName=online_test_prob_m_5311
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5311;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5319"
    -DclassNum=63
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5319
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5319;
drop table if exists online_test_prob_m_5319;
create table online_test_m_5319 as select * from evaluation_public_kv where mall_id='m_5319';
PAI -name prediction
    -DinputTableName=online_test_m_5319
    -DmodelName=dropout_multi_model_m_5319
    -DoutputTableName=online_test_prob_m_5319
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5319;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5323"
    -DclassNum=54
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5323
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5323;
drop table if exists online_test_prob_m_5323;
create table online_test_m_5323 as select * from evaluation_public_kv where mall_id='m_5323';
PAI -name prediction
    -DinputTableName=online_test_m_5323
    -DmodelName=dropout_multi_model_m_5323
    -DoutputTableName=online_test_prob_m_5323
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5323;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5325"
    -DclassNum=48
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5325
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5325;
drop table if exists online_test_prob_m_5325;
create table online_test_m_5325 as select * from evaluation_public_kv where mall_id='m_5325';
PAI -name prediction
    -DinputTableName=online_test_m_5325
    -DmodelName=dropout_multi_model_m_5325
    -DoutputTableName=online_test_prob_m_5325
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5325;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5326"
    -DclassNum=41
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5326
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5326;
drop table if exists online_test_prob_m_5326;
create table online_test_m_5326 as select * from evaluation_public_kv where mall_id='m_5326';
PAI -name prediction
    -DinputTableName=online_test_m_5326
    -DmodelName=dropout_multi_model_m_5326
    -DoutputTableName=online_test_prob_m_5326
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5326;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5331"
    -DclassNum=48
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5331
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5331;
drop table if exists online_test_prob_m_5331;
create table online_test_m_5331 as select * from evaluation_public_kv where mall_id='m_5331';
PAI -name prediction
    -DinputTableName=online_test_m_5331
    -DmodelName=dropout_multi_model_m_5331
    -DoutputTableName=online_test_prob_m_5331
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5331;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5337"
    -DclassNum=60
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5337
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5337;
drop table if exists online_test_prob_m_5337;
create table online_test_m_5337 as select * from evaluation_public_kv where mall_id='m_5337';
PAI -name prediction
    -DinputTableName=online_test_m_5337
    -DmodelName=dropout_multi_model_m_5337
    -DoutputTableName=online_test_prob_m_5337
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5337;

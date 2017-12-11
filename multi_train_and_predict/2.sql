--这一份格外慢
PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1293"
    -DclassNum=113
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1293
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1293;
drop table if exists online_test_prob_m_1293;
create table online_test_m_1293 as select * from evaluation_public_kv where mall_id='m_1293';
PAI -name prediction
    -DinputTableName=online_test_m_1293
    -DmodelName=dropout_multi_model_m_1293
    -DoutputTableName=online_test_prob_m_1293
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1293;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1309"
    -DclassNum=59
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1309
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1309;
drop table if exists online_test_prob_m_1309;
create table online_test_m_1309 as select * from evaluation_public_kv where mall_id='m_1309';
PAI -name prediction
    -DinputTableName=online_test_m_1309
    -DmodelName=dropout_multi_model_m_1309
    -DoutputTableName=online_test_prob_m_1309
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1309;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1320"
    -DclassNum=51
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1320
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1320;
drop table if exists online_test_prob_m_1320;
create table online_test_m_1320 as select * from evaluation_public_kv where mall_id='m_1320';
PAI -name prediction
    -DinputTableName=online_test_m_1320
    -DmodelName=dropout_multi_model_m_1320
    -DoutputTableName=online_test_prob_m_1320
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1320;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1366"
    -DclassNum=45
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1366
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1366;
drop table if exists online_test_prob_m_1366;
create table online_test_m_1366 as select * from evaluation_public_kv where mall_id='m_1366';
PAI -name prediction
    -DinputTableName=online_test_m_1366
    -DmodelName=dropout_multi_model_m_1366
    -DoutputTableName=online_test_prob_m_1366
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1366;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1375"
    -DclassNum=76
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1375
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1375;
drop table if exists online_test_prob_m_1375;
create table online_test_m_1375 as select * from evaluation_public_kv where mall_id='m_1375';
PAI -name prediction
    -DinputTableName=online_test_m_1375
    -DmodelName=dropout_multi_model_m_1375
    -DoutputTableName=online_test_prob_m_1375
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1375;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1377"
    -DclassNum=87
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1377
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1377;
drop table if exists online_test_prob_m_1377;
create table online_test_m_1377 as select * from evaluation_public_kv where mall_id='m_1377';
PAI -name prediction
    -DinputTableName=online_test_m_1377
    -DmodelName=dropout_multi_model_m_1377
    -DoutputTableName=online_test_prob_m_1377
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1377;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1381"
    -DclassNum=47
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1381
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1381;
drop table if exists online_test_prob_m_1381;
create table online_test_m_1381 as select * from evaluation_public_kv where mall_id='m_1381';
PAI -name prediction
    -DinputTableName=online_test_m_1381
    -DmodelName=dropout_multi_model_m_1381
    -DoutputTableName=online_test_prob_m_1381
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1381;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1389"
    -DclassNum=63
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1389
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1389;
drop table if exists online_test_prob_m_1389;
create table online_test_m_1389 as select * from evaluation_public_kv where mall_id='m_1389';
PAI -name prediction
    -DinputTableName=online_test_m_1389
    -DmodelName=dropout_multi_model_m_1389
    -DoutputTableName=online_test_prob_m_1389
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1389;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1402"
    -DclassNum=59
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1402
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1402;
drop table if exists online_test_prob_m_1402;
create table online_test_m_1402 as select * from evaluation_public_kv where mall_id='m_1402';
PAI -name prediction
    -DinputTableName=online_test_m_1402
    -DmodelName=dropout_multi_model_m_1402
    -DoutputTableName=online_test_prob_m_1402
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1402;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1409"
    -DclassNum=102
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1409
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1409;
drop table if exists online_test_prob_m_1409;
create table online_test_m_1409 as select * from evaluation_public_kv where mall_id='m_1409';
PAI -name prediction
    -DinputTableName=online_test_m_1409
    -DmodelName=dropout_multi_model_m_1409
    -DoutputTableName=online_test_prob_m_1409
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1409;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1413"
    -DclassNum=48
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1413
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1413;
drop table if exists online_test_prob_m_1413;
create table online_test_m_1413 as select * from evaluation_public_kv where mall_id='m_1413';
PAI -name prediction
    -DinputTableName=online_test_m_1413
    -DmodelName=dropout_multi_model_m_1413
    -DoutputTableName=online_test_prob_m_1413
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1413;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1435"
    -DclassNum=51
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1435
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1435;
drop table if exists online_test_prob_m_1435;
create table online_test_m_1435 as select * from evaluation_public_kv where mall_id='m_1435';
PAI -name prediction
    -DinputTableName=online_test_m_1435
    -DmodelName=dropout_multi_model_m_1435
    -DoutputTableName=online_test_prob_m_1435
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1435;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1442"
    -DclassNum=70
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1442
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1442;
drop table if exists online_test_prob_m_1442;
create table online_test_m_1442 as select * from evaluation_public_kv where mall_id='m_1442';
PAI -name prediction
    -DinputTableName=online_test_m_1442
    -DmodelName=dropout_multi_model_m_1442
    -DoutputTableName=online_test_prob_m_1442
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1442;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1451"
    -DclassNum=65
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1451
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1451;
drop table if exists online_test_prob_m_1451;
create table online_test_m_1451 as select * from evaluation_public_kv where mall_id='m_1451';
PAI -name prediction
    -DinputTableName=online_test_m_1451
    -DmodelName=dropout_multi_model_m_1451
    -DoutputTableName=online_test_prob_m_1451
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1451;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1485"
    -DclassNum=50
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1485
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1485;
drop table if exists online_test_prob_m_1485;
create table online_test_m_1485 as select * from evaluation_public_kv where mall_id='m_1485';
PAI -name prediction
    -DinputTableName=online_test_m_1485
    -DmodelName=dropout_multi_model_m_1485
    -DoutputTableName=online_test_prob_m_1485
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1485;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1553"
    -DclassNum=53
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1553
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1553;
drop table if exists online_test_prob_m_1553;
create table online_test_m_1553 as select * from evaluation_public_kv where mall_id='m_1553';
PAI -name prediction
    -DinputTableName=online_test_m_1553
    -DmodelName=dropout_multi_model_m_1553
    -DoutputTableName=online_test_prob_m_1553
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1553;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1585"
    -DclassNum=45
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1585
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1585;
drop table if exists online_test_prob_m_1585;
create table online_test_m_1585 as select * from evaluation_public_kv where mall_id='m_1585';
PAI -name prediction
    -DinputTableName=online_test_m_1585
    -DmodelName=dropout_multi_model_m_1585
    -DoutputTableName=online_test_prob_m_1585
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1585;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1621"
    -DclassNum=118
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1621
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1621;
drop table if exists online_test_prob_m_1621;
create table online_test_m_1621 as select * from evaluation_public_kv where mall_id='m_1621';
PAI -name prediction
    -DinputTableName=online_test_m_1621
    -DmodelName=dropout_multi_model_m_1621
    -DoutputTableName=online_test_prob_m_1621
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1621;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1657"
    -DclassNum=49
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1657
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1657;
drop table if exists online_test_prob_m_1657;
create table online_test_m_1657 as select * from evaluation_public_kv where mall_id='m_1657';
PAI -name prediction
    -DinputTableName=online_test_m_1657
    -DmodelName=dropout_multi_model_m_1657
    -DoutputTableName=online_test_prob_m_1657
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1657;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1701"
    -DclassNum=48
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1701
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1701;
drop table if exists online_test_prob_m_1701;
create table online_test_m_1701 as select * from evaluation_public_kv where mall_id='m_1701';
PAI -name prediction
    -DinputTableName=online_test_m_1701
    -DmodelName=dropout_multi_model_m_1701
    -DoutputTableName=online_test_prob_m_1701
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1701;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1755"
    -DclassNum=42
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1755
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1755;
drop table if exists online_test_prob_m_1755;
create table online_test_m_1755 as select * from evaluation_public_kv where mall_id='m_1755';
PAI -name prediction
    -DinputTableName=online_test_m_1755
    -DmodelName=dropout_multi_model_m_1755
    -DoutputTableName=online_test_prob_m_1755
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1755;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1789"
    -DclassNum=51
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1789
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1789;
drop table if exists online_test_prob_m_1789;
create table online_test_m_1789 as select * from evaluation_public_kv where mall_id='m_1789';
PAI -name prediction
    -DinputTableName=online_test_m_1789
    -DmodelName=dropout_multi_model_m_1789
    -DoutputTableName=online_test_prob_m_1789
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1789;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1790"
    -DclassNum=83
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1790
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1790;
drop table if exists online_test_prob_m_1790;
create table online_test_m_1790 as select * from evaluation_public_kv where mall_id='m_1790';
PAI -name prediction
    -DinputTableName=online_test_m_1790
    -DmodelName=dropout_multi_model_m_1790
    -DoutputTableName=online_test_prob_m_1790
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1790;

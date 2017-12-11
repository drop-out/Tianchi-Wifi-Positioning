
PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_6337"
    -DclassNum=135
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_6337
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_6337;
drop table if exists online_test_prob_m_6337;
create table online_test_m_6337 as select * from evaluation_public_kv where mall_id='m_6337';
PAI -name prediction
    -DinputTableName=online_test_m_6337
    -DmodelName=dropout_multi_model_m_6337
    -DoutputTableName=online_test_prob_m_6337
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_6337;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_6390"
    -DclassNum=35
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_6390
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_6390;
drop table if exists online_test_prob_m_6390;
create table online_test_m_6390 as select * from evaluation_public_kv where mall_id='m_6390';
PAI -name prediction
    -DinputTableName=online_test_m_6390
    -DmodelName=dropout_multi_model_m_6390
    -DoutputTableName=online_test_prob_m_6390
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_6390;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_640"
    -DclassNum=75
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_640
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_640;
drop table if exists online_test_prob_m_640;
create table online_test_m_640 as select * from evaluation_public_kv where mall_id='m_640';
PAI -name prediction
    -DinputTableName=online_test_m_640
    -DmodelName=dropout_multi_model_m_640
    -DoutputTableName=online_test_prob_m_640
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_640;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_6428"
    -DclassNum=32
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_6428
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_6428;
drop table if exists online_test_prob_m_6428;
create table online_test_m_6428 as select * from evaluation_public_kv where mall_id='m_6428';
PAI -name prediction
    -DinputTableName=online_test_m_6428
    -DmodelName=dropout_multi_model_m_6428
    -DoutputTableName=online_test_prob_m_6428
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_6428;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_6429"
    -DclassNum=60
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_6429
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_6429;
drop table if exists online_test_prob_m_6429;
create table online_test_m_6429 as select * from evaluation_public_kv where mall_id='m_6429';
PAI -name prediction
    -DinputTableName=online_test_m_6429
    -DmodelName=dropout_multi_model_m_6429
    -DoutputTableName=online_test_prob_m_6429
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_6429;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_648"
    -DclassNum=68
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_648
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_648;
drop table if exists online_test_prob_m_648;
create table online_test_m_648 as select * from evaluation_public_kv where mall_id='m_648';
PAI -name prediction
    -DinputTableName=online_test_m_648
    -DmodelName=dropout_multi_model_m_648
    -DoutputTableName=online_test_prob_m_648
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_648;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_6480"
    -DclassNum=78
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_6480
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_6480;
drop table if exists online_test_prob_m_6480;
create table online_test_m_6480 as select * from evaluation_public_kv where mall_id='m_6480';
PAI -name prediction
    -DinputTableName=online_test_m_6480
    -DmodelName=dropout_multi_model_m_6480
    -DoutputTableName=online_test_prob_m_6480
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_6480;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_651"
    -DclassNum=46
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_651
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_651;
drop table if exists online_test_prob_m_651;
create table online_test_m_651 as select * from evaluation_public_kv where mall_id='m_651';
PAI -name prediction
    -DinputTableName=online_test_m_651
    -DmodelName=dropout_multi_model_m_651
    -DoutputTableName=online_test_prob_m_651
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_651;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_6511"
    -DclassNum=41
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_6511
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_6511;
drop table if exists online_test_prob_m_6511;
create table online_test_m_6511 as select * from evaluation_public_kv where mall_id='m_6511';
PAI -name prediction
    -DinputTableName=online_test_m_6511
    -DmodelName=dropout_multi_model_m_6511
    -DoutputTableName=online_test_prob_m_6511
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_6511;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_6516"
    -DclassNum=31
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_6516
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_6516;
drop table if exists online_test_prob_m_6516;
create table online_test_m_6516 as select * from evaluation_public_kv where mall_id='m_6516';
PAI -name prediction
    -DinputTableName=online_test_m_6516
    -DmodelName=dropout_multi_model_m_6516
    -DoutputTableName=online_test_prob_m_6516
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_6516;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_6526"
    -DclassNum=56
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_6526
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_6526;
drop table if exists online_test_prob_m_6526;
create table online_test_m_6526 as select * from evaluation_public_kv where mall_id='m_6526';
PAI -name prediction
    -DinputTableName=online_test_m_6526
    -DmodelName=dropout_multi_model_m_6526
    -DoutputTableName=online_test_prob_m_6526
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_6526;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_6527"
    -DclassNum=38
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_6527
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_6527;
drop table if exists online_test_prob_m_6527;
create table online_test_m_6527 as select * from evaluation_public_kv where mall_id='m_6527';
PAI -name prediction
    -DinputTableName=online_test_m_6527
    -DmodelName=dropout_multi_model_m_6527
    -DoutputTableName=online_test_prob_m_6527
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_6527;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_6538"
    -DclassNum=51
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_6538
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_6538;
drop table if exists online_test_prob_m_6538;
create table online_test_m_6538 as select * from evaluation_public_kv where mall_id='m_6538';
PAI -name prediction
    -DinputTableName=online_test_m_6538
    -DmodelName=dropout_multi_model_m_6538
    -DoutputTableName=online_test_prob_m_6538
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_6538;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_6580"
    -DclassNum=47
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_6580
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_6580;
drop table if exists online_test_prob_m_6580;
create table online_test_m_6580 as select * from evaluation_public_kv where mall_id='m_6580';
PAI -name prediction
    -DinputTableName=online_test_m_6580
    -DmodelName=dropout_multi_model_m_6580
    -DoutputTableName=online_test_prob_m_6580
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_6580;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_6587"
    -DclassNum=102
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_6587
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_6587;
drop table if exists online_test_prob_m_6587;
create table online_test_m_6587 as select * from evaluation_public_kv where mall_id='m_6587';
PAI -name prediction
    -DinputTableName=online_test_m_6587
    -DmodelName=dropout_multi_model_m_6587
    -DoutputTableName=online_test_prob_m_6587
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_6587;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_6590"
    -DclassNum=55
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_6590
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_6590;
drop table if exists online_test_prob_m_6590;
create table online_test_m_6590 as select * from evaluation_public_kv where mall_id='m_6590';
PAI -name prediction
    -DinputTableName=online_test_m_6590
    -DmodelName=dropout_multi_model_m_6590
    -DoutputTableName=online_test_prob_m_6590
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_6590;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_6596"
    -DclassNum=85
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_6596
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_6596;
drop table if exists online_test_prob_m_6596;
create table online_test_m_6596 as select * from evaluation_public_kv where mall_id='m_6596';
PAI -name prediction
    -DinputTableName=online_test_m_6596
    -DmodelName=dropout_multi_model_m_6596
    -DoutputTableName=online_test_prob_m_6596
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_6596;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_6630"
    -DclassNum=48
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_6630
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_6630;
drop table if exists online_test_prob_m_6630;
create table online_test_m_6630 as select * from evaluation_public_kv where mall_id='m_6630';
PAI -name prediction
    -DinputTableName=online_test_m_6630
    -DmodelName=dropout_multi_model_m_6630
    -DoutputTableName=online_test_prob_m_6630
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_6630;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_6638"
    -DclassNum=51
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_6638
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_6638;
drop table if exists online_test_prob_m_6638;
create table online_test_m_6638 as select * from evaluation_public_kv where mall_id='m_6638';
PAI -name prediction
    -DinputTableName=online_test_m_6638
    -DmodelName=dropout_multi_model_m_6638
    -DoutputTableName=online_test_prob_m_6638
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_6638;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_6703"
    -DclassNum=64
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_6703
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_6703;
drop table if exists online_test_prob_m_6703;
create table online_test_m_6703 as select * from evaluation_public_kv where mall_id='m_6703';
PAI -name prediction
    -DinputTableName=online_test_m_6703
    -DmodelName=dropout_multi_model_m_6703
    -DoutputTableName=online_test_prob_m_6703
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_6703;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_6714"
    -DclassNum=67
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_6714
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_6714;
drop table if exists online_test_prob_m_6714;
create table online_test_m_6714 as select * from evaluation_public_kv where mall_id='m_6714';
PAI -name prediction
    -DinputTableName=online_test_m_6714
    -DmodelName=dropout_multi_model_m_6714
    -DoutputTableName=online_test_prob_m_6714
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_6714;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_672"
    -DclassNum=41
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_672
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_672;
drop table if exists online_test_prob_m_672;
create table online_test_m_672 as select * from evaluation_public_kv where mall_id='m_672';
PAI -name prediction
    -DinputTableName=online_test_m_672
    -DmodelName=dropout_multi_model_m_672
    -DoutputTableName=online_test_prob_m_672
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_672;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_6720"
    -DclassNum=51
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_6720
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_6720;
drop table if exists online_test_prob_m_6720;
create table online_test_m_6720 as select * from evaluation_public_kv where mall_id='m_6720';
PAI -name prediction
    -DinputTableName=online_test_m_6720
    -DmodelName=dropout_multi_model_m_6720
    -DoutputTableName=online_test_prob_m_6720
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_6720;

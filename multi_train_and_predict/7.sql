
PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3442"
    -DclassNum=48
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3442
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3442;
drop table if exists online_test_prob_m_3442;
create table online_test_m_3442 as select * from evaluation_public_kv where mall_id='m_3442';
PAI -name prediction
    -DinputTableName=online_test_m_3442
    -DmodelName=dropout_multi_model_m_3442
    -DoutputTableName=online_test_prob_m_3442
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3442;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3445"
    -DclassNum=72
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3445
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3445;
drop table if exists online_test_prob_m_3445;
create table online_test_m_3445 as select * from evaluation_public_kv where mall_id='m_3445';
PAI -name prediction
    -DinputTableName=online_test_m_3445
    -DmodelName=dropout_multi_model_m_3445
    -DoutputTableName=online_test_prob_m_3445
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3445;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3449"
    -DclassNum=43
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3449
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3449;
drop table if exists online_test_prob_m_3449;
create table online_test_m_3449 as select * from evaluation_public_kv where mall_id='m_3449';
PAI -name prediction
    -DinputTableName=online_test_m_3449
    -DmodelName=dropout_multi_model_m_3449
    -DoutputTableName=online_test_prob_m_3449
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3449;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3467"
    -DclassNum=52
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3467
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3467;
drop table if exists online_test_prob_m_3467;
create table online_test_m_3467 as select * from evaluation_public_kv where mall_id='m_3467';
PAI -name prediction
    -DinputTableName=online_test_m_3467
    -DmodelName=dropout_multi_model_m_3467
    -DoutputTableName=online_test_prob_m_3467
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3467;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3501"
    -DclassNum=79
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3501
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3501;
drop table if exists online_test_prob_m_3501;
create table online_test_m_3501 as select * from evaluation_public_kv where mall_id='m_3501';
PAI -name prediction
    -DinputTableName=online_test_m_3501
    -DmodelName=dropout_multi_model_m_3501
    -DoutputTableName=online_test_prob_m_3501
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3501;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3511"
    -DclassNum=49
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3511
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3511;
drop table if exists online_test_prob_m_3511;
create table online_test_m_3511 as select * from evaluation_public_kv where mall_id='m_3511';
PAI -name prediction
    -DinputTableName=online_test_m_3511
    -DmodelName=dropout_multi_model_m_3511
    -DoutputTableName=online_test_prob_m_3511
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3511;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3517"
    -DclassNum=104
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3517
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3517;
drop table if exists online_test_prob_m_3517;
create table online_test_m_3517 as select * from evaluation_public_kv where mall_id='m_3517';
PAI -name prediction
    -DinputTableName=online_test_m_3517
    -DmodelName=dropout_multi_model_m_3517
    -DoutputTableName=online_test_prob_m_3517
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3517;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3520"
    -DclassNum=60
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3520
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3520;
drop table if exists online_test_prob_m_3520;
create table online_test_m_3520 as select * from evaluation_public_kv where mall_id='m_3520';
PAI -name prediction
    -DinputTableName=online_test_m_3520
    -DmodelName=dropout_multi_model_m_3520
    -DoutputTableName=online_test_prob_m_3520
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3520;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3528"
    -DclassNum=78
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3528
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3528;
drop table if exists online_test_prob_m_3528;
create table online_test_m_3528 as select * from evaluation_public_kv where mall_id='m_3528';
PAI -name prediction
    -DinputTableName=online_test_m_3528
    -DmodelName=dropout_multi_model_m_3528
    -DoutputTableName=online_test_prob_m_3528
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3528;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3532"
    -DclassNum=71
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3532
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3532;
drop table if exists online_test_prob_m_3532;
create table online_test_m_3532 as select * from evaluation_public_kv where mall_id='m_3532';
PAI -name prediction
    -DinputTableName=online_test_m_3532
    -DmodelName=dropout_multi_model_m_3532
    -DoutputTableName=online_test_prob_m_3532
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3532;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3534"
    -DclassNum=35
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3534
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3534;
drop table if exists online_test_prob_m_3534;
create table online_test_m_3534 as select * from evaluation_public_kv where mall_id='m_3534';
PAI -name prediction
    -DinputTableName=online_test_m_3534
    -DmodelName=dropout_multi_model_m_3534
    -DoutputTableName=online_test_prob_m_3534
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3534;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3540"
    -DclassNum=45
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3540
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3540;
drop table if exists online_test_prob_m_3540;
create table online_test_m_3540 as select * from evaluation_public_kv where mall_id='m_3540';
PAI -name prediction
    -DinputTableName=online_test_m_3540
    -DmodelName=dropout_multi_model_m_3540
    -DoutputTableName=online_test_prob_m_3540
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3540;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3591"
    -DclassNum=44
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3591
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3591;
drop table if exists online_test_prob_m_3591;
create table online_test_m_3591 as select * from evaluation_public_kv where mall_id='m_3591';
PAI -name prediction
    -DinputTableName=online_test_m_3591
    -DmodelName=dropout_multi_model_m_3591
    -DoutputTableName=online_test_prob_m_3591
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3591;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3596"
    -DclassNum=65
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3596
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3596;
drop table if exists online_test_prob_m_3596;
create table online_test_m_3596 as select * from evaluation_public_kv where mall_id='m_3596';
PAI -name prediction
    -DinputTableName=online_test_m_3596
    -DmodelName=dropout_multi_model_m_3596
    -DoutputTableName=online_test_prob_m_3596
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3596;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3601"
    -DclassNum=49
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3601
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3601;
drop table if exists online_test_prob_m_3601;
create table online_test_m_3601 as select * from evaluation_public_kv where mall_id='m_3601';
PAI -name prediction
    -DinputTableName=online_test_m_3601
    -DmodelName=dropout_multi_model_m_3601
    -DoutputTableName=online_test_prob_m_3601
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3601;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3605"
    -DclassNum=27
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3605
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3605;
drop table if exists online_test_prob_m_3605;
create table online_test_m_3605 as select * from evaluation_public_kv where mall_id='m_3605';
PAI -name prediction
    -DinputTableName=online_test_m_3605
    -DmodelName=dropout_multi_model_m_3605
    -DoutputTableName=online_test_prob_m_3605
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3605;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3610"
    -DclassNum=73
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3610
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3610;
drop table if exists online_test_prob_m_3610;
create table online_test_m_3610 as select * from evaluation_public_kv where mall_id='m_3610';
PAI -name prediction
    -DinputTableName=online_test_m_3610
    -DmodelName=dropout_multi_model_m_3610
    -DoutputTableName=online_test_prob_m_3610
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3610;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3620"
    -DclassNum=61
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3620
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3620;
drop table if exists online_test_prob_m_3620;
create table online_test_m_3620 as select * from evaluation_public_kv where mall_id='m_3620';
PAI -name prediction
    -DinputTableName=online_test_m_3620
    -DmodelName=dropout_multi_model_m_3620
    -DoutputTableName=online_test_prob_m_3620
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3620;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3627"
    -DclassNum=58
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3627
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3627;
drop table if exists online_test_prob_m_3627;
create table online_test_m_3627 as select * from evaluation_public_kv where mall_id='m_3627';
PAI -name prediction
    -DinputTableName=online_test_m_3627
    -DmodelName=dropout_multi_model_m_3627
    -DoutputTableName=online_test_prob_m_3627
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3627;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3679"
    -DclassNum=74
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3679
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3679;
drop table if exists online_test_prob_m_3679;
create table online_test_m_3679 as select * from evaluation_public_kv where mall_id='m_3679';
PAI -name prediction
    -DinputTableName=online_test_m_3679
    -DmodelName=dropout_multi_model_m_3679
    -DoutputTableName=online_test_prob_m_3679
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3679;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3690"
    -DclassNum=32
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3690
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3690;
drop table if exists online_test_prob_m_3690;
create table online_test_m_3690 as select * from evaluation_public_kv where mall_id='m_3690';
PAI -name prediction
    -DinputTableName=online_test_m_3690
    -DmodelName=dropout_multi_model_m_3690
    -DoutputTableName=online_test_prob_m_3690
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3690;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3695"
    -DclassNum=51
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3695
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3695;
drop table if exists online_test_prob_m_3695;
create table online_test_m_3695 as select * from evaluation_public_kv where mall_id='m_3695';
PAI -name prediction
    -DinputTableName=online_test_m_3695
    -DmodelName=dropout_multi_model_m_3695
    -DoutputTableName=online_test_prob_m_3695
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3695;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3702"
    -DclassNum=63
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3702
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3702;
drop table if exists online_test_prob_m_3702;
create table online_test_m_3702 as select * from evaluation_public_kv where mall_id='m_3702';
PAI -name prediction
    -DinputTableName=online_test_m_3702
    -DmodelName=dropout_multi_model_m_3702
    -DoutputTableName=online_test_prob_m_3702
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3702;

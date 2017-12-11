
PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4505"
    -DclassNum=51
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4505
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4505;
drop table if exists online_test_prob_m_4505;
create table online_test_m_4505 as select * from evaluation_public_kv where mall_id='m_4505';
PAI -name prediction
    -DinputTableName=online_test_m_4505
    -DmodelName=dropout_multi_model_m_4505
    -DoutputTableName=online_test_prob_m_4505
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4505;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4509"
    -DclassNum=52
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4509
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4509;
drop table if exists online_test_prob_m_4509;
create table online_test_m_4509 as select * from evaluation_public_kv where mall_id='m_4509';
PAI -name prediction
    -DinputTableName=online_test_m_4509
    -DmodelName=dropout_multi_model_m_4509
    -DoutputTableName=online_test_prob_m_4509
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4509;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4515"
    -DclassNum=128
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4515
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4515;
drop table if exists online_test_prob_m_4515;
create table online_test_m_4515 as select * from evaluation_public_kv where mall_id='m_4515';
PAI -name prediction
    -DinputTableName=online_test_m_4515
    -DmodelName=dropout_multi_model_m_4515
    -DoutputTableName=online_test_prob_m_4515
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4515;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4524"
    -DclassNum=37
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4524
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4524;
drop table if exists online_test_prob_m_4524;
create table online_test_m_4524 as select * from evaluation_public_kv where mall_id='m_4524';
PAI -name prediction
    -DinputTableName=online_test_m_4524
    -DmodelName=dropout_multi_model_m_4524
    -DoutputTableName=online_test_prob_m_4524
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4524;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4525"
    -DclassNum=64
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4525
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4525;
drop table if exists online_test_prob_m_4525;
create table online_test_m_4525 as select * from evaluation_public_kv where mall_id='m_4525';
PAI -name prediction
    -DinputTableName=online_test_m_4525
    -DmodelName=dropout_multi_model_m_4525
    -DoutputTableName=online_test_prob_m_4525
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4525;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4543"
    -DclassNum=97
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4543
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4543;
drop table if exists online_test_prob_m_4543;
create table online_test_m_4543 as select * from evaluation_public_kv where mall_id='m_4543';
PAI -name prediction
    -DinputTableName=online_test_m_4543
    -DmodelName=dropout_multi_model_m_4543
    -DoutputTableName=online_test_prob_m_4543
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4543;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4548"
    -DclassNum=94
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4548
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4548;
drop table if exists online_test_prob_m_4548;
create table online_test_m_4548 as select * from evaluation_public_kv where mall_id='m_4548';
PAI -name prediction
    -DinputTableName=online_test_m_4548
    -DmodelName=dropout_multi_model_m_4548
    -DoutputTableName=online_test_prob_m_4548
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4548;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4572"
    -DclassNum=139
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4572
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4572;
drop table if exists online_test_prob_m_4572;
create table online_test_m_4572 as select * from evaluation_public_kv where mall_id='m_4572';
PAI -name prediction
    -DinputTableName=online_test_m_4572
    -DmodelName=dropout_multi_model_m_4572
    -DoutputTableName=online_test_prob_m_4572
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4572;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4585"
    -DclassNum=40
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4585
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4585;
drop table if exists online_test_prob_m_4585;
create table online_test_m_4585 as select * from evaluation_public_kv where mall_id='m_4585';
PAI -name prediction
    -DinputTableName=online_test_m_4585
    -DmodelName=dropout_multi_model_m_4585
    -DoutputTableName=online_test_prob_m_4585
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4585;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4599"
    -DclassNum=59
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4599
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4599;
drop table if exists online_test_prob_m_4599;
create table online_test_m_4599 as select * from evaluation_public_kv where mall_id='m_4599';
PAI -name prediction
    -DinputTableName=online_test_m_4599
    -DmodelName=dropout_multi_model_m_4599
    -DoutputTableName=online_test_prob_m_4599
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4599;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4634"
    -DclassNum=51
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4634
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4634;
drop table if exists online_test_prob_m_4634;
create table online_test_m_4634 as select * from evaluation_public_kv where mall_id='m_4634';
PAI -name prediction
    -DinputTableName=online_test_m_4634
    -DmodelName=dropout_multi_model_m_4634
    -DoutputTableName=online_test_prob_m_4634
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4634;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4637"
    -DclassNum=77
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4637
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4637;
drop table if exists online_test_prob_m_4637;
create table online_test_m_4637 as select * from evaluation_public_kv where mall_id='m_4637';
PAI -name prediction
    -DinputTableName=online_test_m_4637
    -DmodelName=dropout_multi_model_m_4637
    -DoutputTableName=online_test_prob_m_4637
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4637;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4664"
    -DclassNum=64
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4664
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4664;
drop table if exists online_test_prob_m_4664;
create table online_test_m_4664 as select * from evaluation_public_kv where mall_id='m_4664';
PAI -name prediction
    -DinputTableName=online_test_m_4664
    -DmodelName=dropout_multi_model_m_4664
    -DoutputTableName=online_test_prob_m_4664
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4664;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4680"
    -DclassNum=73
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4680
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4680;
drop table if exists online_test_prob_m_4680;
create table online_test_m_4680 as select * from evaluation_public_kv where mall_id='m_4680';
PAI -name prediction
    -DinputTableName=online_test_m_4680
    -DmodelName=dropout_multi_model_m_4680
    -DoutputTableName=online_test_prob_m_4680
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4680;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4695"
    -DclassNum=46
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4695
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4695;
drop table if exists online_test_prob_m_4695;
create table online_test_m_4695 as select * from evaluation_public_kv where mall_id='m_4695';
PAI -name prediction
    -DinputTableName=online_test_m_4695
    -DmodelName=dropout_multi_model_m_4695
    -DoutputTableName=online_test_prob_m_4695
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4695;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4711"
    -DclassNum=66
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4711
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4711;
drop table if exists online_test_prob_m_4711;
create table online_test_m_4711 as select * from evaluation_public_kv where mall_id='m_4711';
PAI -name prediction
    -DinputTableName=online_test_m_4711
    -DmodelName=dropout_multi_model_m_4711
    -DoutputTableName=online_test_prob_m_4711
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4711;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4759"
    -DclassNum=80
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4759
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4759;
drop table if exists online_test_prob_m_4759;
create table online_test_m_4759 as select * from evaluation_public_kv where mall_id='m_4759';
PAI -name prediction
    -DinputTableName=online_test_m_4759
    -DmodelName=dropout_multi_model_m_4759
    -DoutputTableName=online_test_prob_m_4759
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4759;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4801"
    -DclassNum=39
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4801
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4801;
drop table if exists online_test_prob_m_4801;
create table online_test_m_4801 as select * from evaluation_public_kv where mall_id='m_4801';
PAI -name prediction
    -DinputTableName=online_test_m_4801
    -DmodelName=dropout_multi_model_m_4801
    -DoutputTableName=online_test_prob_m_4801
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4801;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4818"
    -DclassNum=56
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4818
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4818;
drop table if exists online_test_prob_m_4818;
create table online_test_m_4818 as select * from evaluation_public_kv where mall_id='m_4818';
PAI -name prediction
    -DinputTableName=online_test_m_4818
    -DmodelName=dropout_multi_model_m_4818
    -DoutputTableName=online_test_prob_m_4818
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4818;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4834"
    -DclassNum=45
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4834
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4834;
drop table if exists online_test_prob_m_4834;
create table online_test_m_4834 as select * from evaluation_public_kv where mall_id='m_4834';
PAI -name prediction
    -DinputTableName=online_test_m_4834
    -DmodelName=dropout_multi_model_m_4834
    -DoutputTableName=online_test_prob_m_4834
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4834;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4853"
    -DclassNum=40
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4853
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4853;
drop table if exists online_test_prob_m_4853;
create table online_test_m_4853 as select * from evaluation_public_kv where mall_id='m_4853';
PAI -name prediction
    -DinputTableName=online_test_m_4853
    -DmodelName=dropout_multi_model_m_4853
    -DoutputTableName=online_test_prob_m_4853
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4853;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4889"
    -DclassNum=35
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4889
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4889;
drop table if exists online_test_prob_m_4889;
create table online_test_m_4889 as select * from evaluation_public_kv where mall_id='m_4889';
PAI -name prediction
    -DinputTableName=online_test_m_4889
    -DmodelName=dropout_multi_model_m_4889
    -DoutputTableName=online_test_prob_m_4889
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4889;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4923"
    -DclassNum=99
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4923
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4923;
drop table if exists online_test_prob_m_4923;
create table online_test_m_4923 as select * from evaluation_public_kv where mall_id='m_4923';
PAI -name prediction
    -DinputTableName=online_test_m_4923
    -DmodelName=dropout_multi_model_m_4923
    -DoutputTableName=online_test_prob_m_4923
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4923;

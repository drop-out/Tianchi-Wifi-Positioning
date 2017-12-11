
PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5529"
    -DclassNum=87
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5529
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5529;
drop table if exists online_test_prob_m_5529;
create table online_test_m_5529 as select * from evaluation_public_kv where mall_id='m_5529';
PAI -name prediction
    -DinputTableName=online_test_m_5529
    -DmodelName=dropout_multi_model_m_5529
    -DoutputTableName=online_test_prob_m_5529
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5529;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5542"
    -DclassNum=37
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5542
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5542;
drop table if exists online_test_prob_m_5542;
create table online_test_m_5542 as select * from evaluation_public_kv where mall_id='m_5542';
PAI -name prediction
    -DinputTableName=online_test_m_5542
    -DmodelName=dropout_multi_model_m_5542
    -DoutputTableName=online_test_prob_m_5542
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5542;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5570"
    -DclassNum=67
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5570
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5570;
drop table if exists online_test_prob_m_5570;
create table online_test_m_5570 as select * from evaluation_public_kv where mall_id='m_5570';
PAI -name prediction
    -DinputTableName=online_test_m_5570
    -DmodelName=dropout_multi_model_m_5570
    -DoutputTableName=online_test_prob_m_5570
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5570;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5583"
    -DclassNum=64
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5583
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5583;
drop table if exists online_test_prob_m_5583;
create table online_test_m_5583 as select * from evaluation_public_kv where mall_id='m_5583';
PAI -name prediction
    -DinputTableName=online_test_m_5583
    -DmodelName=dropout_multi_model_m_5583
    -DoutputTableName=online_test_prob_m_5583
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5583;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5586"
    -DclassNum=50
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5586
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5586;
drop table if exists online_test_prob_m_5586;
create table online_test_m_5586 as select * from evaluation_public_kv where mall_id='m_5586';
PAI -name prediction
    -DinputTableName=online_test_m_5586
    -DmodelName=dropout_multi_model_m_5586
    -DoutputTableName=online_test_prob_m_5586
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5586;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5600"
    -DclassNum=57
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5600
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5600;
drop table if exists online_test_prob_m_5600;
create table online_test_m_5600 as select * from evaluation_public_kv where mall_id='m_5600';
PAI -name prediction
    -DinputTableName=online_test_m_5600
    -DmodelName=dropout_multi_model_m_5600
    -DoutputTableName=online_test_prob_m_5600
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5600;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5609"
    -DclassNum=57
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5609
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5609;
drop table if exists online_test_prob_m_5609;
create table online_test_m_5609 as select * from evaluation_public_kv where mall_id='m_5609';
PAI -name prediction
    -DinputTableName=online_test_m_5609
    -DmodelName=dropout_multi_model_m_5609
    -DoutputTableName=online_test_prob_m_5609
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5609;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5641"
    -DclassNum=41
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5641
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5641;
drop table if exists online_test_prob_m_5641;
create table online_test_m_5641 as select * from evaluation_public_kv where mall_id='m_5641';
PAI -name prediction
    -DinputTableName=online_test_m_5641
    -DmodelName=dropout_multi_model_m_5641
    -DoutputTableName=online_test_prob_m_5641
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5641;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5654"
    -DclassNum=44
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5654
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5654;
drop table if exists online_test_prob_m_5654;
create table online_test_m_5654 as select * from evaluation_public_kv where mall_id='m_5654';
PAI -name prediction
    -DinputTableName=online_test_m_5654
    -DmodelName=dropout_multi_model_m_5654
    -DoutputTableName=online_test_prob_m_5654
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5654;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5661"
    -DclassNum=58
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5661
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5661;
drop table if exists online_test_prob_m_5661;
create table online_test_m_5661 as select * from evaluation_public_kv where mall_id='m_5661';
PAI -name prediction
    -DinputTableName=online_test_m_5661
    -DmodelName=dropout_multi_model_m_5661
    -DoutputTableName=online_test_prob_m_5661
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5661;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5677"
    -DclassNum=45
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5677
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5677;
drop table if exists online_test_prob_m_5677;
create table online_test_m_5677 as select * from evaluation_public_kv where mall_id='m_5677';
PAI -name prediction
    -DinputTableName=online_test_m_5677
    -DmodelName=dropout_multi_model_m_5677
    -DoutputTableName=online_test_prob_m_5677
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5677;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5751"
    -DclassNum=53
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5751
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5751;
drop table if exists online_test_prob_m_5751;
create table online_test_m_5751 as select * from evaluation_public_kv where mall_id='m_5751';
PAI -name prediction
    -DinputTableName=online_test_m_5751
    -DmodelName=dropout_multi_model_m_5751
    -DoutputTableName=online_test_prob_m_5751
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5751;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5752"
    -DclassNum=62
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5752
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5752;
drop table if exists online_test_prob_m_5752;
create table online_test_m_5752 as select * from evaluation_public_kv where mall_id='m_5752';
PAI -name prediction
    -DinputTableName=online_test_m_5752
    -DmodelName=dropout_multi_model_m_5752
    -DoutputTableName=online_test_prob_m_5752
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5752;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5767"
    -DclassNum=86
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5767
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5767;
drop table if exists online_test_prob_m_5767;
create table online_test_m_5767 as select * from evaluation_public_kv where mall_id='m_5767';
PAI -name prediction
    -DinputTableName=online_test_m_5767
    -DmodelName=dropout_multi_model_m_5767
    -DoutputTableName=online_test_prob_m_5767
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5767;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5772"
    -DclassNum=62
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5772
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5772;
drop table if exists online_test_prob_m_5772;
create table online_test_m_5772 as select * from evaluation_public_kv where mall_id='m_5772';
PAI -name prediction
    -DinputTableName=online_test_m_5772
    -DmodelName=dropout_multi_model_m_5772
    -DoutputTableName=online_test_prob_m_5772
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5772;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5778"
    -DclassNum=48
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5778
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5778;
drop table if exists online_test_prob_m_5778;
create table online_test_m_5778 as select * from evaluation_public_kv where mall_id='m_5778';
PAI -name prediction
    -DinputTableName=online_test_m_5778
    -DmodelName=dropout_multi_model_m_5778
    -DoutputTableName=online_test_prob_m_5778
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5778;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5783"
    -DclassNum=52
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5783
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5783;
drop table if exists online_test_prob_m_5783;
create table online_test_m_5783 as select * from evaluation_public_kv where mall_id='m_5783';
PAI -name prediction
    -DinputTableName=online_test_m_5783
    -DmodelName=dropout_multi_model_m_5783
    -DoutputTableName=online_test_prob_m_5783
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5783;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5785"
    -DclassNum=38
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5785
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5785;
drop table if exists online_test_prob_m_5785;
create table online_test_m_5785 as select * from evaluation_public_kv where mall_id='m_5785';
PAI -name prediction
    -DinputTableName=online_test_m_5785
    -DmodelName=dropout_multi_model_m_5785
    -DoutputTableName=online_test_prob_m_5785
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5785;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5810"
    -DclassNum=76
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5810
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5810;
drop table if exists online_test_prob_m_5810;
create table online_test_m_5810 as select * from evaluation_public_kv where mall_id='m_5810';
PAI -name prediction
    -DinputTableName=online_test_m_5810
    -DmodelName=dropout_multi_model_m_5810
    -DoutputTableName=online_test_prob_m_5810
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5810;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5812"
    -DclassNum=50
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5812
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5812;
drop table if exists online_test_prob_m_5812;
create table online_test_m_5812 as select * from evaluation_public_kv where mall_id='m_5812';
PAI -name prediction
    -DinputTableName=online_test_m_5812
    -DmodelName=dropout_multi_model_m_5812
    -DoutputTableName=online_test_prob_m_5812
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5812;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5813"
    -DclassNum=50
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5813
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5813;
drop table if exists online_test_prob_m_5813;
create table online_test_m_5813 as select * from evaluation_public_kv where mall_id='m_5813';
PAI -name prediction
    -DinputTableName=online_test_m_5813
    -DmodelName=dropout_multi_model_m_5813
    -DoutputTableName=online_test_prob_m_5813
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5813;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5825"
    -DclassNum=90
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5825
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5825;
drop table if exists online_test_prob_m_5825;
create table online_test_m_5825 as select * from evaluation_public_kv where mall_id='m_5825';
PAI -name prediction
    -DinputTableName=online_test_m_5825
    -DmodelName=dropout_multi_model_m_5825
    -DoutputTableName=online_test_prob_m_5825
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5825;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5833"
    -DclassNum=46
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5833
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5833;
drop table if exists online_test_prob_m_5833;
create table online_test_m_5833 as select * from evaluation_public_kv where mall_id='m_5833';
PAI -name prediction
    -DinputTableName=online_test_m_5833
    -DmodelName=dropout_multi_model_m_5833
    -DoutputTableName=online_test_prob_m_5833
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5833;

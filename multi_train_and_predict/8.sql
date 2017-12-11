
PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3709"
    -DclassNum=53
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3709
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3709;
drop table if exists online_test_prob_m_3709;
create table online_test_m_3709 as select * from evaluation_public_kv where mall_id='m_3709';
PAI -name prediction
    -DinputTableName=online_test_m_3709
    -DmodelName=dropout_multi_model_m_3709
    -DoutputTableName=online_test_prob_m_3709
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3709;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3730"
    -DclassNum=44
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3730
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3730;
drop table if exists online_test_prob_m_3730;
create table online_test_m_3730 as select * from evaluation_public_kv where mall_id='m_3730';
PAI -name prediction
    -DinputTableName=online_test_m_3730
    -DmodelName=dropout_multi_model_m_3730
    -DoutputTableName=online_test_prob_m_3730
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3730;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3732"
    -DclassNum=54
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3732
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3732;
drop table if exists online_test_prob_m_3732;
create table online_test_m_3732 as select * from evaluation_public_kv where mall_id='m_3732';
PAI -name prediction
    -DinputTableName=online_test_m_3732
    -DmodelName=dropout_multi_model_m_3732
    -DoutputTableName=online_test_prob_m_3732
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3732;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3739"
    -DclassNum=89
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3739
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3739;
drop table if exists online_test_prob_m_3739;
create table online_test_m_3739 as select * from evaluation_public_kv where mall_id='m_3739';
PAI -name prediction
    -DinputTableName=online_test_m_3739
    -DmodelName=dropout_multi_model_m_3739
    -DoutputTableName=online_test_prob_m_3739
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3739;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3753"
    -DclassNum=39
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3753
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3753;
drop table if exists online_test_prob_m_3753;
create table online_test_m_3753 as select * from evaluation_public_kv where mall_id='m_3753';
PAI -name prediction
    -DinputTableName=online_test_m_3753
    -DmodelName=dropout_multi_model_m_3753
    -DoutputTableName=online_test_prob_m_3753
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3753;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3795"
    -DclassNum=60
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3795
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3795;
drop table if exists online_test_prob_m_3795;
create table online_test_m_3795 as select * from evaluation_public_kv where mall_id='m_3795';
PAI -name prediction
    -DinputTableName=online_test_m_3795
    -DmodelName=dropout_multi_model_m_3795
    -DoutputTableName=online_test_prob_m_3795
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3795;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3804"
    -DclassNum=58
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3804
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3804;
drop table if exists online_test_prob_m_3804;
create table online_test_m_3804 as select * from evaluation_public_kv where mall_id='m_3804';
PAI -name prediction
    -DinputTableName=online_test_m_3804
    -DmodelName=dropout_multi_model_m_3804
    -DoutputTableName=online_test_prob_m_3804
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3804;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3822"
    -DclassNum=55
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3822
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3822;
drop table if exists online_test_prob_m_3822;
create table online_test_m_3822 as select * from evaluation_public_kv where mall_id='m_3822';
PAI -name prediction
    -DinputTableName=online_test_m_3822
    -DmodelName=dropout_multi_model_m_3822
    -DoutputTableName=online_test_prob_m_3822
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3822;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3832"
    -DclassNum=105
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3832
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3832;
drop table if exists online_test_prob_m_3832;
create table online_test_m_3832 as select * from evaluation_public_kv where mall_id='m_3832';
PAI -name prediction
    -DinputTableName=online_test_m_3832
    -DmodelName=dropout_multi_model_m_3832
    -DoutputTableName=online_test_prob_m_3832
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3832;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3839"
    -DclassNum=89
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3839
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3839;
drop table if exists online_test_prob_m_3839;
create table online_test_m_3839 as select * from evaluation_public_kv where mall_id='m_3839';
PAI -name prediction
    -DinputTableName=online_test_m_3839
    -DmodelName=dropout_multi_model_m_3839
    -DoutputTableName=online_test_prob_m_3839
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3839;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3847"
    -DclassNum=82
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3847
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3847;
drop table if exists online_test_prob_m_3847;
create table online_test_m_3847 as select * from evaluation_public_kv where mall_id='m_3847';
PAI -name prediction
    -DinputTableName=online_test_m_3847
    -DmodelName=dropout_multi_model_m_3847
    -DoutputTableName=online_test_prob_m_3847
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3847;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3869"
    -DclassNum=29
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3869
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3869;
drop table if exists online_test_prob_m_3869;
create table online_test_m_3869 as select * from evaluation_public_kv where mall_id='m_3869';
PAI -name prediction
    -DinputTableName=online_test_m_3869
    -DmodelName=dropout_multi_model_m_3869
    -DoutputTableName=online_test_prob_m_3869
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3869;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3871"
    -DclassNum=131
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3871
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3871;
drop table if exists online_test_prob_m_3871;
create table online_test_m_3871 as select * from evaluation_public_kv where mall_id='m_3871';
PAI -name prediction
    -DinputTableName=online_test_m_3871
    -DmodelName=dropout_multi_model_m_3871
    -DoutputTableName=online_test_prob_m_3871
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3871;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3882"
    -DclassNum=45
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3882
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3882;
drop table if exists online_test_prob_m_3882;
create table online_test_m_3882 as select * from evaluation_public_kv where mall_id='m_3882';
PAI -name prediction
    -DinputTableName=online_test_m_3882
    -DmodelName=dropout_multi_model_m_3882
    -DoutputTableName=online_test_prob_m_3882
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3882;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3897"
    -DclassNum=87
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3897
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3897;
drop table if exists online_test_prob_m_3897;
create table online_test_m_3897 as select * from evaluation_public_kv where mall_id='m_3897';
PAI -name prediction
    -DinputTableName=online_test_m_3897
    -DmodelName=dropout_multi_model_m_3897
    -DoutputTableName=online_test_prob_m_3897
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3897;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3899"
    -DclassNum=64
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3899
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3899;
drop table if exists online_test_prob_m_3899;
create table online_test_m_3899 as select * from evaluation_public_kv where mall_id='m_3899';
PAI -name prediction
    -DinputTableName=online_test_m_3899
    -DmodelName=dropout_multi_model_m_3899
    -DoutputTableName=online_test_prob_m_3899
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3899;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3916"
    -DclassNum=74
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3916
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3916;
drop table if exists online_test_prob_m_3916;
create table online_test_m_3916 as select * from evaluation_public_kv where mall_id='m_3916';
PAI -name prediction
    -DinputTableName=online_test_m_3916
    -DmodelName=dropout_multi_model_m_3916
    -DoutputTableName=online_test_prob_m_3916
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3916;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3936"
    -DclassNum=52
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3936
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3936;
drop table if exists online_test_prob_m_3936;
create table online_test_m_3936 as select * from evaluation_public_kv where mall_id='m_3936';
PAI -name prediction
    -DinputTableName=online_test_m_3936
    -DmodelName=dropout_multi_model_m_3936
    -DoutputTableName=online_test_prob_m_3936
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3936;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_3938"
    -DclassNum=36
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_3938
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_3938;
drop table if exists online_test_prob_m_3938;
create table online_test_m_3938 as select * from evaluation_public_kv where mall_id='m_3938';
PAI -name prediction
    -DinputTableName=online_test_m_3938
    -DmodelName=dropout_multi_model_m_3938
    -DoutputTableName=online_test_prob_m_3938
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_3938;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4005"
    -DclassNum=47
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4005
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4005;
drop table if exists online_test_prob_m_4005;
create table online_test_m_4005 as select * from evaluation_public_kv where mall_id='m_4005';
PAI -name prediction
    -DinputTableName=online_test_m_4005
    -DmodelName=dropout_multi_model_m_4005
    -DoutputTableName=online_test_prob_m_4005
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4005;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4011"
    -DclassNum=66
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4011
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4011;
drop table if exists online_test_prob_m_4011;
create table online_test_m_4011 as select * from evaluation_public_kv where mall_id='m_4011';
PAI -name prediction
    -DinputTableName=online_test_m_4011
    -DmodelName=dropout_multi_model_m_4011
    -DoutputTableName=online_test_prob_m_4011
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4011;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4033"
    -DclassNum=91
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4033
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4033;
drop table if exists online_test_prob_m_4033;
create table online_test_m_4033 as select * from evaluation_public_kv where mall_id='m_4033';
PAI -name prediction
    -DinputTableName=online_test_m_4033
    -DmodelName=dropout_multi_model_m_4033
    -DoutputTableName=online_test_prob_m_4033
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4033;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_4036"
    -DclassNum=37
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_4036
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_4036;
drop table if exists online_test_prob_m_4036;
create table online_test_m_4036 as select * from evaluation_public_kv where mall_id='m_4036';
PAI -name prediction
    -DinputTableName=online_test_m_4036
    -DmodelName=dropout_multi_model_m_4036
    -DoutputTableName=online_test_prob_m_4036
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_4036;

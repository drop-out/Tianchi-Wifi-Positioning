
PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_786"
    -DclassNum=52
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_786
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_786;
drop table if exists online_test_prob_m_786;
create table online_test_m_786 as select * from evaluation_public_kv where mall_id='m_786';
PAI -name prediction
    -DinputTableName=online_test_m_786
    -DmodelName=dropout_multi_model_m_786
    -DoutputTableName=online_test_prob_m_786
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_786;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7867"
    -DclassNum=39
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7867
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7867;
drop table if exists online_test_prob_m_7867;
create table online_test_m_7867 as select * from evaluation_public_kv where mall_id='m_7867';
PAI -name prediction
    -DinputTableName=online_test_m_7867
    -DmodelName=dropout_multi_model_m_7867
    -DoutputTableName=online_test_prob_m_7867
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7867;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7868"
    -DclassNum=30
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7868
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7868;
drop table if exists online_test_prob_m_7868;
create table online_test_m_7868 as select * from evaluation_public_kv where mall_id='m_7868';
PAI -name prediction
    -DinputTableName=online_test_m_7868
    -DmodelName=dropout_multi_model_m_7868
    -DoutputTableName=online_test_prob_m_7868
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7868;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7870"
    -DclassNum=67
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7870
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7870;
drop table if exists online_test_prob_m_7870;
create table online_test_m_7870 as select * from evaluation_public_kv where mall_id='m_7870';
PAI -name prediction
    -DinputTableName=online_test_m_7870
    -DmodelName=dropout_multi_model_m_7870
    -DoutputTableName=online_test_prob_m_7870
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7870;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7899"
    -DclassNum=62
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7899
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7899;
drop table if exists online_test_prob_m_7899;
create table online_test_m_7899 as select * from evaluation_public_kv where mall_id='m_7899';
PAI -name prediction
    -DinputTableName=online_test_m_7899
    -DmodelName=dropout_multi_model_m_7899
    -DoutputTableName=online_test_prob_m_7899
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7899;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7939"
    -DclassNum=45
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7939
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7939;
drop table if exists online_test_prob_m_7939;
create table online_test_m_7939 as select * from evaluation_public_kv where mall_id='m_7939';
PAI -name prediction
    -DinputTableName=online_test_m_7939
    -DmodelName=dropout_multi_model_m_7939
    -DoutputTableName=online_test_prob_m_7939
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7939;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7942"
    -DclassNum=57
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7942
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7942;
drop table if exists online_test_prob_m_7942;
create table online_test_m_7942 as select * from evaluation_public_kv where mall_id='m_7942';
PAI -name prediction
    -DinputTableName=online_test_m_7942
    -DmodelName=dropout_multi_model_m_7942
    -DoutputTableName=online_test_prob_m_7942
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7942;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7953"
    -DclassNum=55
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7953
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7953;
drop table if exists online_test_prob_m_7953;
create table online_test_m_7953 as select * from evaluation_public_kv where mall_id='m_7953';
PAI -name prediction
    -DinputTableName=online_test_m_7953
    -DmodelName=dropout_multi_model_m_7953
    -DoutputTableName=online_test_prob_m_7953
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7953;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7954"
    -DclassNum=44
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7954
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7954;
drop table if exists online_test_prob_m_7954;
create table online_test_m_7954 as select * from evaluation_public_kv where mall_id='m_7954';
PAI -name prediction
    -DinputTableName=online_test_m_7954
    -DmodelName=dropout_multi_model_m_7954
    -DoutputTableName=online_test_prob_m_7954
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7954;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_796"
    -DclassNum=59
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_796
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_796;
drop table if exists online_test_prob_m_796;
create table online_test_m_796 as select * from evaluation_public_kv where mall_id='m_796';
PAI -name prediction
    -DinputTableName=online_test_m_796
    -DmodelName=dropout_multi_model_m_796
    -DoutputTableName=online_test_prob_m_796
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_796;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7973"
    -DclassNum=102
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7973
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7973;
drop table if exists online_test_prob_m_7973;
create table online_test_m_7973 as select * from evaluation_public_kv where mall_id='m_7973';
PAI -name prediction
    -DinputTableName=online_test_m_7973
    -DmodelName=dropout_multi_model_m_7973
    -DoutputTableName=online_test_prob_m_7973
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7973;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7976"
    -DclassNum=77
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7976
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7976;
drop table if exists online_test_prob_m_7976;
create table online_test_m_7976 as select * from evaluation_public_kv where mall_id='m_7976';
PAI -name prediction
    -DinputTableName=online_test_m_7976
    -DmodelName=dropout_multi_model_m_7976
    -DoutputTableName=online_test_prob_m_7976
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7976;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7994"
    -DclassNum=73
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7994
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7994;
drop table if exists online_test_prob_m_7994;
create table online_test_m_7994 as select * from evaluation_public_kv where mall_id='m_7994';
PAI -name prediction
    -DinputTableName=online_test_m_7994
    -DmodelName=dropout_multi_model_m_7994
    -DoutputTableName=online_test_prob_m_7994
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7994;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7997"
    -DclassNum=52
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7997
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7997;
drop table if exists online_test_prob_m_7997;
create table online_test_m_7997 as select * from evaluation_public_kv where mall_id='m_7997';
PAI -name prediction
    -DinputTableName=online_test_m_7997
    -DmodelName=dropout_multi_model_m_7997
    -DoutputTableName=online_test_prob_m_7997
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7997;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_7998"
    -DclassNum=25
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_7998
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_7998;
drop table if exists online_test_prob_m_7998;
create table online_test_m_7998 as select * from evaluation_public_kv where mall_id='m_7998';
PAI -name prediction
    -DinputTableName=online_test_m_7998
    -DmodelName=dropout_multi_model_m_7998
    -DoutputTableName=online_test_prob_m_7998
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_7998;


PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8688"
    -DclassNum=45
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8688
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8688;
drop table if exists online_test_prob_m_8688;
create table online_test_m_8688 as select * from evaluation_public_kv where mall_id='m_8688';
PAI -name prediction
    -DinputTableName=online_test_m_8688
    -DmodelName=dropout_multi_model_m_8688
    -DoutputTableName=online_test_prob_m_8688
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8688;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8835"
    -DclassNum=73
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8835
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8835;
drop table if exists online_test_prob_m_8835;
create table online_test_m_8835 as select * from evaluation_public_kv where mall_id='m_8835';
PAI -name prediction
    -DinputTableName=online_test_m_8835
    -DmodelName=dropout_multi_model_m_8835
    -DoutputTableName=online_test_prob_m_8835
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8835;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8853"
    -DclassNum=48
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8853
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8853;
drop table if exists online_test_prob_m_8853;
create table online_test_m_8853 as select * from evaluation_public_kv where mall_id='m_8853';
PAI -name prediction
    -DinputTableName=online_test_m_8853
    -DmodelName=dropout_multi_model_m_8853
    -DoutputTableName=online_test_prob_m_8853
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8853;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8893"
    -DclassNum=48
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8893
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8893;
drop table if exists online_test_prob_m_8893;
create table online_test_m_8893 as select * from evaluation_public_kv where mall_id='m_8893';
PAI -name prediction
    -DinputTableName=online_test_m_8893
    -DmodelName=dropout_multi_model_m_8893
    -DoutputTableName=online_test_prob_m_8893
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8893;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8907"
    -DclassNum=57
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8907
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8907;
drop table if exists online_test_prob_m_8907;
create table online_test_m_8907 as select * from evaluation_public_kv where mall_id='m_8907';
PAI -name prediction
    -DinputTableName=online_test_m_8907
    -DmodelName=dropout_multi_model_m_8907
    -DoutputTableName=online_test_prob_m_8907
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8907;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8908"
    -DclassNum=27
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8908
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8908;
drop table if exists online_test_prob_m_8908;
create table online_test_m_8908 as select * from evaluation_public_kv where mall_id='m_8908';
PAI -name prediction
    -DinputTableName=online_test_m_8908
    -DmodelName=dropout_multi_model_m_8908
    -DoutputTableName=online_test_prob_m_8908
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8908;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8910"
    -DclassNum=43
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8910
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8910;
drop table if exists online_test_prob_m_8910;
create table online_test_m_8910 as select * from evaluation_public_kv where mall_id='m_8910';
PAI -name prediction
    -DinputTableName=online_test_m_8910
    -DmodelName=dropout_multi_model_m_8910
    -DoutputTableName=online_test_prob_m_8910
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8910;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8960"
    -DclassNum=40
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8960
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8960;
drop table if exists online_test_prob_m_8960;
create table online_test_m_8960 as select * from evaluation_public_kv where mall_id='m_8960';
PAI -name prediction
    -DinputTableName=online_test_m_8960
    -DmodelName=dropout_multi_model_m_8960
    -DoutputTableName=online_test_prob_m_8960
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8960;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8974"
    -DclassNum=34
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8974
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8974;
drop table if exists online_test_prob_m_8974;
create table online_test_m_8974 as select * from evaluation_public_kv where mall_id='m_8974';
PAI -name prediction
    -DinputTableName=online_test_m_8974
    -DmodelName=dropout_multi_model_m_8974
    -DoutputTableName=online_test_prob_m_8974
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8974;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8980"
    -DclassNum=42
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8980
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8980;
drop table if exists online_test_prob_m_8980;
create table online_test_m_8980 as select * from evaluation_public_kv where mall_id='m_8980';
PAI -name prediction
    -DinputTableName=online_test_m_8980
    -DmodelName=dropout_multi_model_m_8980
    -DoutputTableName=online_test_prob_m_8980
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8980;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_8991"
    -DclassNum=36
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_8991
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_8991;
drop table if exists online_test_prob_m_8991;
create table online_test_m_8991 as select * from evaluation_public_kv where mall_id='m_8991';
PAI -name prediction
    -DinputTableName=online_test_m_8991
    -DmodelName=dropout_multi_model_m_8991
    -DoutputTableName=online_test_prob_m_8991
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_8991;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_9007"
    -DclassNum=37
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_9007
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_9007;
drop table if exists online_test_prob_m_9007;
create table online_test_m_9007 as select * from evaluation_public_kv where mall_id='m_9007';
PAI -name prediction
    -DinputTableName=online_test_m_9007
    -DmodelName=dropout_multi_model_m_9007
    -DoutputTableName=online_test_prob_m_9007
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_9007;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_9047"
    -DclassNum=72
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_9047
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_9047;
drop table if exists online_test_prob_m_9047;
create table online_test_m_9047 as select * from evaluation_public_kv where mall_id='m_9047';
PAI -name prediction
    -DinputTableName=online_test_m_9047
    -DmodelName=dropout_multi_model_m_9047
    -DoutputTableName=online_test_prob_m_9047
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_9047;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_9051"
    -DclassNum=58
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_9051
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_9051;
drop table if exists online_test_prob_m_9051;
create table online_test_m_9051 as select * from evaluation_public_kv where mall_id='m_9051';
PAI -name prediction
    -DinputTableName=online_test_m_9051
    -DmodelName=dropout_multi_model_m_9051
    -DoutputTableName=online_test_prob_m_9051
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_9051;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_9054"
    -DclassNum=79
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_9054
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_9054;
drop table if exists online_test_prob_m_9054;
create table online_test_m_9054 as select * from evaluation_public_kv where mall_id='m_9054';
PAI -name prediction
    -DinputTableName=online_test_m_9054
    -DmodelName=dropout_multi_model_m_9054
    -DoutputTableName=online_test_prob_m_9054
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_9054;

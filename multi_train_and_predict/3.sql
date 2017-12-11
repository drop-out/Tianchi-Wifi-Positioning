
PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1791"
    -DclassNum=48
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1791
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1791;
drop table if exists online_test_prob_m_1791;
create table online_test_m_1791 as select * from evaluation_public_kv where mall_id='m_1791';
PAI -name prediction
    -DinputTableName=online_test_m_1791
    -DmodelName=dropout_multi_model_m_1791
    -DoutputTableName=online_test_prob_m_1791
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1791;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1807"
    -DclassNum=68
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1807
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1807;
drop table if exists online_test_prob_m_1807;
create table online_test_m_1807 as select * from evaluation_public_kv where mall_id='m_1807';
PAI -name prediction
    -DinputTableName=online_test_m_1807
    -DmodelName=dropout_multi_model_m_1807
    -DoutputTableName=online_test_prob_m_1807
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1807;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1893"
    -DclassNum=76
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1893
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1893;
drop table if exists online_test_prob_m_1893;
create table online_test_m_1893 as select * from evaluation_public_kv where mall_id='m_1893';
PAI -name prediction
    -DinputTableName=online_test_m_1893
    -DmodelName=dropout_multi_model_m_1893
    -DoutputTableName=online_test_prob_m_1893
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1893;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1905"
    -DclassNum=9
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1905
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1905;
drop table if exists online_test_prob_m_1905;
create table online_test_m_1905 as select * from evaluation_public_kv where mall_id='m_1905';
PAI -name prediction
    -DinputTableName=online_test_m_1905
    -DmodelName=dropout_multi_model_m_1905
    -DoutputTableName=online_test_prob_m_1905
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1905;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1906"
    -DclassNum=29
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1906
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1906;
drop table if exists online_test_prob_m_1906;
create table online_test_m_1906 as select * from evaluation_public_kv where mall_id='m_1906';
PAI -name prediction
    -DinputTableName=online_test_m_1906
    -DmodelName=dropout_multi_model_m_1906
    -DoutputTableName=online_test_prob_m_1906
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1906;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1910"
    -DclassNum=32
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1910
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1910;
drop table if exists online_test_prob_m_1910;
create table online_test_m_1910 as select * from evaluation_public_kv where mall_id='m_1910';
PAI -name prediction
    -DinputTableName=online_test_m_1910
    -DmodelName=dropout_multi_model_m_1910
    -DoutputTableName=online_test_prob_m_1910
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1910;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1913"
    -DclassNum=42
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1913
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1913;
drop table if exists online_test_prob_m_1913;
create table online_test_m_1913 as select * from evaluation_public_kv where mall_id='m_1913';
PAI -name prediction
    -DinputTableName=online_test_m_1913
    -DmodelName=dropout_multi_model_m_1913
    -DoutputTableName=online_test_prob_m_1913
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1913;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1919"
    -DclassNum=63
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1919
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1919;
drop table if exists online_test_prob_m_1919;
create table online_test_m_1919 as select * from evaluation_public_kv where mall_id='m_1919';
PAI -name prediction
    -DinputTableName=online_test_m_1919
    -DmodelName=dropout_multi_model_m_1919
    -DoutputTableName=online_test_prob_m_1919
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1919;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1920"
    -DclassNum=77
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1920
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1920;
drop table if exists online_test_prob_m_1920;
create table online_test_m_1920 as select * from evaluation_public_kv where mall_id='m_1920';
PAI -name prediction
    -DinputTableName=online_test_m_1920
    -DmodelName=dropout_multi_model_m_1920
    -DoutputTableName=online_test_prob_m_1920
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1920;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1928"
    -DclassNum=50
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1928
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1928;
drop table if exists online_test_prob_m_1928;
create table online_test_m_1928 as select * from evaluation_public_kv where mall_id='m_1928';
PAI -name prediction
    -DinputTableName=online_test_m_1928
    -DmodelName=dropout_multi_model_m_1928
    -DoutputTableName=online_test_prob_m_1928
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1928;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1936"
    -DclassNum=76
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1936
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1936;
drop table if exists online_test_prob_m_1936;
create table online_test_m_1936 as select * from evaluation_public_kv where mall_id='m_1936';
PAI -name prediction
    -DinputTableName=online_test_m_1936
    -DmodelName=dropout_multi_model_m_1936
    -DoutputTableName=online_test_prob_m_1936
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1936;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1943"
    -DclassNum=60
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1943
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1943;
drop table if exists online_test_prob_m_1943;
create table online_test_m_1943 as select * from evaluation_public_kv where mall_id='m_1943';
PAI -name prediction
    -DinputTableName=online_test_m_1943
    -DmodelName=dropout_multi_model_m_1943
    -DoutputTableName=online_test_prob_m_1943
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1943;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1950"
    -DclassNum=138
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1950
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1950;
drop table if exists online_test_prob_m_1950;
create table online_test_m_1950 as select * from evaluation_public_kv where mall_id='m_1950';
PAI -name prediction
    -DinputTableName=online_test_m_1950
    -DmodelName=dropout_multi_model_m_1950
    -DoutputTableName=online_test_prob_m_1950
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1950;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1960"
    -DclassNum=12
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1960
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1960;
drop table if exists online_test_prob_m_1960;
create table online_test_m_1960 as select * from evaluation_public_kv where mall_id='m_1960';
PAI -name prediction
    -DinputTableName=online_test_m_1960
    -DmodelName=dropout_multi_model_m_1960
    -DoutputTableName=online_test_prob_m_1960
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1960;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1962"
    -DclassNum=54
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1962
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1962;
drop table if exists online_test_prob_m_1962;
create table online_test_m_1962 as select * from evaluation_public_kv where mall_id='m_1962';
PAI -name prediction
    -DinputTableName=online_test_m_1962
    -DmodelName=dropout_multi_model_m_1962
    -DoutputTableName=online_test_prob_m_1962
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1962;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1968"
    -DclassNum=57
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1968
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1968;
drop table if exists online_test_prob_m_1968;
create table online_test_m_1968 as select * from evaluation_public_kv where mall_id='m_1968';
PAI -name prediction
    -DinputTableName=online_test_m_1968
    -DmodelName=dropout_multi_model_m_1968
    -DoutputTableName=online_test_prob_m_1968
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1968;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1990"
    -DclassNum=56
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1990
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1990;
drop table if exists online_test_prob_m_1990;
create table online_test_m_1990 as select * from evaluation_public_kv where mall_id='m_1990';
PAI -name prediction
    -DinputTableName=online_test_m_1990
    -DmodelName=dropout_multi_model_m_1990
    -DoutputTableName=online_test_prob_m_1990
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1990;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1993"
    -DclassNum=49
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1993
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1993;
drop table if exists online_test_prob_m_1993;
create table online_test_m_1993 as select * from evaluation_public_kv where mall_id='m_1993';
PAI -name prediction
    -DinputTableName=online_test_m_1993
    -DmodelName=dropout_multi_model_m_1993
    -DoutputTableName=online_test_prob_m_1993
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1993;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_1997"
    -DclassNum=65
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_1997
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_1997;
drop table if exists online_test_prob_m_1997;
create table online_test_m_1997 as select * from evaluation_public_kv where mall_id='m_1997';
PAI -name prediction
    -DinputTableName=online_test_m_1997
    -DmodelName=dropout_multi_model_m_1997
    -DoutputTableName=online_test_prob_m_1997
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_1997;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2005"
    -DclassNum=57
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2005
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2005;
drop table if exists online_test_prob_m_2005;
create table online_test_m_2005 as select * from evaluation_public_kv where mall_id='m_2005';
PAI -name prediction
    -DinputTableName=online_test_m_2005
    -DmodelName=dropout_multi_model_m_2005
    -DoutputTableName=online_test_prob_m_2005
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2005;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2009"
    -DclassNum=75
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2009
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2009;
drop table if exists online_test_prob_m_2009;
create table online_test_m_2009 as select * from evaluation_public_kv where mall_id='m_2009';
PAI -name prediction
    -DinputTableName=online_test_m_2009
    -DmodelName=dropout_multi_model_m_2009
    -DoutputTableName=online_test_prob_m_2009
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2009;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2011"
    -DclassNum=47
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2011
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2011;
drop table if exists online_test_prob_m_2011;
create table online_test_m_2011 as select * from evaluation_public_kv where mall_id='m_2011';
PAI -name prediction
    -DinputTableName=online_test_m_2011
    -DmodelName=dropout_multi_model_m_2011
    -DoutputTableName=online_test_prob_m_2011
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2011;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2021"
    -DclassNum=58
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2021
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2021;
drop table if exists online_test_prob_m_2021;
create table online_test_m_2021 as select * from evaluation_public_kv where mall_id='m_2021';
PAI -name prediction
    -DinputTableName=online_test_m_2021
    -DmodelName=dropout_multi_model_m_2021
    -DoutputTableName=online_test_prob_m_2021
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2021;

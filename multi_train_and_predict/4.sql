
PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2030"
    -DclassNum=33
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2030
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2030;
drop table if exists online_test_prob_m_2030;
create table online_test_m_2030 as select * from evaluation_public_kv where mall_id='m_2030';
PAI -name prediction
    -DinputTableName=online_test_m_2030
    -DmodelName=dropout_multi_model_m_2030
    -DoutputTableName=online_test_prob_m_2030
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2030;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2058"
    -DclassNum=52
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2058
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2058;
drop table if exists online_test_prob_m_2058;
create table online_test_m_2058 as select * from evaluation_public_kv where mall_id='m_2058';
PAI -name prediction
    -DinputTableName=online_test_m_2058
    -DmodelName=dropout_multi_model_m_2058
    -DoutputTableName=online_test_prob_m_2058
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2058;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2060"
    -DclassNum=33
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2060
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2060;
drop table if exists online_test_prob_m_2060;
create table online_test_m_2060 as select * from evaluation_public_kv where mall_id='m_2060';
PAI -name prediction
    -DinputTableName=online_test_m_2060
    -DmodelName=dropout_multi_model_m_2060
    -DoutputTableName=online_test_prob_m_2060
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2060;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2087"
    -DclassNum=42
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2087
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2087;
drop table if exists online_test_prob_m_2087;
create table online_test_m_2087 as select * from evaluation_public_kv where mall_id='m_2087';
PAI -name prediction
    -DinputTableName=online_test_m_2087
    -DmodelName=dropout_multi_model_m_2087
    -DoutputTableName=online_test_prob_m_2087
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2087;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2092"
    -DclassNum=75
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2092
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2092;
drop table if exists online_test_prob_m_2092;
create table online_test_m_2092 as select * from evaluation_public_kv where mall_id='m_2092';
PAI -name prediction
    -DinputTableName=online_test_m_2092
    -DmodelName=dropout_multi_model_m_2092
    -DoutputTableName=online_test_prob_m_2092
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2092;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2093"
    -DclassNum=56
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2093
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2093;
drop table if exists online_test_prob_m_2093;
create table online_test_m_2093 as select * from evaluation_public_kv where mall_id='m_2093';
PAI -name prediction
    -DinputTableName=online_test_m_2093
    -DmodelName=dropout_multi_model_m_2093
    -DoutputTableName=online_test_prob_m_2093
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2093;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2097"
    -DclassNum=44
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2097
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2097;
drop table if exists online_test_prob_m_2097;
create table online_test_m_2097 as select * from evaluation_public_kv where mall_id='m_2097';
PAI -name prediction
    -DinputTableName=online_test_m_2097
    -DmodelName=dropout_multi_model_m_2097
    -DoutputTableName=online_test_prob_m_2097
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2097;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2108"
    -DclassNum=67
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2108
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2108;
drop table if exists online_test_prob_m_2108;
create table online_test_m_2108 as select * from evaluation_public_kv where mall_id='m_2108';
PAI -name prediction
    -DinputTableName=online_test_m_2108
    -DmodelName=dropout_multi_model_m_2108
    -DoutputTableName=online_test_prob_m_2108
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2108;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2123"
    -DclassNum=87
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2123
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2123;
drop table if exists online_test_prob_m_2123;
create table online_test_m_2123 as select * from evaluation_public_kv where mall_id='m_2123';
PAI -name prediction
    -DinputTableName=online_test_m_2123
    -DmodelName=dropout_multi_model_m_2123
    -DoutputTableName=online_test_prob_m_2123
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2123;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2156"
    -DclassNum=55
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2156
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2156;
drop table if exists online_test_prob_m_2156;
create table online_test_m_2156 as select * from evaluation_public_kv where mall_id='m_2156';
PAI -name prediction
    -DinputTableName=online_test_m_2156
    -DmodelName=dropout_multi_model_m_2156
    -DoutputTableName=online_test_prob_m_2156
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2156;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2177"
    -DclassNum=40
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2177
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2177;
drop table if exists online_test_prob_m_2177;
create table online_test_m_2177 as select * from evaluation_public_kv where mall_id='m_2177';
PAI -name prediction
    -DinputTableName=online_test_m_2177
    -DmodelName=dropout_multi_model_m_2177
    -DoutputTableName=online_test_prob_m_2177
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2177;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2182"
    -DclassNum=94
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2182
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2182;
drop table if exists online_test_prob_m_2182;
create table online_test_m_2182 as select * from evaluation_public_kv where mall_id='m_2182';
PAI -name prediction
    -DinputTableName=online_test_m_2182
    -DmodelName=dropout_multi_model_m_2182
    -DoutputTableName=online_test_prob_m_2182
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2182;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2218"
    -DclassNum=51
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2218
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2218;
drop table if exists online_test_prob_m_2218;
create table online_test_m_2218 as select * from evaluation_public_kv where mall_id='m_2218';
PAI -name prediction
    -DinputTableName=online_test_m_2218
    -DmodelName=dropout_multi_model_m_2218
    -DoutputTableName=online_test_prob_m_2218
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2218;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2224"
    -DclassNum=250
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2224
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2224;
drop table if exists online_test_prob_m_2224;
create table online_test_m_2224 as select * from evaluation_public_kv where mall_id='m_2224';
PAI -name prediction
    -DinputTableName=online_test_m_2224
    -DmodelName=dropout_multi_model_m_2224
    -DoutputTableName=online_test_prob_m_2224
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2224;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2230"
    -DclassNum=60
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2230
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2230;
drop table if exists online_test_prob_m_2230;
create table online_test_m_2230 as select * from evaluation_public_kv where mall_id='m_2230';
PAI -name prediction
    -DinputTableName=online_test_m_2230
    -DmodelName=dropout_multi_model_m_2230
    -DoutputTableName=online_test_prob_m_2230
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2230;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2257"
    -DclassNum=61
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2257
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2257;
drop table if exists online_test_prob_m_2257;
create table online_test_m_2257 as select * from evaluation_public_kv where mall_id='m_2257';
PAI -name prediction
    -DinputTableName=online_test_m_2257
    -DmodelName=dropout_multi_model_m_2257
    -DoutputTableName=online_test_prob_m_2257
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2257;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2267"
    -DclassNum=116
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2267
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2267;
drop table if exists online_test_prob_m_2267;
create table online_test_m_2267 as select * from evaluation_public_kv where mall_id='m_2267';
PAI -name prediction
    -DinputTableName=online_test_m_2267
    -DmodelName=dropout_multi_model_m_2267
    -DoutputTableName=online_test_prob_m_2267
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2267;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2270"
    -DclassNum=76
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2270
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2270;
drop table if exists online_test_prob_m_2270;
create table online_test_m_2270 as select * from evaluation_public_kv where mall_id='m_2270';
PAI -name prediction
    -DinputTableName=online_test_m_2270
    -DmodelName=dropout_multi_model_m_2270
    -DoutputTableName=online_test_prob_m_2270
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2270;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2299"
    -DclassNum=20
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2299
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2299;
drop table if exists online_test_prob_m_2299;
create table online_test_m_2299 as select * from evaluation_public_kv where mall_id='m_2299';
PAI -name prediction
    -DinputTableName=online_test_m_2299
    -DmodelName=dropout_multi_model_m_2299
    -DoutputTableName=online_test_prob_m_2299
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2299;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2307"
    -DclassNum=52
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2307
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2307;
drop table if exists online_test_prob_m_2307;
create table online_test_m_2307 as select * from evaluation_public_kv where mall_id='m_2307';
PAI -name prediction
    -DinputTableName=online_test_m_2307
    -DmodelName=dropout_multi_model_m_2307
    -DoutputTableName=online_test_prob_m_2307
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2307;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2324"
    -DclassNum=63
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2324
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2324;
drop table if exists online_test_prob_m_2324;
create table online_test_m_2324 as select * from evaluation_public_kv where mall_id='m_2324';
PAI -name prediction
    -DinputTableName=online_test_m_2324
    -DmodelName=dropout_multi_model_m_2324
    -DoutputTableName=online_test_prob_m_2324
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2324;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2333"
    -DclassNum=95
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2333
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2333;
drop table if exists online_test_prob_m_2333;
create table online_test_m_2333 as select * from evaluation_public_kv where mall_id='m_2333';
PAI -name prediction
    -DinputTableName=online_test_m_2333
    -DmodelName=dropout_multi_model_m_2333
    -DoutputTableName=online_test_prob_m_2333
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2333;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_2334"
    -DclassNum=75
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_2334
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_2334;
drop table if exists online_test_prob_m_2334;
create table online_test_m_2334 as select * from evaluation_public_kv where mall_id='m_2334';
PAI -name prediction
    -DinputTableName=online_test_m_2334
    -DmodelName=dropout_multi_model_m_2334
    -DoutputTableName=online_test_prob_m_2334
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_2334;

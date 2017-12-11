--这一份格外慢
PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5845"
    -DclassNum=62
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5845
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5845;
drop table if exists online_test_prob_m_5845;
create table online_test_m_5845 as select * from evaluation_public_kv where mall_id='m_5845';
PAI -name prediction
    -DinputTableName=online_test_m_5845
    -DmodelName=dropout_multi_model_m_5845
    -DoutputTableName=online_test_prob_m_5845
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5845;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5847"
    -DclassNum=48
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5847
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5847;
drop table if exists online_test_prob_m_5847;
create table online_test_m_5847 as select * from evaluation_public_kv where mall_id='m_5847';
PAI -name prediction
    -DinputTableName=online_test_m_5847
    -DmodelName=dropout_multi_model_m_5847
    -DoutputTableName=online_test_prob_m_5847
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5847;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5892"
    -DclassNum=117
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5892
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5892;
drop table if exists online_test_prob_m_5892;
create table online_test_m_5892 as select * from evaluation_public_kv where mall_id='m_5892';
PAI -name prediction
    -DinputTableName=online_test_m_5892
    -DmodelName=dropout_multi_model_m_5892
    -DoutputTableName=online_test_prob_m_5892
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5892;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5946"
    -DclassNum=54
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5946
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5946;
drop table if exists online_test_prob_m_5946;
create table online_test_m_5946 as select * from evaluation_public_kv where mall_id='m_5946';
PAI -name prediction
    -DinputTableName=online_test_m_5946
    -DmodelName=dropout_multi_model_m_5946
    -DoutputTableName=online_test_prob_m_5946
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5946;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_5958"
    -DclassNum=87
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_5958
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_5958;
drop table if exists online_test_prob_m_5958;
create table online_test_m_5958 as select * from evaluation_public_kv where mall_id='m_5958';
PAI -name prediction
    -DinputTableName=online_test_m_5958
    -DmodelName=dropout_multi_model_m_5958
    -DoutputTableName=online_test_prob_m_5958
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_5958;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_6065"
    -DclassNum=42
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_6065
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_6065;
drop table if exists online_test_prob_m_6065;
create table online_test_m_6065 as select * from evaluation_public_kv where mall_id='m_6065';
PAI -name prediction
    -DinputTableName=online_test_m_6065
    -DmodelName=dropout_multi_model_m_6065
    -DoutputTableName=online_test_prob_m_6065
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_6065;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_613"
    -DclassNum=80
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_613
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_613;
drop table if exists online_test_prob_m_613;
create table online_test_m_613 as select * from evaluation_public_kv where mall_id='m_613';
PAI -name prediction
    -DinputTableName=online_test_m_613
    -DmodelName=dropout_multi_model_m_613
    -DoutputTableName=online_test_prob_m_613
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_613;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_614"
    -DclassNum=55
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_614
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_614;
drop table if exists online_test_prob_m_614;
create table online_test_m_614 as select * from evaluation_public_kv where mall_id='m_614';
PAI -name prediction
    -DinputTableName=online_test_m_614
    -DmodelName=dropout_multi_model_m_614
    -DoutputTableName=online_test_prob_m_614
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_614;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_6141"
    -DclassNum=26
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_6141
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_6141;
drop table if exists online_test_prob_m_6141;
create table online_test_m_6141 as select * from evaluation_public_kv where mall_id='m_6141';
PAI -name prediction
    -DinputTableName=online_test_m_6141
    -DmodelName=dropout_multi_model_m_6141
    -DoutputTableName=online_test_prob_m_6141
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_6141;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_615"
    -DclassNum=85
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_615
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_615;
drop table if exists online_test_prob_m_615;
create table online_test_m_615 as select * from evaluation_public_kv where mall_id='m_615';
PAI -name prediction
    -DinputTableName=online_test_m_615
    -DmodelName=dropout_multi_model_m_615
    -DoutputTableName=online_test_prob_m_615
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_615;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_616"
    -DclassNum=46
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_616
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_616;
drop table if exists online_test_prob_m_616;
create table online_test_m_616 as select * from evaluation_public_kv where mall_id='m_616';
PAI -name prediction
    -DinputTableName=online_test_m_616
    -DmodelName=dropout_multi_model_m_616
    -DoutputTableName=online_test_prob_m_616
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_616;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_6167"
    -DclassNum=138
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_6167
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_6167;
drop table if exists online_test_prob_m_6167;
create table online_test_m_6167 as select * from evaluation_public_kv where mall_id='m_6167';
PAI -name prediction
    -DinputTableName=online_test_m_6167
    -DmodelName=dropout_multi_model_m_6167
    -DoutputTableName=online_test_prob_m_6167
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_6167;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_617"
    -DclassNum=61
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_617
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_617;
drop table if exists online_test_prob_m_617;
create table online_test_m_617 as select * from evaluation_public_kv where mall_id='m_617';
PAI -name prediction
    -DinputTableName=online_test_m_617
    -DmodelName=dropout_multi_model_m_617
    -DoutputTableName=online_test_prob_m_617
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_617;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_618"
    -DclassNum=67
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_618
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_618;
drop table if exists online_test_prob_m_618;
create table online_test_m_618 as select * from evaluation_public_kv where mall_id='m_618';
PAI -name prediction
    -DinputTableName=online_test_m_618
    -DmodelName=dropout_multi_model_m_618
    -DoutputTableName=online_test_prob_m_618
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_618;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_619"
    -DclassNum=54
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_619
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_619;
drop table if exists online_test_prob_m_619;
create table online_test_m_619 as select * from evaluation_public_kv where mall_id='m_619';
PAI -name prediction
    -DinputTableName=online_test_m_619
    -DmodelName=dropout_multi_model_m_619
    -DoutputTableName=online_test_prob_m_619
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_619;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_621"
    -DclassNum=72
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_621
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_621;
drop table if exists online_test_prob_m_621;
create table online_test_m_621 as select * from evaluation_public_kv where mall_id='m_621';
PAI -name prediction
    -DinputTableName=online_test_m_621
    -DmodelName=dropout_multi_model_m_621
    -DoutputTableName=online_test_prob_m_621
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_621;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_622"
    -DclassNum=101
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_622
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_622;
drop table if exists online_test_prob_m_622;
create table online_test_m_622 as select * from evaluation_public_kv where mall_id='m_622';
PAI -name prediction
    -DinputTableName=online_test_m_622
    -DmodelName=dropout_multi_model_m_622
    -DoutputTableName=online_test_prob_m_622
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_622;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_623"
    -DclassNum=85
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_623
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_623;
drop table if exists online_test_prob_m_623;
create table online_test_m_623 as select * from evaluation_public_kv where mall_id='m_623';
PAI -name prediction
    -DinputTableName=online_test_m_623
    -DmodelName=dropout_multi_model_m_623
    -DoutputTableName=online_test_prob_m_623
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_623;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_625"
    -DclassNum=99
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_625
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_625;
drop table if exists online_test_prob_m_625;
create table online_test_m_625 as select * from evaluation_public_kv where mall_id='m_625';
PAI -name prediction
    -DinputTableName=online_test_m_625
    -DmodelName=dropout_multi_model_m_625
    -DoutputTableName=online_test_prob_m_625
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_625;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_626"
    -DclassNum=111
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_626
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_626;
drop table if exists online_test_prob_m_626;
create table online_test_m_626 as select * from evaluation_public_kv where mall_id='m_626';
PAI -name prediction
    -DinputTableName=online_test_m_626
    -DmodelName=dropout_multi_model_m_626
    -DoutputTableName=online_test_prob_m_626
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_626;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_627"
    -DclassNum=52
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_627
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_627;
drop table if exists online_test_prob_m_627;
create table online_test_m_627 as select * from evaluation_public_kv where mall_id='m_627';
PAI -name prediction
    -DinputTableName=online_test_m_627
    -DmodelName=dropout_multi_model_m_627
    -DoutputTableName=online_test_prob_m_627
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_627;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_628"
    -DclassNum=62
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_628
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_628;
drop table if exists online_test_prob_m_628;
create table online_test_m_628 as select * from evaluation_public_kv where mall_id='m_628';
PAI -name prediction
    -DinputTableName=online_test_m_628
    -DmodelName=dropout_multi_model_m_628
    -DoutputTableName=online_test_prob_m_628
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_628;

PAI -name ps_smart
    -DinputTablePartitions="mall_id=m_629"
    -DclassNum=69
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_m_629
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_m_629;
drop table if exists online_test_prob_m_629;
create table online_test_m_629 as select * from evaluation_public_kv where mall_id='m_629';
PAI -name prediction
    -DinputTableName=online_test_m_629
    -DmodelName=dropout_multi_model_m_629
    -DoutputTableName=online_test_prob_m_629
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_m_629;

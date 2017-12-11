
# coding: utf-8


import pandas as pd

#读取每个mall的信息
shop=pd.read_csv('shop_code.csv',index_col=0)
shop['shop_code_max']=shop.shop_code_max+1

#生成训练和预测脚本
pai='''
PAI -name ps_smart
    -DinputTablePartitions="mall_id=%s"
    -DclassNum=%s
    -DinputTableName=user_shop_behavior_kv
    -DmodelName=dropout_multi_model_%s
    -DlabelColName=label
    -DfeatureColNames=kv
    -DenableSparse=true
    -Dobjective=multi:softprob
    -DtreeCount=109
    -DsampleRatio=0.6
    -DfeatureRatio=0.6
    -DmaxDepth=7
    -Dshrinkage=0.088;
drop table if exists online_test_%s;
drop table if exists online_test_prob_%s;
create table online_test_%s as select * from evaluation_public_kv where mall_id='%s';
PAI -name prediction
    -DinputTableName=online_test_%s
    -DmodelName=dropout_multi_model_%s
    -DoutputTableName=online_test_prob_%s
    -DfeatureColNames="kv"
    -DappendColNames="row_id,mall_id"
    -DenableSparse="true";
drop table online_test_%s;
'''
f = open('train_and_predict.sql','w')
for i,j in shop.iterrows():
    f.write(pai%(j[0],j[1],j[0],j[0],j[0],j[0],j[0],j[0],j[0],j[0],j[0]))
f.close()

#生成结果合并脚本
sql='''
select row_id,mall_id,prediction_result,prediction_detail from online_test_prob_%s
union all
'''
f = open('union.sql','w')
for i,j in shop.iterrows():
    f.write(sql%j[0])
f.close()

#生成删除临时表的脚本
sql='''
drop table if exists online_test_prob_%s;
'''
f = open('delete.sql','w')
for i,j in shop.iterrows():
    f.write(sql%j[0])
f.close()


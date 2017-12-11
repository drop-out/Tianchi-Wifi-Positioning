--结果展开
drop table if exists online_test_multi_prob_normal;
create table online_test_multi_prob_normal as select a.row_id,b.shop_id,a.prob
from
    (select prob_pivot(row_id,mall_id,prediction_detail) as (row_id,mall_id,shop_code,prob) 
    from online_test_prob_union_all) a
left outer join shop_code b on a.mall_id=b.mall_id and a.shop_code = b.shop_code;

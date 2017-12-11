--线下多分类(不含null的)
insert overwrite table user_shop_behavior_kv partition(mall_id)
	select row_id,kv,label,mall_id from user_shop_behavior_kv_temp a
	left semi join train_user_shop_behavior b on a.row_id=b.row_id;

insert overwrite table evaluation_public_kv partition(mall_id)
	select row_id,kv,mall_id from user_shop_behavior_kv_temp a
	left semi join train b on a.row_id=b.row_id;
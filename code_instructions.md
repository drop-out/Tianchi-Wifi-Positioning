### 代码运行说明

**文件说明如下**：

- `src文件夹` Map Reduce和Hive UDF的java代码
- `1-10` 主要的十个sql文件
- `multi_train_and_predict文件夹` 用来跑多分类和合并结果的繁琐脚本
- `shop_code.csv` 包含每个mall有多少个shop的信息
- `generating_sql.py` 用来生成多分类脚本的python代码

java代码需要先打成jar包，上传到`max compute`。

**运行顺序**:

- `1_preprocessing.sql`
- `2_binary_classification_feature_extraction.sql`
- `3_multi_classification_online_stage1.sql`
- `multi_stream`
- `4_multi_classification_online_stage2.sql`
- `5_multi_classification_local_stage1.sql`
- `multi_stream`
- `6_multi_classification_local_stage2.sql`
- `7_feature_from_chizi.sql`
- `8_train_data_construct.sql`
- `9_test_data_construct.sql`
- `10_train_and_submit.sql`

其中`multi_stream`定义如下：

1. 运行`multi_train_and_predict`文件夹中的`1.sql`-`24.sql`
2. 运行`multi_train_and_predict`文件夹中的`union.sql`
3. 运行`multi_train_and_predict`文件夹中的`delete.sql`






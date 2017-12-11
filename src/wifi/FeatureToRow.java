package wifi;

import com.aliyun.odps.OdpsException;
import com.aliyun.odps.data.TableInfo;
import com.aliyun.odps.mapred.JobClient;
import com.aliyun.odps.mapred.RunningJob;
import com.aliyun.odps.mapred.conf.JobConf;
import com.aliyun.odps.mapred.utils.InputUtils;
import com.aliyun.odps.mapred.utils.OutputUtils;
import com.aliyun.odps.mapred.utils.SchemaUtils;

public class FeatureToRow {

/*
 * Usage: <inputTable> <col_key> <col_key type> <col_position> <col_feature_values> <col_feature_values type> <outputTable>"
 */
    public static void main(String[] args) throws Exception {
    	
    	System.out.println("Usage: <inputTable> <col_key> <col_key type> <col_position> <col_feature_values> <col_feature_values type> <outputTable>");
    	System.out.println("你正在使用挖掘牛逼的jar包。。。");
    	System.out.println("你正在使用挖掘牛逼的jar包。。。");
    	System.out.println("你正在使用挖掘牛逼的jar包。。。");
    	System.out.println("你正在使用挖掘牛逼的jar包。。。");
    	System.out.println("你正在使用挖掘牛逼的jar包。。。");
    	System.out.println("你正在使用挖掘牛逼的jar包。。。");
    	System.out.println("你正在使用挖掘牛逼的jar包。。。");
    	System.out.println("你正在使用挖掘牛逼的jar包。。。");
    	System.out.println("你正在使用挖掘牛逼的jar包。。。");
    	System.out.println("你正在使用挖掘牛逼的jar包。。。");
    	JobConf job = new JobConf();
    	String[] col_key=args[1].split(",");
    	String[] col_key_type=args[2].split(",");
    	
    	//构建输入列
        String[] input_cols=new String[col_key.length+2];
        for(int i=0;i<col_key.length;i++){
        	input_cols[i]=col_key[i];
        }
        input_cols[col_key.length]=args[3];
        input_cols[col_key.length+1]=args[4];
        
        //构建MapOutputKeySchema
        StringBuilder MapOutputKeySchema=new StringBuilder();
        for(int i=0;i<col_key.length;i++){
        	MapOutputKeySchema.append(col_key[i]);
        	MapOutputKeySchema.append(":");
    		MapOutputKeySchema.append(col_key_type[i]);
        	if (i!=col_key.length-1){
        		MapOutputKeySchema.append(",");
        	}
        }
        
        //构建MapOutputValueSchema
        StringBuilder MapOutputValueSchema=new StringBuilder();
        MapOutputValueSchema.append("position:bigint,feature_values:");
        MapOutputValueSchema.append(args[5]);
        
        
        job.setMapperClass(FeatureToRowMapper.class);
        job.setReducerClass(FeatureToRowReducer.class);

        job.setMapOutputKeySchema(SchemaUtils.fromString(MapOutputKeySchema.toString()));
        job.setMapOutputValueSchema(SchemaUtils.fromString(MapOutputValueSchema.toString()));

        InputUtils.addTable(TableInfo.builder().tableName(args[0]).cols(input_cols).build(),job);
        OutputUtils.addTable(TableInfo.builder().tableName(args[6]).build(),job);

        JobClient.runJob(job);
      }

}

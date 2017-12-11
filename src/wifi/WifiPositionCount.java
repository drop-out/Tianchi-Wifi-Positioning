package wifi;

import com.aliyun.odps.OdpsException;
import com.aliyun.odps.data.TableInfo;
import com.aliyun.odps.mapred.JobClient;
import com.aliyun.odps.mapred.RunningJob;
import com.aliyun.odps.mapred.conf.JobConf;
import com.aliyun.odps.mapred.utils.InputUtils;
import com.aliyun.odps.mapred.utils.OutputUtils;
import com.aliyun.odps.mapred.utils.SchemaUtils;

public class WifiPositionCount {

/*
 * Usage: <inputTable> <col_key> <col_position> <col_count> <outputTable>
 * 用于按顺序位置统计wifi出现的总次数，这里的位置指的是从强到弱的十个顺序位置
 * 统计时，每个位置出现一次，相邻两个位置也计一次
 * col_key是统计时用来分组的key，如有多列，按逗号隔开
 * col_position是位置标记，1-10共十个位置
 * col_count是在该位置出现的次数
 * 输入列: col_key,col_position,col_count
 * 输出列: col_key;位置1-位置10的计数(共10列)
 * 具体用法可参见sql代码
 */
    public static void main(String[] args) throws Exception {
    	
    	System.out.println("Usage: <inputTable> <col_key> <col_position> <col_count> <outputTable>");
    	
    	JobConf job = new JobConf();
    	String[] col_key=args[1].split(",");
    	
    	//构建输入列
        String[] input_cols=new String[col_key.length+2];
        for(int i=0;i<col_key.length;i++){
        	input_cols[i]=col_key[i];
        }
        input_cols[col_key.length]=args[2];
        input_cols[col_key.length+1]=args[3];
        
        
        //构建MapOutputKeySchema
        StringBuilder MapOutputKeySchema=new StringBuilder();
        for(int i=0;i<col_key.length;i++){
        	MapOutputKeySchema.append(col_key[i]);
        	if (i==col_key.length-1){
        		MapOutputKeySchema.append(":string");
        	}else{
        		MapOutputKeySchema.append(":string,");
        	}
        }
        
        
        job.setMapperClass(WifiPositionCountMapper.class);
        job.setReducerClass(WifiPositionCountReducer.class);

        job.setMapOutputKeySchema(SchemaUtils.fromString(MapOutputKeySchema.toString()));
        job.setMapOutputValueSchema(SchemaUtils.fromString("position:bigint,count:bigint"));

        InputUtils.addTable(TableInfo.builder().tableName(args[0]).cols(input_cols).build(), job);
        OutputUtils.addTable(TableInfo.builder().tableName(args[4]).build(), job);

        JobClient.runJob(job);
      }

}

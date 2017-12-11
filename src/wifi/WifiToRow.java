package wifi;

import com.aliyun.odps.OdpsException;
import com.aliyun.odps.data.TableInfo;
import com.aliyun.odps.mapred.JobClient;
import com.aliyun.odps.mapred.RunningJob;
import com.aliyun.odps.mapred.conf.JobConf;
import com.aliyun.odps.mapred.utils.InputUtils;
import com.aliyun.odps.mapred.utils.OutputUtils;
import com.aliyun.odps.mapred.utils.SchemaUtils;

public class WifiToRow {

/*
 * Usage: <inputTable> <outputTable>
 * 用于将每条记录(以row_id为主键)展开的wifi_info重新合并成一行，共23列
 * 输入:row_id,mall_id,db_rank,wifi_id,db,flag
 * 输出: 
 * 第1列:row_id
 * 第2列:mall_id
 * 第3-12列:从强到弱排序的wifi_id
 * 第13-22列:3-12列wifi_id对应的wifi强度
 * 第23列:连接的wifi_id
 */
    public static void main(String[] args) throws Exception {
    	
    	System.out.println("Usage: <inputTable> <outputTable>");
    	JobConf job = new JobConf();
        
        job.setMapperClass(WifiToRowMapper.class);
        job.setReducerClass(WifiToRowReducer.class);

        job.setMapOutputKeySchema(SchemaUtils.fromString("row_id:bigint,mall_id:string"));
        job.setMapOutputValueSchema(SchemaUtils.fromString("position:bigint,wifi_id:string,db:bigint,flag:boolean"));

        InputUtils.addTable(TableInfo.builder().tableName(args[0]).cols(new String[]{"row_id","mall_id","db_rank","wifi_id","db","flag"}).build(),job);
        OutputUtils.addTable(TableInfo.builder().tableName(args[1]).build(),job);

        JobClient.runJob(job);
      }

}

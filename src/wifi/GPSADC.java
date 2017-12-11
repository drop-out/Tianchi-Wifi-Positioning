package wifi;

import com.aliyun.odps.OdpsException;
import com.aliyun.odps.data.TableInfo;
import com.aliyun.odps.mapred.JobClient;
import com.aliyun.odps.mapred.RunningJob;
import com.aliyun.odps.mapred.conf.JobConf;
import com.aliyun.odps.mapred.utils.InputUtils;
import com.aliyun.odps.mapred.utils.OutputUtils;
import com.aliyun.odps.mapred.utils.SchemaUtils;

public class GPSADC {

	public static void main(String[] args) throws Exception {
    	System.out.println("Usage: Join <train> <test> <result>");

        JobConf job = new JobConf();

        job.setMapperClass(GPSADCMapper.class);
        job.setReducerClass(GPSADCReducer.class);

        job.setMapOutputKeySchema(SchemaUtils.fromString("key:string,tag:bigint"));
        job.setMapOutputValueSchema(SchemaUtils.fromString("index:string,longitude:double,latitude:double"));

        job.setPartitionColumns(new String[]{"key"});
        job.setOutputKeySortColumns(new String[]{"key","tag"});
        job.setOutputGroupingColumns(new String[]{"key"});

        InputUtils.addTable(TableInfo.builder().tableName(args[0]).cols(new String[]{"mall_id","shop_id_true","longitude","latitude"}).label("train").build(),job);
        InputUtils.addTable(TableInfo.builder().tableName(args[1]).cols(new String[]{"mall_id","row_id","longitude","latitude"}).label("test").build(),job);
        OutputUtils.addTable(TableInfo.builder().tableName(args[2]).build(),job);
        
        job.setNumReduceTasks(500);

        JobClient.runJob(job);
      }
}

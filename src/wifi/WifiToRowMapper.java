package wifi;

import java.io.IOException;

import com.aliyun.odps.data.Record;
import com.aliyun.odps.mapred.MapperBase;

public class WifiToRowMapper extends MapperBase {

    private Record mapkey;
    private Record mapvalue;

    @Override
    public void setup(TaskContext context) throws IOException {
      mapkey = context.createMapOutputKeyRecord();
      mapvalue = context.createMapOutputValueRecord();
    }

    @Override
    public void map(long recordNum, Record record, TaskContext context)
        throws IOException {
      mapkey.set(0,record.get(0));
      mapkey.set(1,record.get(1));
      mapvalue.set(0,record.get(2));
      mapvalue.set(1,record.get(3));
      mapvalue.set(2,record.get(4));
      mapvalue.set(3,record.get(5));
      
      context.write(mapkey, mapvalue);
    }

  }

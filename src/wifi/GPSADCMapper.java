package wifi;

import java.io.IOException;

import com.aliyun.odps.data.Record;
import com.aliyun.odps.mapred.MapperBase;

public class GPSADCMapper extends MapperBase {

    private Record mapkey;
    private Record mapvalue;
    private long tag;

    @Override
    public void setup(TaskContext context) throws IOException {
      mapkey = context.createMapOutputKeyRecord();
      mapvalue = context.createMapOutputValueRecord();
      tag = context.getInputTableInfo().getLabel().equals("test") ? 0 : 1;
    }

    @Override
    public void map(long key, Record record, TaskContext context)
        throws IOException {
      mapkey.set(0, record.get(0));
      mapkey.set(1, tag);

      mapvalue.set(0,record.get(1).toString());
      mapvalue.set(1,record.get(2));
      mapvalue.set(2,record.get(3));
      
      context.write(mapkey, mapvalue);
    }

  }

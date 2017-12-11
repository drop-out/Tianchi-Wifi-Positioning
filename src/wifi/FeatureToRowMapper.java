package wifi;

import java.io.IOException;

import com.aliyun.odps.data.Record;
import com.aliyun.odps.mapred.MapperBase;

public class FeatureToRowMapper extends MapperBase {

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
      int n_inputs=record.getColumnCount();
      for(int i=0;i<n_inputs-2;i++){
    	  mapkey.set(i,record.get(i));
      }
      mapvalue.set(0,record.get(n_inputs-2));
      mapvalue.set(1,record.get(n_inputs-1));
      
      context.write(mapkey, mapvalue);
    }

  }

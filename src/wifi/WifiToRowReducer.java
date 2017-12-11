package wifi;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.ArrayList;

import com.aliyun.odps.data.Record;
import com.aliyun.odps.mapred.ReducerBase;
import com.aliyun.odps.mapred.Reducer.TaskContext;

public class WifiToRowReducer extends ReducerBase {

    private Record result;

    @Override
    public void setup(TaskContext context) throws IOException {
      result = context.createOutputRecord();
    }

    @Override
    public void reduce(Record key, Iterator<Record> values, TaskContext context)
        throws IOException {
      
      for(int i=0;i<23;i++){
    	  result.set(i,null);
      }
    	
      result.set(0,key.get(0));
      result.set(1,key.get(1));
      

      while (values.hasNext()) {
        Record value = values.next();
        int position = value.getBigint(0).intValue();
        result.set(position+1,value.get(1));
        result.set(position+11,value.get(2));
        if (value.getBoolean(3).booleanValue()){
        	result.set(22,value.get(1));
        }
      }
      context.write(result);

  }
    
}

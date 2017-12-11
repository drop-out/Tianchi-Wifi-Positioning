package wifi;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.ArrayList;

import com.aliyun.odps.data.Record;
import com.aliyun.odps.mapred.ReducerBase;
import com.aliyun.odps.mapred.Reducer.TaskContext;

public class FeatureToRowReducer extends ReducerBase {

    private Record result;

    @Override
    public void setup(TaskContext context) throws IOException {
      result = context.createOutputRecord();
    }

    @Override
    public void reduce(Record key, Iterator<Record> values, TaskContext context)
        throws IOException {
      int n_keys = key.getColumnCount();
      
      //–¥»Îkey
      for (int i=0;i<n_keys;i++){
    	  result.set(i,key.get(i));
      }

      //–¥»ÎÃÿ’˜
      while (values.hasNext()) {
        Record value = values.next();
        int position = value.getBigint(0).intValue();
        result.set(n_keys+position-1,value.get(1));
      }
      context.write(result);

  }
    
}

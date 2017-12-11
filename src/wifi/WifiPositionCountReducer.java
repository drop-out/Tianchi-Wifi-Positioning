package wifi;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.ArrayList;

import com.aliyun.odps.data.Record;
import com.aliyun.odps.mapred.ReducerBase;
import com.aliyun.odps.mapred.Reducer.TaskContext;

public class WifiPositionCountReducer extends ReducerBase {

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
      
      long[] count=new long[10];

      while (values.hasNext()) {
        Record value = values.next();
        int position = value.getBigint(0).intValue();
        if(position==1){
        	count[0]=count[0]+value.getBigint(1);
        	count[1]=count[1]+value.getBigint(1);
        	count[2]=count[2]+value.getBigint(1);
        }else if(position==10){
        	count[7]=count[7]+value.getBigint(1);
        	count[8]=count[8]+value.getBigint(1);
        	count[9]=count[9]+value.getBigint(1);
        }else if(position<10){
        	count[position-2]=count[position-2]+value.getBigint(1);
        	count[position-1]=count[position-1]+value.getBigint(1);
        	count[position]=count[position]+value.getBigint(1);
        }
      }
      for(int i=0;i<10;i++){
        	 result.set(n_keys+i,count[i]); 
      }
 	  context.write(result); 

  }
    
}

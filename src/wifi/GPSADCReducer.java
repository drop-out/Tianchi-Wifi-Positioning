package wifi;

import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ArrayList;

import com.aliyun.odps.data.Record;
import com.aliyun.odps.mapred.ReducerBase;

public class GPSADCReducer extends ReducerBase {

	private Record result = null;

	@Override
	public void setup(TaskContext context) throws IOException {
		result = context.createOutputRecord();
	}

	@Override
	public void reduce(Record key, Iterator<Record> values, TaskContext context)
			throws IOException {
		String k = key.getString(0);
		ArrayList<GPS> rows = new ArrayList<GPS>();

		while (values.hasNext()) {
			Record value = values.next();
			long tag = (Long) key.get(1);
			if (tag == 0) {
				GPS row = new GPS(value.getString(0),value.getDouble(1),value.getDouble(2));
				rows.add(row);
			} else {
				for (GPS row : rows) {
					row.add_train_point(value.getString(0),value.getDouble(1),value.getDouble(2));
				}
				context.progress();
			}
		}
		for (GPS row : rows) {
			HashMap<String, double[]> shop_stats = row.get_stats();
			for (String shop_id : shop_stats.keySet()) {
				result.set(0, Long.parseLong(row.row_id));
				result.set(1, shop_id);
				double[] stats = shop_stats.get(shop_id);
				result.set(2, stats[0]);
				result.set(3, stats[1]);
				result.set(4, stats[2]);
				result.set(5, stats[3]);
				context.write(result);
			}
		}
	}
}

class GPS {
	public String row_id;
	private double longitude;
	private double latitude;
	private HashMap<String, double[]> shop_stats;// 存储五个统计量:sum,min,max,count

	public GPS(String row_id,double longitude,double latitude) {
		this.row_id = row_id;
		this.longitude = longitude;
		this.latitude = latitude;
		this.shop_stats = new HashMap<String, double[]>();
	}

	public void add_train_point(String shop_id,double longitude,double latitude) {
		double distance = Math.sqrt(Math.pow(this.longitude-longitude,2)+Math.pow(this.latitude-latitude,2));
		distance = Math.pow(0.1,distance*100000);
		if (!this.shop_stats.containsKey(shop_id)) {
			this.shop_stats.put(shop_id, new double[] {distance,distance,distance,1});
		}else{
			double[] stat=this.shop_stats.get(shop_id);
			stat[0]+=distance;
			if (distance<stat[1]){
				stat[1]=distance;
			}
			if (distance>stat[2]){
				stat[2]=distance;
			}
			stat[3]++;
		}
	}

	// 计算统计量
	public HashMap<String, double[]> get_stats() {
		return shop_stats;
	}

}

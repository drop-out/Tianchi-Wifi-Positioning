package wifi;

import java.util.Arrays;
import java.util.HashMap;

import com.aliyun.odps.io.LongWritable;
import com.aliyun.odps.io.Text;
import com.aliyun.odps.io.Writable;
import com.aliyun.odps.udf.Aggregator;
import com.aliyun.odps.udf.UDFException;
import com.aliyun.odps.udf.annotation.Resolve;

/**
 * 使用说明:用来生成多分类的kv格式数据
 * 适用表以实际sql代码使用为准
 * 本函数为多对一的UDAF
 * 输入:wifi_code,db
 * 输出:kv
 */
@Resolve({ "bigint,bigint->string" })
public class KV extends Aggregator {

	@Override
	public Writable newBuffer() {
		return new Text();
	}

	@Override
	public void iterate(Writable arg0, Writable[] arg1) throws UDFException {
		Text result = (Text) arg0;
		LongWritable wifi_code = (LongWritable) arg1[0];
		LongWritable db = (LongWritable) arg1[1];
		int f_db = 0;
		if (db.get() < 0 && db.get() > -115) {
			f_db = (115 + (int) db.get());
		}
		if (db.get() >= 0) {
			f_db = 115;
		}
		result.set(result.toString() + " " + wifi_code.toString() + ":" + f_db);
	}

	@Override
	public void merge(Writable arg0, Writable arg1) throws UDFException {
		Text result = (Text) arg0;
		Text partial = (Text) arg1;
		result.set(result.toString() + partial.toString());
	}

	@Override
	public Writable terminate(Writable arg0) throws UDFException {
		Text in = (Text) arg0;
		String[] wifis = in.toString().substring(1).split(" ");
		StringBuilder result = new StringBuilder();
		long[] keys = new long[wifis.length];
		HashMap<Long, Long> wifi_dict = new HashMap<Long, Long>();
		for (int i = 0; i < wifis.length; i++) {
			String wifi = wifis[i];
			Long wifi_code = Long
					.parseLong(wifi.substring(0, wifi.indexOf(":")));
			Long db = Long.parseLong(wifi.substring(wifi.indexOf(":") + 1));
			keys[i] = wifi_code;
			wifi_dict.put(wifi_code, db);
		}
		Arrays.sort(keys);
		for (int i = 0; i < wifis.length; i++) {
			result.append(" ");
			result.append(keys[i]);
			result.append(":");
			result.append(wifi_dict.get(keys[i]));
		}
		Text result_writable = new Text();
		result_writable.set(result.toString());
		return result_writable;
	}

}

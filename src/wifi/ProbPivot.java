package wifi;

import com.aliyun.odps.udf.UDFException;
import com.aliyun.odps.udf.UDTF;
import com.aliyun.odps.udf.annotation.Resolve;

/**
 * 使用说明:用来将prediction_detail的预测概率按行展开
 * 适用于多分类的预测结果表(包含mall_id)
 * 本函数为一对多的UDTF
 * 输入:row_id,mall_id,prediction_detail
 * 输出:row_id,mall_id,shop_code,prob
 */
@Resolve({"bigint,string,string->bigint,string,bigint,double"})
public class ProbPivot extends UDTF {

  @Override
  public void process(Object[] args) throws UDFException {
    Long row_id = (Long)args[0];
    String mall_id = (String)args[1];
    String prediction_detail = (String)args[2];
    prediction_detail=prediction_detail.substring(1,prediction_detail.length()-1);
    for (String i:prediction_detail.split(",")){
    	String shop_code=i.substring(i.indexOf("\"")+1,i.indexOf(":")-1);
    	String prob=i.substring(i.indexOf(":")+2);
    	forward(row_id,mall_id,Long.parseLong(shop_code),Double.parseDouble(prob));
    }
    

  }
}

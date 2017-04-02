package product.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ProductInfo {
	@Autowired
	SqlSessionFactory fac;

	public boolean ProductInfoSet(HashMap map) {
		SqlSession sql = fac.openSession();
		int rst = sql.insert("product_info.addProduct", map);
		sql.close();
		if (rst == 1) {
			return true;
		} else {
			return false;
		}
	}
	
	public List<HashMap> ProductInfoGet(String fileuuid) {
		SqlSession sql = fac.openSession();
		List<HashMap> infoP = sql.selectList("product_info.getProduct", fileuuid);
		sql.close();
		if (infoP != null) {
			return infoP;
		}
			return null;
	}
	
	public boolean setCart(HashMap map) {
		SqlSession sql = fac.openSession();
		int r = sql.insert("product_info.addCart", map);
		sql.close();
		if(r==1) {
			return true;
		}else {
			return false;
		}
		
	}
}

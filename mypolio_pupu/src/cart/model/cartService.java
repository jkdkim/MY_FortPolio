package cart.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class cartService {

	@Autowired
	SqlSessionFactory fac;

	public List<HashMap> getName(String nickid) {
		SqlSession sql = fac.openSession();
		List<HashMap> li = sql.selectList("mycart.cart", nickid);
		
		sql.close();
		System.out.println("cart list " + li);
		return li;
	}

	
	public List<HashMap> managercart(String id) {
		System.out.println(id);
		SqlSession sql = fac.openSession();
		List<HashMap> li = sql.selectList("mycart.managercart", id);
		
		sql.close();
		System.out.println("cart list " + li);

		
		return li;
	}

}

package file.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class allLoadViewService {
	@Autowired
	SqlSessionFactory fac;
	
	public List<HashMap> allview() {
		SqlSession sql = fac.openSession();
		List<HashMap> li = sql.selectList("files.getAllFile");
		sql.close();
		return li;
	}
	
	public List<HashMap> cateview(String select) {
		SqlSession sql = fac.openSession();
		List<HashMap> li = sql.selectList("files.getCateView", select);

		sql.close();
		return li;
	}

	
	public HashMap allChart() {
		SqlSession sql = fac.openSession();
		HashMap map = new HashMap();
		int sum1 = sql.selectOne("files.getAllChart", "의류");
		int sum2 = sql.selectOne("files.getAllChart", "여행");
		int sum3 = sql.selectOne("files.getAllChart", "취미");
		int sum4 = sql.selectOne("files.getAllChart", "자유");
		map.put("의류", sum1);
		map.put("여행", sum2);
		map.put("취미", sum3);
		map.put("자유", sum4);
		sql.close();
		return map;
	}
}
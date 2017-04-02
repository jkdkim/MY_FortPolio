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
		int sum1 = sql.selectOne("files.getAllChart", "�Ƿ�");
		int sum2 = sql.selectOne("files.getAllChart", "����");
		int sum3 = sql.selectOne("files.getAllChart", "���");
		int sum4 = sql.selectOne("files.getAllChart", "����");
		map.put("�Ƿ�", sum1);
		map.put("����", sum2);
		map.put("���", sum3);
		map.put("����", sum4);
		sql.close();
		return map;
	}
}
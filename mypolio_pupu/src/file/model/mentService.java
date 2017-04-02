package file.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class mentService {
	@Autowired
	SqlSessionFactory fac;

	public List<HashMap> getMent(String fileuuid) {
		SqlSession sql = fac.openSession();
		List<HashMap> li = sql.selectList("review.getAll", fileuuid);
		sql.close();
		return li;

	}

	public boolean addMent(String id, String memo, String fileuuid) {
		try {
			HashMap map = new HashMap();
			map.put("id", id);
			map.put("memo", memo);
			map.put("fileuuid", fileuuid);
			SqlSession sql = fac.openSession();
			sql.insert("review.insert", map);
			sql.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

}

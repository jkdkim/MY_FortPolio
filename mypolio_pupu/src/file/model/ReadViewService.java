package file.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ReadViewService {

	@Autowired
	SqlSessionFactory fac;

	public List<HashMap> readview(String fileuuid) {
		SqlSession sql = fac.openSession();
	
		List<HashMap> tg = sql.selectList("files.getFile", fileuuid);
		sql.close();
		
		return tg;

	}
}

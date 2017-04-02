package qna.model;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class BoardWriteService {

	@Autowired
	SqlSessionFactory fac;

	public int boardWrite(HashMap map) {
		SqlSession sql = fac.openSession();

		int rst = sql.insert("qna.qnacreate", map);
	//	System.out.println("디비접속");
		
		sql.close();
		return rst;

	}
}

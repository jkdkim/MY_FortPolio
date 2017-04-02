package member.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class AuthService {

	@Autowired
	SqlSessionFactory fac;
	
	public List<HashMap> authSer(HashMap map) {
		SqlSession sql = fac.openSession();
		List<HashMap> li = sql.selectList("myauth.m_getUpload", map);
		sql.close();
		return li;
	}
	
	public String authSerLike(String fileuuid) {
		SqlSession sql = fac.openSession();
		String li = sql.selectOne("myauth.m_getLike", fileuuid);
		sql.close();
		return li;
	}
	
	public String authSerFoll(String followme) {
		SqlSession sql = fac.openSession();
		String li = sql.selectOne("myauth.m_getFollow", followme);
		sql.close();
		return li;
	}
}

package member.model;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/*
 * 	회원가입을 도와주는 서비스 및 멤머쉽포인트 가입
 */
@Component
public class JoinMemberService {
	@Autowired
	SqlSessionFactory fac;

	public boolean joinmember(HashMap map) {
		SqlSession sql = fac.openSession();
		int excute = sql.insert("member.addMember", map);
		if (excute == 1) {
			sql.close();
			return true;
		} else {
			return false;
		}

	}
	
	public String getNick(String a) {
		SqlSession sql = fac.openSession();
		String name = sql.selectOne("member.getNickname", a);
		sql.close();
		return name;

	}
	
	public int modify(HashMap map) {
		SqlSession sql = fac.openSession();
		int excute = sql.update("member.modify", map);
		sql.close();
		if (excute == 1) {
			return 1;
		} else {
			return 0;
		}
	}

	public String modifypass(String s_id) {

		SqlSession sql = fac.openSession();
		String excute = sql.selectOne("member.modifypass", s_id);
		sql.close();
		return excute;
	}

	public String checkpass(String s_id) {

		SqlSession sql = fac.openSession();
		String excute = sql.selectOne("member.checkpass", s_id);
		sql.close();
		return excute;
	}
}
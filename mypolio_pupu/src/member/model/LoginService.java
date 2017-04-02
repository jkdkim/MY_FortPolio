package member.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class LoginService {
	@Autowired

	SqlSessionFactory fac;

	public String loginCheck(String id, String pass) {
		SqlSession sql = fac.openSession();
		HashMap map = new HashMap<>();
		map.put("id", id);
		map.put("pass", pass);
		String check = sql.selectOne("member.checkmember", map);
		sql.close();
		return check;

	}

	public String joinCheck(String id) {
		SqlSession sql = fac.openSession();
		String check = sql.selectOne("member.overlapmember", id);
		sql.close();
		return check;

	}

	public List<HashMap> nicknameSet(String id) {
		SqlSession sql = fac.openSession();
		List<HashMap> nickname = sql.selectList("member.nickname", id);
		sql.close();
		return nickname;

	}

	public List<HashMap> profileCheck(String id) {
		SqlSession sql = fac.openSession();
		List<HashMap> check = sql.selectList("member.profile", id);
		sql.close();
		return check;

	}

	public List<HashMap> profileSystemUsers(String id) {
		SqlSession sql = fac.openSession();

		List<HashMap> check = sql.selectList("member.profile", id);
		sql.close();
		return check;

	}

	public List<HashMap> profileSystem() {
		SqlSession sql = fac.openSession();
		List<HashMap> check = sql.selectList("member.allMember");
		sql.close();
		return check;

	}

	public List<HashMap> managerCheck(String id) {
		SqlSession sql = fac.openSession();
		List<HashMap> manager = sql.selectList("member.manager", id);
		sql.close();
		return manager;

	}

	public int memberout(String id) {
		SqlSession sql = fac.openSession();
		int r = sql.delete("member.memberout", id);
		sql.close();
		return r;

	}

	public int writeout(String fileuuid) {
		System.out.println(fileuuid);
		SqlSession sql = fac.openSession();
		int r = sql.delete("files.writeout", fileuuid);
		sql.close();
		return r;

	}

}
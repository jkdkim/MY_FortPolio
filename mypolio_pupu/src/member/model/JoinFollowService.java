package member.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.aspectj.lang.annotation.Around;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import webhandler.controller.UploaderHandler;

@Component
public class JoinFollowService {
	
	@Autowired
	SqlSessionFactory fac;
	@Autowired
	UploaderHandler upload1;
	
	public int followService(String id, String name) {
		SqlSession sql = fac.openSession();
		String nickid = name+"("+id+")";
		int r = sql.insert("member.addfollw",nickid);
		sql.close();
		if(r==1) {
			return r;
		}else {
			return 0;
		}
	}
	
	public int followServiceJoin(String myidname, String youidname) {
		SqlSession sql = fac.openSession();
		HashMap map = new HashMap();
		map.put("id", myidname);
		map.put("followerid", youidname);
		int r = sql.insert("member.setFollw", map);
		upload1.sendToAllSession("3#"+myidname+"#"+youidname+"#님이팔로워등록했습니다.");
		sql.close();
		return r;
	}
	
	public String follwCheckService(String myidname, String youridname) {
		SqlSession sql= fac.openSession();
		HashMap map = new HashMap();
		map.put("id", myidname);
		map.put("followerid", youridname);
		String ask = sql.selectOne("member.checkFollow", map);
		sql.close();
		if(ask!=null) {
			return "FALSE";
		}else {
			return "TRUE";
		}	
	}
	
	public List<HashMap> followList(String nickid) {
		SqlSession sql = fac.openSession();
		List<HashMap> li = sql.selectList("member.showFollow", nickid);
		sql.close();
		if(li!=null) {
			return li;
		}else {
			return null;
		}
	}
	
}

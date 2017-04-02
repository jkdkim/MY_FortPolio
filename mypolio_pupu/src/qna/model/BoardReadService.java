package qna.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

// qnaboard 에서 정보 읽어오기

@Component
public class BoardReadService {

	@Autowired
	SqlSessionFactory fac;

	// 낱개로 가져오기
	public HashMap getView(String num) {
		SqlSession sql = fac.openSession();

		HashMap qq = sql.selectOne("qna.qnadetail", num);

		sql.close();
		return qq;

	}

	// 전부 가져오기
	public List<HashMap> getAll() {
		SqlSession sql = fac.openSession();

		List<HashMap> qqq = sql.selectList("qna.qnaall");
		
		sql.close();

		return qqq;
	}

	/*
	 * // 게시글 상세보기 : 제목, 내용, 작성자 등 가져오기 public List<HashMap> getView() {
	 * SqlSession sql = fac.openSession();
	 * 
	 * List<HashMap> cc = sql.selectList("qna.qnaview"); return cc; }
	 */

}

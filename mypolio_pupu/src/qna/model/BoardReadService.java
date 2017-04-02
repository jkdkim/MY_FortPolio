package qna.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

// qnaboard ���� ���� �о����

@Component
public class BoardReadService {

	@Autowired
	SqlSessionFactory fac;

	// ������ ��������
	public HashMap getView(String num) {
		SqlSession sql = fac.openSession();

		HashMap qq = sql.selectOne("qna.qnadetail", num);

		sql.close();
		return qq;

	}

	// ���� ��������
	public List<HashMap> getAll() {
		SqlSession sql = fac.openSession();

		List<HashMap> qqq = sql.selectList("qna.qnaall");
		
		sql.close();

		return qqq;
	}

	/*
	 * // �Խñ� �󼼺��� : ����, ����, �ۼ��� �� �������� public List<HashMap> getView() {
	 * SqlSession sql = fac.openSession();
	 * 
	 * List<HashMap> cc = sql.selectList("qna.qnaview"); return cc; }
	 */

}

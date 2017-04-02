package file.model;

import java.io.File;
import java.util.HashMap;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class uploadService {

	@Autowired
	ServletContext application;

	@Autowired
	SqlSessionFactory fac;

	public String execute(MultipartFile f, String id, String comments, String name, String cate) {
		// id: 업로더 title:파일제목 comments:파일내용
		if (f.isEmpty())
			return null;
		try {
			String uid = UUID.randomUUID().toString().substring(0, 4);
			String dir = application.getRealPath("/users");
			File des = new File(dir, uid);
			f.transferTo(des);
			HashMap map = new HashMap();
			map.put("id", id);
			map.put("comments", comments);
			map.put("fileuuid", uid);
			map.put("name", name);
			map.put("cate", cate);
			SqlSession sql = fac.openSession();
			sql.insert("files.upLoad", map);
			sql.close();
			return uid;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	public String profileupload(MultipartFile f, String id) {
		// id: 업로더 title:파일제목 comments:파일내용
		if (f.isEmpty())
			return null;
		try {
			String uid = UUID.randomUUID().toString().substring(0, 4);
			String dir = application.getRealPath("/profilefolder");
			System.out.println(dir);
			File des = new File(dir, id);
			f.transferTo(des);
			HashMap map = new HashMap();
			map.put("id", id);
			map.put("fileuuid", id);
			System.out.println(map);
			SqlSession sql = fac.openSession();
			int r = sql.update("files.updateProfile", map);
			sql.close();
			if (r == 1) {
				return id;
			} else {
				return null;
			}

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	public String profileSet(String id) {
		SqlSession sql = fac.openSession();
		String uid = sql.selectOne("files.setProfile", id);
		sql.close();
		if (uid != null) {
			return uid;
		} else {
			return null;
		}
	}
}

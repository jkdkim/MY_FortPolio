package file.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class albumService {
  
	 @Autowired
	   SqlSessionFactory fac;
		public List<HashMap> readMyphoto(String id){
		SqlSession sql =fac.openSession();
		List<HashMap> ph = sql.selectList("files.getAllFile2",id);
		sql.close();
		  return ph;
		
	   }
		
		
		 public List rownum() {
				SqlSession sql = fac.openSession();
				List top3= sql.selectList("files.rownum");
				// ¾øÀ¸¸é null
				
				sql.close();
				return top3;
			}
		
	}


package member.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import member.model.AuthService;

@Controller
public class AuthController {
	
	@Autowired
	AuthService authSer;
	
	@RequestMapping(value="/authComment", produces="text/plain;charset=utf-8")
	@ResponseBody
	public String authCon(HttpSession session, HttpServletRequest req) {
		String id = (String)session.getAttribute("userId");
		String file = req.getParameter("fileuid");
		HashMap map = new HashMap();
		map.put("id", id);
		map.put("fileuuid", file);
		List<HashMap> li = authSer.authSer(map);
		for(int i=0;i<li.size();i++) {
			map = li.get(i);
		}
		String comments = (String)map.get("COMMENTS");
		if(comments != null) {
			return comments;
		} 
		return "NNNN";
	}
	
	@RequestMapping(value="/authLike", produces="text/plain;charset=utf-8")
	@ResponseBody
	public String authLik(HttpSession session, HttpServletRequest req) {
		String id = (String)session.getAttribute("userId");
		String fileuuid = req.getParameter("fileuid");
		
		String li = authSer.authSerLike(fileuuid);
		
		if(li != null) {
			return "YYYY";
		} 
		return "NNNN";
	}
	
	@RequestMapping(value="/authFollow", produces="text/plain;charset=utf-8")
	@ResponseBody
	public String authFollw(HttpSession session, HttpServletRequest req) {
		String id = (String)session.getAttribute("userId");
		String followme = req.getParameter("followme");
		
		String li = authSer.authSerFoll(followme);
		
		if(li != null) {
			return "YYYY";
		} 
		return "NNNN";
	}
}

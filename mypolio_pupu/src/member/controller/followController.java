package member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import member.model.JoinFollowService;
import webhandler.controller.UploaderHandler;

@Controller
public class followController {
	
	@Autowired
	JoinFollowService jfs;
	@Autowired
	UploaderHandler handler;
	
	@RequestMapping("/follow")
	@ResponseBody
	public String follow(HttpServletRequest req, HttpSession session) {
		String myname = (String)session.getAttribute("nickname");		
		String myid = req.getParameter("myid");
		String youid = req.getParameter("youid");
		String youname = req.getParameter("youname");
		
		String myidname = myname+"("+myid+")";
		String youidname = youname+"("+youid+")";
		int r = jfs.followServiceJoin(myidname, youidname);
		if(r==1) {	
			return "TRUE";
		}else {
			return "FALSE";
		}
	}
	
	@RequestMapping("/followcheck")
	@ResponseBody
	public String follow2(HttpServletRequest req, HttpSession session) {
		String my_id = req.getParameter("my_id");
		String my_name = (String)session.getAttribute("nickname");
		String your_id = req.getParameter("you_id");
		String your_name = req.getParameter("your_name");
		
		String myidname = my_name+"("+my_id+")";
		String youridname = your_name+"("+your_id+")";
		String ask = jfs.follwCheckService(myidname, youridname);
		return ask;
	}
}

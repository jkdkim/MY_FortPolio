package member.controller;

import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import member.model.JoinFollowService;
import member.model.LoginService;

@Controller
public class LoginController {
	@Autowired
	LoginService loginService;
	@Autowired
	JavaMailSender sender;
	
	@RequestMapping("loginAuth")
	public ModelAndView proceed(HttpSession session,  String id, String pass, 
			HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("empty");
		String rst = loginService.loginCheck(id, pass);
		if (rst != null) {
			session.setAttribute("userId", id);
			
			List<HashMap> li = loginService.nicknameSet(id);
			HashMap map = new HashMap();
			for(int i =0; i<li.size();i++) {
				map = li.get(i);
			}
			session.setAttribute("nickname", map.get("NAME") );			
			System.out.println(session.getAttribute("nickname"));
			mav.addObject("check", "true");
		}
		return mav;

	}
	@RequestMapping("/member/joinAjax")
	@ResponseBody
	public String joinAjax1( @RequestParam(name = "id") String id) {
		String rst = loginService.joinCheck(id);
		if (rst != null) {
			return "TRUE";
		} else {
			return "FALSE";
		}
	}
	
			
	@RequestMapping("/member/joinAjax2")
	@ResponseBody
		public String mailTest01(String email) {
			MimeMessage mail = sender.createMimeMessage();
			try {
				mail.setRecipient(RecipientType.TO, new InternetAddress(email));
				mail.setSender(new InternetAddress("admin@group.kr"));
				mail.setSubject("회원가입 인증메일입니다 by PUPU"); // 메일 제목

				String text = "<h3>welcome</h3>";
				text += "저희사이트를 이용해주셔서 감사합니다.";
				text += "앞으로도 많은 관심과 사랑 부탁드립니다.";
				text += "회원님의";
				text += "인증키는 :[  ";
				String uid = UUID.randomUUID().toString().substring(0, 4);
				text += "<a>" + uid + "</a>  ]입니다.";

				text += "<a href='http://192.168.0.5/index?useremail=" + uid + "" + "'>구경가기</a>";
				mail.setText(text, "utf-8", "html");
				sender.send(mail);

				return uid;
			} catch (Exception e) {
				return "NNNNN";
			}
		}
}

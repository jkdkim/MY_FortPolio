package file.controller;

import java.util.HashMap;
import java.util.List;

import javax.mail.Session;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import file.model.albumService;

@Controller
public class albumController {
   @Autowired
   albumService as;
   
   @RequestMapping("/user/myalbum")
   public ModelAndView reqMyphoto(HttpSession session){
	   
	   String mid = (String)session.getAttribute("userId");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("t:potoList");
		List<HashMap> li = as.readMyphoto(mid);
		mav.addObject("dataM",li);
		mav.addObject("len",li.size());
		return mav;
		
		
	}
   
   @RequestMapping("/user/top3") 
	public ModelAndView srchResolve() {
   ModelAndView mav =  new ModelAndView();
		List li = as.rownum();
	     mav.setViewName("t:top");
	
	     mav.addObject("top",li);
	     
	     return mav;
		
	}
   
	
	
   
}

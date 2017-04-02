package file.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import file.model.SelLikeService;
import webhandler.controller.UploaderHandler;

@Controller
public class fileSelectController {
	
	@Autowired
	SelLikeService sls;
	@Autowired
	UploaderHandler upload1;
	
	@RequestMapping("/selectview")
	public String move() {
		return "my_feed2";
	}
	
	@RequestMapping(value="/liker")
	public ModelAndView select(HttpServletRequest req, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		HashMap map = new HashMap();
		String uuid = req.getParameter("uuid");
		String  iid= (String)session.getAttribute("userId");
		String nick = (String)session.getAttribute("nickname");
		String selectliker = nick;
		boolean rst1 = sls.sellikecheck(selectliker, uuid);
		// check user who push like button
		if(rst1==true) {
			boolean rst2 = sls.sellikego(selectliker, uuid);
			// if not insert data intp DB
			if(rst2==true) {
				boolean rst3 = sls.sellikeupdate(selectliker, uuid);
				//  update like +1 
				if(rst3==true) {
					List<HashMap> sleList = sls.sellikeList(uuid);
					mav.setViewName("like");
					mav.addObject("sleList", sleList);
					upload1.sendToAllSession("1#"+selectliker+"#"+uuid+"#를 좋아요눌럿어요");
					return mav;
				}
			}
		}else {
			String rst = sls.sellikedelet(uuid, selectliker);
			mav.setViewName("unlike");
			mav.addObject("rst", rst);
			return mav;
		}
		return mav;
	}
}

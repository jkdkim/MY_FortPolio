package indexcontroller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import file.model.SelLikeService;
import file.model.allLoadViewService;
import file.model.uploadService;
import member.model.JoinFollowService;
import member.model.LoginService;

@Controller
public class IndexController {

	@Autowired
	allLoadViewService alvs;
	@Autowired
	LoginService ls;
	@Autowired
	SelLikeService sls;
	@Autowired
	uploadService us;
	@Autowired
	JoinFollowService jfs;

	@RequestMapping("/main")
	public ModelAndView welcome(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if(session.getAttribute("userId") != null) {
			if (session.getAttribute("userId").equals("pupu-system")) {
				mav.setViewName("t:manager");
				List<HashMap> li = alvs.allview();
				mav.addObject("list", li);
				mav.addObject("size", li.size() - 1);
					
				return mav;
			}else {
				mav.setViewName("t:yeslogin");
				String id= (String)session.getAttribute("userId");
				String nick = (String)session.getAttribute("nickname");
				String nickid = nick+"("+id+")";
				String uuid = us.profileSet(id);
				List<HashMap> li = alvs.allview();
				HashMap li1 = alvs.allChart();
				int t1 = (int)li1.get("의류");
				int t2 = (int)li1.get("여행");
				int t3 = (int)li1.get("취미");
				int t4 = (int)li1.get("자유");
				List<HashMap> li2 = jfs.followList(nickid);
				HashMap map = new HashMap();
				List<HashMap> sleList = null;
				for(int i =0;i<li.size();i++) {
					map = li.get(i);
					String s_fileid = (String)map.get("FILEUUID");
					sleList = sls.setlikeList(s_fileid);
				}
				mav.addObject("t1",t1);
				mav.addObject("t2",t2);
				mav.addObject("t3",t3);
				mav.addObject("t4",t4);
				mav.addObject("followList",li2);
				mav.addObject("uid", uuid);
				mav.addObject("liker", sleList);
				mav.addObject("list", li);
				mav.addObject("size", li.size()-1);
				mav.addObject("sleList", sleList);
				return mav;
			}
		}else {
			mav.setViewName("t:notlogin");
			return mav;
		}
	}

		
	@RequestMapping("/logout")
	public String memberout(HttpSession session) {
		session.removeAttribute("userId");
		return "t:notlogin";
	}
}

package indexcontroller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cart.model.cartService;
import file.model.SelLikeService;
import file.model.allLoadViewService;
import member.model.JoinFollowService;
import member.model.JoinMemberService;
import member.model.LoginService;
import member.model.myreadService;

@Controller
public class UsersUseController {
	@Autowired
	LoginService ls;
	@Autowired
	SelLikeService sls;
	@Autowired
	cartService cs;
	@Autowired
	myreadService ms;
	@Autowired
	JoinMemberService joinmemberservice;
	@Autowired
	allLoadViewService alvs;
	@Autowired
	JoinFollowService jfs;

	@RequestMapping("/saveWirter")
	@ResponseBody
	public String memberseting(HttpServletRequest req) {
		String id = req.getParameter("id");
		String nick = req.getParameter("nick");
		String nickid = nick + "(" + id + ")";
		String uuid = req.getParameter("uuid");
		String memo = req.getParameter("memo");
		HashMap map = new HashMap();
		map.put("id", nickid);
		map.put("comments", memo);
		map.put("comments_flleuuid", uuid);

		int r = ms.addCommetns(map);
		if (r == 1) {
			return "true";
		} else {
			return "false";
		}
	}

	@RequestMapping("/getWirter")
	public ModelAndView memberWriter() {
		ModelAndView mav = new ModelAndView("wirter");
		List<HashMap> li = ms.getCommetns();
		mav.addObject("commts", li);
		return mav;
	}

	@RequestMapping("/getliker")
	public ModelAndView memberLiker() {
		ModelAndView mav = new ModelAndView("likerAuth");
		List<HashMap> li = sls.getLikers();
		mav.addObject("getliker", li);
		return mav;
	}

	@RequestMapping("/upload")
	public String memberupload() {

		return "t:upview";
	}

	@RequestMapping("/modify")
	@ResponseBody
	public String modify(HttpServletRequest req, HttpSession session) {
		String s_id = (String) session.getAttribute("userId");

		HashMap modify = new HashMap();
		modify.put("sessionId", s_id);

		modify.put("name", req.getParameter("name"));
		modify.put("birth", req.getParameter("birth"));
		modify.put("gender", req.getParameter("gender"));
		modify.put("phone", req.getParameter("phone"));
		modify.put("address", req.getParameter("address"));
		modify.put("pass", req.getParameter("pass"));

		/*
		 * String pass = joinmemberservice.modifypass(s_id);
		 * 
		 * if (pass.equals(req.getParameter("pass")))
		 */
		int check = joinmemberservice.modify(modify);
		if (check == 1) {
			return "TRUE";
		} else {
			return "FALSE";
		}
		/*
		 * }else{ return "not";
		 */
	}

	@RequestMapping("/checkpass")
	@ResponseBody
	public String checkpass(HttpServletRequest req, HttpSession session) {
		String s_id = (String) session.getAttribute("userId");

		String paramPass = req.getParameter("check");

		String dbPass = joinmemberservice.checkpass(s_id);
		if (paramPass.equals(dbPass)) {
			return "true";
		} else {
			return "false";
		}
	}

	@RequestMapping("/myprofile")
	public ModelAndView myprofile(HttpServletRequest req, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if (session.getAttribute("userId") != null) {
			if (session.getAttribute("userId").equals("pupu-system")) {
				String id = (String) session.getAttribute("userId");
				mav.setViewName("t:managerMyProfile");
				List<HashMap> list = ls.profileSystemUsers(id);
				mav.addObject("profile", list);

				return mav;

			} else {
				String id = (String) session.getAttribute("userId");
				mav.setViewName("t:myprofile");
				List<HashMap> list = ls.profileSystemUsers(id);
				mav.addObject("profile", list);
			}
		}
		return mav;

	}

	@RequestMapping("/profile/{a}")
	public ModelAndView profile(HttpServletRequest req, @PathVariable String a) {
		ModelAndView mav = new ModelAndView();
		if (a != null) {
			mav.setViewName("t:profile");
			String name = joinmemberservice.getNick(a);
			if (name == a) {
				List<HashMap> li = ls.profileCheck(name);
				List<HashMap> lis = ms.readAlldata(name);
				System.out.println(li + "/" + lis);
				mav.addObject("data", lis);
				mav.addObject("mssize", lis);
				mav.addObject("profile", li);
				mav.addObject("size", li.size() - 1);
				return mav;
			} else {
				List<HashMap> li = ls.profileCheck(a);
				List<HashMap> lis = ms.readAlldata(a);
				mav.addObject("nick", name);
				mav.addObject("data", lis);
				mav.addObject("mssize", lis);
				mav.addObject("profile", li);
				mav.addObject("size", li.size() - 1);
				return mav;
			}
		}
		return mav;
	}

	@RequestMapping("/provide")
	public ModelAndView showProvide() {
		ModelAndView mav = new ModelAndView("provide");

		return mav;
	}

	@RequestMapping("/cart")
	public ModelAndView cartView(HttpSession session) {

		ModelAndView mav = new ModelAndView();
		if (session.getAttribute("userId").equals("pupu-system")) {
			String nick = (String) session.getAttribute("nickname");
			String id = (String) session.getAttribute("userId");

			String nickid = nick + "(" + id + ")";
			List<HashMap> list = cs.getName(nickid);

			mav.addObject("productList", list);
			mav.setViewName("t:managerCartView");

			return mav;
		} else {

			String nick = (String) session.getAttribute("nickname");
			String id = (String) session.getAttribute("userId");

			String nickid = nick + "(" + id + ")";
			List<HashMap> list = cs.getName(nickid);

			mav.addObject("productList", list);
			mav.setViewName("t:cart");

			return mav;
		}
	}

	@RequestMapping("/cate")

	public ModelAndView cate1(HttpServletRequest req, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String select = req.getParameter("catesel");
		System.out.println(select);
		if (select.equals("의류")) {
			mav.setViewName("t:cateView");
			List<HashMap> li = alvs.cateview(select);
			mav.addObject("cate", li);
		} else if (select.equals("여행")) {
			mav.setViewName("t:cateView");
			List<HashMap> li = alvs.cateview(select);
			mav.addObject("cate", li);
		} else if (select.equals("취미")) {
			mav.setViewName("t:cateView");
			List<HashMap> li = alvs.cateview(select);
			mav.addObject("cate", li);
		} else if (select.equals("자유")) {
			mav.setViewName("t:cateView");
			List<HashMap> li = alvs.cateview(select);
			mav.addObject("cate", li);
		} else {
			mav.setViewName("empty");
			return mav;
		}
		return mav;
	}

	@RequestMapping("/followShow")
	public ModelAndView showfollow(HttpSession session) {
		ModelAndView mav = new ModelAndView("followView");
		String nick = (String) session.getAttribute("nickname");
		String id = (String) session.getAttribute("userId");
		String nickid = nick + "(" + id + ")";
		List<HashMap> li = jfs.followList(nickid);
		mav.addObject("list", li);
		return mav;
	}
}

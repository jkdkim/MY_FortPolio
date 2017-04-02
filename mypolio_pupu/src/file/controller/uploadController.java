package file.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import file.model.uploadService;

@Controller
public class uploadController {

	@Autowired
	uploadService ups;

	@RequestMapping("/file/upload")
	public ModelAndView upfile(String comments, String cate, @RequestParam(name = "file") MultipartFile file,
			HttpSession session) {
		String id = (String) session.getAttribute("userId");
		String name = (String) session.getAttribute("nickname");
		String uid = ups.execute(file, id, comments, name, cate);
		ModelAndView mav = new ModelAndView();
		if (uid != null) {
			mav.setViewName("provide");
			mav.addObject("uid", uid);
			mav.addObject("cate", cate);
		} else {
			mav.setViewName("empty");
		}
		return mav;
	}

	@RequestMapping("/profileupload")
	public String profileupload1(HttpSession session, @RequestParam(name = "file") MultipartFile file) {
		String id = (String) session.getAttribute("userId");
		String uid = ups.profileupload(file, id);
		if (uid != null) {
			return "empty";
		} else {
			return "empty";
		}
	}

	@RequestMapping("/profileSet")
	@ResponseBody
	public String profileSet(HttpSession session) {
		String id = (String) session.getAttribute("userId");
		String uid = ups.profileSet(id);
		if (uid != null) {
			return uid;
		} else {
			return "false";
		}
	}
}

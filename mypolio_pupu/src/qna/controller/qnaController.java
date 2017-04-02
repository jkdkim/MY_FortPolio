package qna.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import qna.model.BoardReadService;
import qna.model.BoardWriteService;

@Controller
public class qnaController {

	@Autowired
	BoardWriteService bws;

	@Autowired
	BoardReadService brs;

	@RequestMapping("/qna/form")
	public ModelAndView qnaboard(HttpServletRequest req, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if (session.getAttribute("userId").equals("pupu-system")) {

			mav.setViewName("t:managerqnaf");

			return mav;
		} else {
			mav.setViewName("t:qnaf");

			return mav;
		}
	}

	// 게시글 작성
	@RequestMapping("/qna/write")
	public ModelAndView qnaboard2(HttpServletRequest req, HttpSession session) {
		ModelAndView mav = new ModelAndView("empty");
		String id = (String) session.getAttribute("userId");

		HashMap qna = new HashMap(); // 게시글 담고있는 hashmap
		qna.put("title", req.getParameter("title"));
		qna.put("id", id);
		qna.put("answer", "");

		qna.put("content", req.getParameter("content"));
		qna.put("pass", req.getParameter("pass"));

		int rst = bws.boardWrite(qna);
		if (rst == 1) {
			mav.setViewName("boView");

		}
		return mav;
	}

	// 목록보기
	@RequestMapping("/qna/board")
	public ModelAndView writeQna(HttpServletRequest req, HttpSession session) {

		ModelAndView mav = new ModelAndView();
		if (session.getAttribute("userId").equals("pupu-system")) {
			List<HashMap> qq = brs.getAll();
			mav.addObject("qna", qq);
			mav.setViewName("t:managerqna");
			return mav;
		} else {

			List<HashMap> qq = brs.getAll();
			mav.addObject("qna", qq);
			mav.setViewName("t:qna");
			return mav;
		}

	}

	// 상세보기
	@RequestMapping("/qna/view")
	public ModelAndView qna(HttpServletRequest req, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if (session.getAttribute("userId").equals("pupu-system")) {
			HashMap qq = brs.getView(req.getParameter("num"));
			mav.addObject("qnaview", qq);
			mav.setViewName("t:managerqnav");
			return mav;
		} else {

			HashMap qq = brs.getView(req.getParameter("num"));
			mav.addObject("qnaview", qq);
			mav.setViewName("t:qnav");

			return mav;
		}
	}
}

package cart.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cart.model.cartService;

@Controller
public class cartController {
	@Autowired
	cartService cs;

	/*@RequestMapping("/cart")
	public ModelAndView cartView(HttpSession session) {
		
		System.out.println("!!");
		
		ModelAndView mav = new ModelAndView("t:cart");
		
		String id = (String)session.getAttribute("userId");
		System.out.println(id);
		List<HashMap> list = cs.managercart(id);
		
		mav.addObject("productList", list);
	
		return mav;
			
	}*/
	
	
	
	
	

}

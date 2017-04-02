package product.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import product.model.ProductInfo;

@Controller
public class AddInfo {

	@Autowired
	ProductInfo pdif;
	
	
	@RequestMapping(value="/product", produces="text/plain;charset=utf-8")
	@ResponseBody
	public String addinfo(HttpServletRequest req, HttpSession session){
		//name:상품명 , price:상품가격 
		String a= (String)session.getAttribute("nickname");
		String b = (String)session.getAttribute("userId");
		String addid = a+"("+b+")";
	HashMap map = new HashMap();
	map.put("name", req.getParameter("name"));
	map.put("price", req.getParameter("price"));
	map.put("addid", addid);
	map.put("fileuuid", req.getParameter("fileuid"));
	map.put("cate" , req.getParameter("cate"));
	boolean rst = pdif.ProductInfoSet(map);	
		if(rst==true) {
			return addid;
		}else {
			return "false";
		}
	}
	
	@RequestMapping(value="/productshow", produces="text/plain;charset=utf-8")
	@ResponseBody
	public String getinfo(HttpServletRequest req, HttpSession session){
		String fnae = req.getParameter("filename");
		List<HashMap> rst = pdif.ProductInfoGet(fnae);
		HashMap map = new HashMap();
		String arr = null;
		for(int i=0;i<rst.size();i++) {
			map = rst.get(i);
		}
		if(rst != null) {
			arr = "[{\"name\":\"";
			arr += (String)map.get("NAME");
			arr += "\",\"price\":\"";
			arr += (String)map.get("PRICE");
			arr += "\",\"id\":\"";
			arr += (String)map.get("ADDID");
			arr += "\",\"cate\":\"";
			arr += (String)map.get("CATE");
			arr += "\"}]";
			System.out.println(arr);
		}
		return arr;
	}
	@RequestMapping("/havs/cart")
	@ResponseBody
	public String setCart(HttpSession session, String fileuuid, String time, String cate) {
		String a = (String)session.getAttribute("userId");
		String b = (String)session.getAttribute("nickname");
		
		String userid = b+"("+a+")";
		HashMap map = new HashMap();
		String nomove = fileuuid+"-"+time;
		List<HashMap> rst = pdif.ProductInfoGet(fileuuid);
		HashMap map2 = new HashMap();
		for(int i=0;i<rst.size();i++) {
			map2 = rst.get(i);
		}
		map.put("id", userid);
		map.put("productcate", cate);
		map.put("productinfo", nomove);
		map.put("productname", map2.get("NAME"));
		map.put("productprice", map2.get("PRICE"));
		boolean r = pdif.setCart(map);
		if(r) {
			return "true";
		}else {
			return "false";
		}
		
	}
}

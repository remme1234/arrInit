package egovframework.example.main.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("main.do")
	public String initMain(HttpServletRequest request,
			ModelMap model) throws Exception{
				
		return "main/main.tiles";
	}
	
	@RequestMapping("roadShop.do")
	public String roadShop(HttpServletRequest request,
			ModelMap model) throws Exception {
		String roadShopNames = request.getParameter("roadShop");
		
		if (roadShopNames != null) {
			String[] roadShop = roadShopNames.split(",");
			
			for (int i=0;  i<roadShop.length; i++) {
				System.out.println(roadShop[i]);
				
				model.addAttribute("roadShop", roadShop);
			}
		}
		
		return "main/main.tiles";
	}
}

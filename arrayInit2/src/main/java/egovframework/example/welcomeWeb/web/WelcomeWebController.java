package egovframework.example.welcomeWeb.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.example.welcomeWeb.service.WelcomeWebService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Controller
public class WelcomeWebController {

	@Resource(name = "welcomeWebService")
	private WelcomeWebService welcomeWebService;
	
	@RequestMapping("welcomeWeb.do")
	public String welcomeWeb(HttpServletRequest request, ModelMap model) throws Exception {
		List<EgovMap> welcomeWebList = welcomeWebService.selectWelcomeWebServiceList();
		
		model.addAttribute("welcomeWebList", welcomeWebList);
		
		return "welcomeWeb/welcomeWeb.tiles";
	}
}

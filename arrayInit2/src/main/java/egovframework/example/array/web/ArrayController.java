package egovframework.example.array.web;

import java.util.Arrays;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.example.array.service.ArrayService;

@Controller
public class ArrayController {

	@Resource(name = "arrayService")
	ArrayService arrayService;
	
	@RequestMapping("array.do")
	public String initArray(HttpServletRequest request, ModelMap model) throws Exception{
		model.addAttribute("seqNoList", arrayService.selectSeqNoList());

		System.out.println(arrayService.selectSeqNoList());
		
		return "array/array.tiles";
	}
	
}

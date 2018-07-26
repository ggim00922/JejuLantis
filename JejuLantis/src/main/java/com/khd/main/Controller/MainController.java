package com.khd.main.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	@RequestMapping(value="admin/bestseller.do",method=RequestMethod.GET)
	public String bestseller() {
		return "admin/bestseller";
	}
}
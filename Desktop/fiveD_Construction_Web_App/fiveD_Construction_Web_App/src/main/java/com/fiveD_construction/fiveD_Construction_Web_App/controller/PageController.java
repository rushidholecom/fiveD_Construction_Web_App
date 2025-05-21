package com.fiveD_construction.fiveD_Construction_Web_App.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
	
	@RequestMapping("/")
	public String homePage() {
		return "home";
	}

	@RequestMapping("signup")
	public String singupPage() {
		return "signup";
	}
}

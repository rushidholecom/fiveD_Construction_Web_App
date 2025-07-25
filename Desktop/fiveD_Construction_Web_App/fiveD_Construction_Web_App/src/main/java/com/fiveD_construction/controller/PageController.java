package com.fiveD_construction.controller;

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
	
	@RequestMapping("login")
	public String loginPage() {
		return "login";
	}
	
	@RequestMapping("home")
	public String homepage() {
		return "home";
	}
	
	@RequestMapping("/adminLogin")
	public String adminLogin() {
		return "adminLogin";
	}
}

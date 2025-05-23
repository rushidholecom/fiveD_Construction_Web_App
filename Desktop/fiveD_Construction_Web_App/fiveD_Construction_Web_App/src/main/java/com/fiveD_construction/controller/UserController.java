package com.fiveD_construction.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.fiveD_construction.entity.User;
import com.fiveD_construction.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;

	@PostMapping("book")
	public String userSingup(@ModelAttribute User user, Model model) {
		
		int status = userService.userSignup(user);
		
		if(status==1) {
			model.addAttribute("msg", "Booking Register Successfully");
			return "booked";
		}else {
			model.addAttribute("msg", "Something went Wrong!");
			return "signup";
		}
		
	}
	
	
}

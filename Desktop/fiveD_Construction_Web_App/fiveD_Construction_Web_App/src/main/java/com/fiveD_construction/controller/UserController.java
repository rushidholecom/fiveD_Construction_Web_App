package com.fiveD_construction.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@GetMapping("bookStatus")
	public String userLogin(@RequestParam String email, @RequestParam String password, Model model) {

		boolean logedIn = userService.userLogin(email, password);
		
		if(logedIn) {
			model.addAttribute("msg", "Login Sucessfull" );
			return "status";
		}else {
			model.addAttribute("msg", "Something went wrong !");
			return "login";
		}
		
	}
	
	
}

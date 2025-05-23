package com.fiveD_construction.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fiveD_construction.dao.UserDao;
import com.fiveD_construction.entity.User;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;

	public int userSignup(User user) {
		
		int status = userDao.userSignup(user);
		
		return status;
	}
	
	public boolean userLogin(String email, String password) {
		
		boolean login = userDao.userLogin(email, password);
		return login;
		
		
		
	}
}

package com.fiveD_construction.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fiveD_construction.entity.User;

@Repository
public class UserDao {

	@Autowired
	private SessionFactory  sessionFactory;
	
	public int userSignup(User user) {
		Session session = sessionFactory.openSession();
		try {
			
			session.save(user);
			session.beginTransaction().commit();
			session.close();
			
			return 1;
			
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
		
	}
}

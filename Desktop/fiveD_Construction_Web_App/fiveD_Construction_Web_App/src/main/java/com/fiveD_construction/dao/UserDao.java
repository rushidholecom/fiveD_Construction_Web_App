package com.fiveD_construction.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.hibernate.criterion.SimpleExpression;
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


	public boolean userLogin(String email, String password) {
		
		Session session = sessionFactory.openSession();
		Criteria criteria = session.createCriteria(User.class);
		SimpleExpression uname = Restrictions.eq("email", email);
		SimpleExpression pass = Restrictions.eq("password", password);
		
		criteria.add(Restrictions.and(uname,pass));
		
		List<User> list = criteria.list();
		
		if(list.isEmpty()) {
			return false;
		}else {
			return true;
		}
	}
}

package com.niit.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.niit.model.User;
@Service
@Repository("userDAO")
@Transactional
public class UserDaoImpl implements UserDao 
  
{
	@Autowired
	private SessionFactory sessionFactory;
	public UserDaoImpl(SessionFactory sessionFactory) {
	    this.sessionFactory = sessionFactory;
	}
	//registering the new user 
	public void insertUser(User user) {
		sessionFactory.getCurrentSession().persist(user);
		
	}
	//getting the user details using the email field
	public User getUserDetails(String email) {
		{
			User user =(User) sessionFactory.getCurrentSession().get(User.class, new String(email));	
			return user;
		}
	}
	//getting the user details by its user id
	public User getUById(String userId) {
		{
			User user =(User) sessionFactory.getCurrentSession().get(User.class, new String(userId));	
			return user;
		}
	}
	//fetching all the user from user table 
	public List<User> getAllCustomers() {
		sessionFactory.getCurrentSession().createQuery("from User").list();

		return null;
	}

	public User getCustomerByUsername(String username) {
		return null;
	}

	public boolean vaildate(String user, String password) {
		// TODO Auto-generated method stub
		return false;
	}

	public User get(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	public Object getAll() {
		// TODO Auto-generated method stub
		return null;
	}
	public User getUById(int customerId) {
		// TODO Auto-generated method stub
		return null;
	}
 
	
}

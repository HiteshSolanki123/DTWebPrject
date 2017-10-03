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
	public void insertUser(User user) {
		sessionFactory.getCurrentSession().persist(user);
		
	}

	public User getUserDetails(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	public User getUById(int customerId) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<User> getAllCustomers() {
		// TODO Auto-generated method stub
		return null;
	}

	public User getCustomerByUsername(String username) {
		// TODO Auto-generated method stub
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
 
	
}

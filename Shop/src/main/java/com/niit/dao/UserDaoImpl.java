package com.niit.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.niit.model.User;

@Repository("userDAO")
@Transactional
public class UserDaoImpl implements UserDao 
  
{
	@Autowired
	private SessionFactory sessionFactory;
 
	@Override
	public void insertUser(User user) {
		sessionFactory.getCurrentSession().save(user);
	}

	@Override
	public User  getUserDetails(String userid)
	{
		User user =(User) sessionFactory.getCurrentSession().get(User.class, new String(userid));	
		return user;
	}
	@Override
	public User getUById(int customerId) {
		
		
		User u = (User) sessionFactory.getCurrentSession().get(User.class, new Integer(customerId));
		return  u;
	}

	@Override
	public List<User> getAllCustomers() {
		
		return sessionFactory.getCurrentSession().createQuery("from User").list();
	}
	//@Override
	public boolean vaildate(String user, String password) {
		
		return false;
	}//

	@Override
	public User getCustomerByUsername(String username) {
		
		return null;
	}

	@Override
	public User get(String name) {
		
		return null;
	}
}

package com.niit.dao;
import java.util.List;

import com.niit.model.User;

public interface UserDao 
{
	public void insertUser(User user);
	public User getUserDetails(String email);

   public User getUById(int customerId);

   public List<User> getAllCustomers();
   public User getCustomerByUsername(String username);
   public boolean  vaildate (String user,String password);
   public User get(String name);
}
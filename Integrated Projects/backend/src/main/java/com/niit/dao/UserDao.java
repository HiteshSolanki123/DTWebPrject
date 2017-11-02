package com.niit.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.niit.model.User;

@Service
public interface UserDao {
	public void insertUser(User user);

	public User getUserDetails(String email);

	public List<User> getAllCustomers();

	public User getCustomerByUsername(String username);

}

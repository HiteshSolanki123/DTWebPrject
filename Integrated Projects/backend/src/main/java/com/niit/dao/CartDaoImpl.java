package com.niit.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Cart;

@Repository("cartDao")
public class CartDaoImpl implements CartDao
{
	@Autowired
	SessionFactory sessionFactory;
	public boolean addCart(Cart cart) {
		try{
			sessionFactory.getCurrentSession().save(cart);
			return true;
		}
		catch(Exception ex){
			return false;	
		}
		
	}

	public boolean updateCart(Cart cart) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean deleteCart(Cart cart) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean getCartItem(int cartItemId) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<Cart> getCartItems(String username) {
		// TODO Auto-generated method stub
		return null;
	} 

}

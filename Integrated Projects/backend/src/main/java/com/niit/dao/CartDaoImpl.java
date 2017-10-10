package com.niit.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Cart;

@Repository("cartDao")
public class CartDaoImpl implements CartDao {
	@Autowired
	SessionFactory sessionFactory;
	@Transactional
	public boolean addCart(Cart cart) {
		try {
			sessionFactory.getCurrentSession().save(cart);
			return true;
		} catch (Exception ex) {
			return false;
		}

	}
	@Transactional
	public boolean updateCart(Cart cart) {
		try{
			sessionFactory.getCurrentSession().saveOrUpdate(cart);
			return true;
			}
			catch(Exception e){
				System.out.println("Exception arised"+e);
				
			}
			return false;
		
	}
	@Transactional
	public boolean deleteCart(Cart cart) {
		try{
		sessionFactory.getCurrentSession().delete(cart);
		return true;
		}
		catch(Exception e){
			System.out.println("Exception arised"+e);
			
		}
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

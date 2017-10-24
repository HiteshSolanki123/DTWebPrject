package com.niit.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.SharedSessionContract;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Cart;
import com.niit.model.Product;

@Repository("cartDao")
public class CartDaoImpl implements CartDao {
	@Autowired
	SessionFactory sessionFactory;
	
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
	@Transactional
	public Cart getCartItem(int cartItemId) {
		@SuppressWarnings("unchecked")
		Query query = sessionFactory.getCurrentSession().createQuery("from Cart where cartItemId=:cartItemId");
		query.setParameter("cartItemId",cartItemId);
		return (Cart) query;
	}
	@Transactional
	public List<Cart> getCartItems(String email) {
		Query query = sessionFactory.getCurrentSession().createQuery("from Cart where email=:email");
		query.setParameter("email",email);
		@SuppressWarnings("unchecked")
		List<Cart> list=query.list();
		return list;
	}
	
	@Transactional
	public boolean addToCart(Cart cart) {
		try {
			/*Session session = sessionFactory.openSession();*/
			sessionFactory.getCurrentSession().save(cart);
			/*session.save(cart);
			session.beginTransaction().commit();*/
			return true;
		} catch (Exception ex) {
			return false;
		}
	}

}

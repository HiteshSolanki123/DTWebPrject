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
	//for saving and updating the cart 
	@Transactional
	public boolean updateCart(Cart cart) {
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(cart);
			return true;
		} catch (Exception e) {
			System.out.println("Exception arised" + e);

		}
		return false;

	}
	// for deleting the cart
	@Transactional
	public boolean deleteCart(Cart cart) {
		try {
			sessionFactory.getCurrentSession().delete(cart);
			return true;
		} catch (Exception e) {
			System.out.println("Exception arised" + e);

		}
		return false;
	}
	// getting the cart details by id
	@Transactional
	public Cart getCartItem(int cartItemId) {
		Session session = sessionFactory.openSession();
		Cart cart = (Cart) session.get(Cart.class, new Integer(cartItemId));
		/* sessionFactory.getCurrentSession().get(Product.class,id); */
		return cart;
	}
	// getting the email details from the cart table
	@Transactional
	public List<Cart> getCartItems(String email) {
		Query query = sessionFactory.getCurrentSession().createQuery("from Cart where email=:email");
		query.setParameter("email", email);
		@SuppressWarnings("unchecked")
		List<Cart> list = query.list();
		return list;
	}
	// for inserting the data in the cart table 
	@Transactional
	public boolean addToCart(Cart cart) {
		try {

			sessionFactory.getCurrentSession().save(cart);

			return true;
		} catch (Exception ex) {
			return false;
		}
	}

}

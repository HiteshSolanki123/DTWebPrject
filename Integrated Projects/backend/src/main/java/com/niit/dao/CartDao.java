package com.niit.dao;

import java.util.List;

import com.niit.model.Cart;

public interface CartDao {

		public boolean addToCart(Cart cart);
		public boolean updateCart(Cart cart);
		public boolean deleteCart(Cart cart);
		public Cart getCartItem(int cartItemId);
		public List<Cart>getCartItems(String email);
		
		
		
}

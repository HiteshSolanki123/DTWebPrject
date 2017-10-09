package com.niit.dao;

import java.util.List;

import com.niit.model.Cart;

public interface CartDao {

		public boolean addCart(Cart cart);
		public boolean updateCart(Cart cart);
		public boolean deleteCart(Cart cart);
		public boolean getCartItem(int cartItemId);
		public List<Cart>getCartItems(String username);
}

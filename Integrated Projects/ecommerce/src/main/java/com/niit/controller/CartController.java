package com.niit.controller;

import java.util.List;

import javax.enterprise.inject.Model;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CartDao;
import com.niit.dao.ProductDao;
import com.niit.model.Cart;
import com.niit.model.Product;

@Controller
public class CartController {
	@Autowired
	CartDao cartDAO;
	@Autowired
	ProductDao productDAO;
	@Autowired
	Product pro;
	
	HttpSession session;
   //for  providing the URI pattern for which handler method will be used
	@RequestMapping(value = { "/cart" })
	public ModelAndView cartList() {
		//for fetching the current user login
		String email = SecurityContextHolder.getContext().getAuthentication().getName();
		//fetching the email from the cart table
		List<Cart> cart = cartDAO.getCartItems(email);
		
		return new ModelAndView("Cart", "cart", cart);

	}
	
	@RequestMapping("/cart/{pid}")
	public String addToCart(@PathVariable int pid) {
		//create a Cart object
		Cart cart = new Cart();
		//fetching the productid
		Product product = productDAO.getById(pid);
		//fetching the current user login
		String email = SecurityContextHolder.getContext().getAuthentication().getName();
		//setting all the cart fields
		cart.setDesc(product.getDesc());
		cart.setManufacturer(product.getManufacturer());
		cart.setPname(product.getPname());
		cart.setCartItemId(3);
		cart.setOrderId(3);
		cart.setStatus("NP");
		cart.setEmail(email);
		cart.setPrice(String.valueOf(product.getPrice()));
		cart.setQuantity(1);
		//using the cartDAO object the data is stored in the database bt addToCart method in dao class
		cartDAO.addToCart(cart);
		return "redirect:/cart";
	}

	@RequestMapping("/delete/{temp}")
	public String deleteCart(@PathVariable String temp) {
		int cartItemId = Integer.parseInt(temp);
		Cart car = cartDAO.getCartItem(cartItemId);
		cartDAO.deleteCart(car);
		return "redirect:/cart";

	}

	

}

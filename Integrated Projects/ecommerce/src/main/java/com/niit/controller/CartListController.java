package com.niit.controller;

import java.util.List;

import javax.enterprise.inject.Model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CartDao;
import com.niit.model.Cart;


@Controller
public class CartListController {

	@Autowired
	CartDao cartDAO;
	@RequestMapping(value={"/Cart"})
	public ModelAndView cartList(){
		
	String email = SecurityContextHolder.getContext().getAuthentication().getName();
	List<Cart> cart=cartDAO.getCartItems(email);
		
	return new ModelAndView("Cart","cart",cart);
		
	}
	@RequestMapping("/deleteCartItem/${Id}")
	public String deleteCart(@PathVariable int cartItemId) 
	{
		Cart car = cartDAO.getCartItem(cartItemId);
		
		cartDAO.deleteCart(car);
		return "redirect:/Cart";
		
	}
	@RequestMapping("/checkout")
	public String checkout(Model model)
	{
		return "checkout";
	}
}
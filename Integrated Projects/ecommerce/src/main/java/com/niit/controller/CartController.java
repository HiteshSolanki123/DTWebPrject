package com.niit.controller;

import java.security.Principal;
import java.util.List;

import javax.enterprise.inject.Model;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CartDao;
import com.niit.dao.ProductDao;
import com.niit.dao.UserDao;
import com.niit.model.Cart;
import com.niit.model.Product;
import com.niit.model.User;

@Controller
@RequestMapping("/cart")
public class CartController {
	@Autowired
	CartDao cartDAO;
	@Autowired
	ProductDao productDAO;
	@Autowired
	Product pro;
	/*@Autowired
	Cart cart;*/
	HttpSession session;
	
	
	@RequestMapping("/addtocart/{pid}")
	public String addToCart(@PathVariable String pid) 
	{
		Cart cart = new Cart();
		Product product = productDAO.getById(pid);
		cart.setProductId(Integer.parseInt(pid));
		String email = SecurityContextHolder.getContext().getAuthentication().getName();
		cart.setDesc(product.getDesc());
		cart.setManufacturer(product.getManufacturer());
		cart.setPname(product.getPname());
		/*cart.setCartItemId(3);*/
		cart.setOrderId(3);
		cart.setStatus("NP");
		cart.setEmail(email);
		cart.setPrice(String.valueOf(product.getPrice()));
		cart.setQuantity(2);
		cartDAO.addToCart(cart);
		
		return "redirect:/productList";	
	}
	
	
}

package com.niit.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@Repository
public class HomeCtrl {
	@RequestMapping(value = { "/", "/Home" })
	public String goToHome(Model model) {
		model.addAttribute("message", "Thank you for visiting Shopping Cart");
		return "Home";
	}
	@RequestMapping("/checkout")
	public String checkout(Model model) {
		model.addAttribute("message","checkout");
		return "checkout";
	}
	

	@RequestMapping("/AboutUs")
	public String aboutus(Model model) {
		model.addAttribute("message", "Website Info");
		return "AboutUs";
	}
		@RequestMapping("/thankyou")
		public String thankyou(Model model) {
			model.addAttribute("message", "Website Info");
			return "thankyou";
			
	}
		
	@RequestMapping("/addProduct")
	public String addProduct(Model model) {
		model.addAttribute("message", "adding the product");
		return "addProduct";

	}

	@RequestMapping("/ContactUs")
	public String contactus(Model model) {
		model.addAttribute("message", "Website Info");
		return "ContactUs";
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(name = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			//it shows an error message if user enter invalid credentials
			model.addObject("message", "Invalid username and password!");
		}

		if (logout != null) {
			//shows message if user is being logout
			model.addObject("message", "You've been logged out successfully.");
		}
		model.setViewName("login");

		return model;

	}
	@RequestMapping(value="/perform-logout")
	public String logout(HttpServletRequest request , HttpServletResponse response){
		//fetching the authentication
		Authentication auth =SecurityContextHolder.getContext().getAuthentication();
		if(auth!=null){
		new SecurityContextLogoutHandler().logout(request,response,auth);	
		}
		return "redirect:/login?logout";
		
	}
	

	


}

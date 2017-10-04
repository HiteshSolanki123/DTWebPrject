package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Repository
public class HomeCtrl {
	@RequestMapping(value = { "/", "/Home" })
	public String goToHome(Model model) {
		model.addAttribute("message", "Thank you for visiting Shopping Cart");
		return "Home";
	}

	@RequestMapping("/Login")
	public String login(Model model) {
		model.addAttribute("message", "login here");
		return "Login";
	}

	@RequestMapping("/Basket")
	public String basket(Model model) {
		model.addAttribute("message", "your products");
		return "Basket";
	}

	@RequestMapping("/AboutUs")
	public String aboutus(Model model) {
		model.addAttribute("message", "Website Info");
		return "AboutUs";

	}

	@RequestMapping("/ContactUs")
	public String contactus(Model model) {
		model.addAttribute("message", "Website Info");
		return "ContactUs";
	}

	@RequestMapping("/Category")
	public String category(Model model) {
		model.addAttribute("message", "Website Info");
		return "Category";
	}

	@RequestMapping("/Helmets")
	public String helmets(Model model) {
		model.addAttribute("message", "login here");
		return "Helmets";
	}

}

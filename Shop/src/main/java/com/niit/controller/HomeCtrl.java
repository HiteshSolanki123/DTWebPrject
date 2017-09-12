package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeCtrl 
{
	@RequestMapping(value={"/","/Home"})
	public  String goToHome(Model model)
	{
		model.addAttribute("message", "Thank you for visiting Shopping Cart");
		return "Home";
	}
	@RequestMapping("/Login")
	public  String login(Model model)
	{
		model.addAttribute("message", "login here");
		return "Login";
	}
	@RequestMapping("/Registration")
	public  String Registration(Model model)
	{
		model.addAttribute("message", "New User Register Here");
		return "Registration";
	}
	@RequestMapping("/Basket")
	public  String basket(Model model)
	{
		model.addAttribute("message", "your products");
		return "Basket";
}
	@RequestMapping("/AboutUs")
	public  String aboutus(Model model)
	{
		model.addAttribute("message", "Website Info");
		return "AboutUs";
		
	}
	@RequestMapping("/ContactUs")
	public  String contactus(Model model)
	{
		model.addAttribute("message", "Website Info");
		return "ContactUs";
	}
}


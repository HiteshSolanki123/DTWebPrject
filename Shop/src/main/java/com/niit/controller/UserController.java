package com.niit.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.dao.UserDao;
import com.niit.model.User;





@Controller
@RequestMapping("/Registration")
public class UserController 
{	
	private static Logger log = LoggerFactory.getLogger(UserController.class);
	
	@Autowired UserDao userDAO;
	@Autowired User  user;
	@Autowired  HttpSession session;
	
	@RequestMapping("/")
	public  String Registration(Model model)
	{
		model.addAttribute("user", new User());
		return "Registration";
	}
	@PostMapping(value = "/insert")
	public String insert(@ModelAttribute("user") User user, Model model,BindingResult results)
	{
			user.setRole("user");
			user.setEnabled(true);
			userDAO.insertUser(user);
			return "redirect:/Login";
	}

}

package com.niit.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.UserDao;
import com.niit.model.User;

@Controller
@Repository
@RequestMapping("/Registration")
public class UserController {
	@Autowired
	UserDao userDAO;
	@Autowired
	User user;
	@Autowired
	HttpSession session;

	@RequestMapping("/")
	public String Registration(Model model) {
		model.addAttribute("user", new User());
		return "Registration";
	}

	@PostMapping(value = "/insert")
	public String insert(@ModelAttribute("user") User user, Model model, BindingResult results) {
		{
			
			user.setRole("ROLE_USER");
			user.setEnabled(true);
			userDAO.insertUser(user);
			return "redirect:/login";

		}
	}
	
	
}
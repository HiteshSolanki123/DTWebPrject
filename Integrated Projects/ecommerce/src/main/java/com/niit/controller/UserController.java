package com.niit.controller;

import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.dao.ProductDao;
import com.niit.dao.UserDao;
import com.niit.model.Product;
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
			return "redirect:/Login";

		}
	}
	@Autowired
	ProductDao productDAO;
	
	@RequestMapping("/login_success")
	public String loginSuccess(HttpSession session,Model m)
	{
		System.out.println("--Login Successful---");
		
		String page=null;
		
		boolean loggedIn=true;
		
		//Retrieving the username
		String email = SecurityContextHolder.getContext().getAuthentication().getName();
		session.setAttribute("email",email);
		session.setAttribute("loggedIn",loggedIn);
		
		//Retrieving the Role
		@SuppressWarnings("unchecked")
		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		
		for(GrantedAuthority role:authorities)
		{
			System.out.println("---Role:"+role.getAuthority()+" Email:"+email+"----");
			if(role.getAuthority().equals("ROLE_ADMIN"))
			{
				page="Admin";
			}
			else
			{
				List<Product> prodlist=productDAO.getProductDetails();
				m.addAttribute("prodlist",prodlist);
				
				page="Home";
			}
		}
		
		return page;
	}


}

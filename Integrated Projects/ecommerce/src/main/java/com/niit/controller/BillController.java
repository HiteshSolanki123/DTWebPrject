package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.BillDao;
import com.niit.dao.CartDao;
import com.niit.model.Bill;
import com.niit.model.Cart;

@Controller
@Repository
@RequestMapping("/Bill")
public class BillController {
	
	@Autowired
	BillDao billDAO;
	@Autowired
	Bill bill;
	@Autowired
	CartDao cartDAO;
	@Autowired
	Cart cart;
	@Autowired
	HttpSession session;
	
	@RequestMapping("/")
	public ModelAndView Checkout(Model model) {
		model.addAttribute("bill", new Bill());
		return new ModelAndView("checkout", "Bill", bill);
		}
	@PostMapping(value = "/insert")
	public String insert(@ModelAttribute("bill") Bill bill, Model model, BindingResult results) {
		{
			
			String email = SecurityContextHolder.getContext().getAuthentication().getName();
			bill.setEmail(email);
			
			billDAO.addBill(bill);
			return "redirect:/Payment/";

		}
	}
}
	



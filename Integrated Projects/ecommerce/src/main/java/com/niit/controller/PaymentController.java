package com.niit.controller;

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

import com.niit.dao.PaymentDao;
import com.niit.model.Payment;

@Controller
@Repository
@RequestMapping("/Payment")
public class PaymentController {
	@Autowired
	PaymentDao paymentDAO;
	@Autowired
	Payment payment;
	@Autowired
	HttpSession session;
	
	@RequestMapping("/")
	public String Payment(Model model) {
		model.addAttribute("payment", new Payment());
		return "Payment";
	}
	
	@PostMapping(value = "/insert")
	public String insert(@ModelAttribute("payment") Payment payment, BindingResult results, Model model) {
		{
			String email = SecurityContextHolder.getContext().getAuthentication().getName();
			payment.setEmail(email);
			paymentDAO.addPay(payment);
			return "redirect:/confirm/";

		}
	}
	
}
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.BillDao;
import com.niit.dao.CartDao;
import com.niit.dao.PaymentDao;
import com.niit.model.Bill;
import com.niit.model.Cart;
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
	@Autowired
	BillDao billDAO;
	@Autowired
	CartDao cartDao;

	@RequestMapping("/")
	public String Payment(Model model) {
		model.addAttribute("payment", new Payment());
		return "Payment";
	}

	@RequestMapping(value = { "/confirm/{email}" })
	public ModelAndView confirm() {
		// for fetching the current user login
		String email = SecurityContextHolder.getContext().getAuthentication().getName();
		// fetching the email from the cart table
		List<Bill> bill = billDAO.getBills(email);

		return new ModelAndView("confirm", "bill", bill);
	}

	@PostMapping(value = "/insert")
	public String insert(@ModelAttribute("payment") Payment payment, BindingResult results, Model model) {
		{
			// for fetching the current user login
			String email = SecurityContextHolder.getContext().getAuthentication().getName();
			payment.setEmail(email);
			//inserting the data in payment table
			paymentDAO.addPay(payment);
			return "redirect:/confirm/{email}";

		}
	}

}
package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.BillDao;
import com.niit.dao.CartDao;
import com.niit.model.Bill;

@Controller
public class ConfirmController {
	@Autowired
	BillDao billDAO;
	@Autowired
	CartDao cartDao;
	@RequestMapping(value={"/confirm/{email"})
	@ResponseBody ModelAndView getById(@PathVariable String email) {
		ModelAndView model=new ModelAndView("confirm"); 
		Bill bill = billDAO.getEmail(email);
		
		model.addObject("bill", bill);
		model.addObject("cartP", cartDao.getCartItems(email));
		return model;
}
}

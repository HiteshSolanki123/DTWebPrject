package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.ProductDao;
import com.niit.model.Product;
@Controller
public class ProductViewController {
	@Autowired
	ProductDao productDAO;
	@RequestMapping(value={"/product/{pid}"})
	@ResponseBody ModelAndView getById(@PathVariable int pid, Model model) {
		Product product = productDAO.getById(pid);

		return new ModelAndView("product", "prod", product);
	}
	
	
}

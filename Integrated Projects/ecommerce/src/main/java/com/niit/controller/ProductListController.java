package com.niit.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.ProductDao;
import com.niit.model.Product;

@Controller
public class ProductListController {
	@Autowired
	ProductDao productDAO;

	@RequestMapping(value = { "/productList" })
	public ModelAndView getAllProducts() {
		//viewing all the product in webpage
		List<Product> product = productDAO.getProductDetails();

		return new ModelAndView("productList", "product", product);

	}

	@RequestMapping("/deletePro/{temp}")
	public String deleteProId(@PathVariable String temp) {
		int pid = Integer.parseInt(temp);
		@SuppressWarnings("unused")
		//converting the string into int
		int getById = Integer.parseInt(temp);
		//fetching the pid from the product table
		Product produ = productDAO.getById(pid);
		//deleting the fetched product
		productDAO.deleteProduct(produ);
		return "redirect:/productList";
}
	
	@RequestMapping(value="/updatePro/{pid}", method= RequestMethod.GET)
	public ModelAndView editProduct(@PathVariable int pid)
	{
		ModelAndView mv=new ModelAndView("Admin");
		mv.addObject("userClickAddProducts", true);
		mv.addObject("title","Manage Products");
		//fetch the product by product id(pid) from database
		Product prod2=productDAO.getById(pid);
		//set the product from database
		mv.addObject("product",prod2);
		
		return mv;
		
	}
}


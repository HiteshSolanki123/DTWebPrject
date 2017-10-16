package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.ProductDao;
import com.niit.model.Product;
@Controller
public class ProductListController {
	@Autowired
	ProductDao productDAO;
	@RequestMapping(value={"/productList"})
	public ModelAndView getAllProducts(){
		List<Product> product= productDAO.getProductDetails();
		
		return new ModelAndView("productList","product",product);
		
	}
	
	
}

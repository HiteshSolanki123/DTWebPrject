package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.niit.dao.*;
import com.niit.model.Product;

@Controller
public class ProductController 
{
	@Autowired
	ProductDao productDAO = new ProductDaoImpl();
	
	@RequestMapping(value={"/v/get"})
	@ResponseBody List<Product> view()
	{
		return  productDAO.getAll();
	}
	

}

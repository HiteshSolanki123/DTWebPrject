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
		List<Product> product = productDAO.getProductDetails();

		return new ModelAndView("productList", "product", product);

	}

	@RequestMapping("/deletePro/{temp}")
	public String deleteProId(@PathVariable String temp) {
		int pid = Integer.parseInt(temp);
		@SuppressWarnings("unused")
		int getById = Integer.parseInt(temp);
		Product produ = productDAO.getById(pid);
		productDAO.deleteProduct(produ);
		return "redirect:/productList";
}
	/*
	@RequestMapping(value="/updatePro/{pid}")  
    public ModelAndView saveOrUpdate(@PathVariable int pid, @ModelAttribute("product") Product product, ModelAndView model){  
		System.out.println("before update");
		model.addObject("product", productDAO.getById(pid));
		productDAO.saveOrUpdate(product);
        return new ModelAndView("redirect:/Admin/");  
    }  */
	/*
	@RequestMapping(value="/updatePro/{pid}", method= RequestMethod.GET)
	public String editProduct(@PathVariable("pid") int pid, Model model) {
		System.out.println("before update");
		Product pro = productDAO.getById(pid);
	model.addAttribute("product",pro );
	model.addAttribute("products", productDAO.getAll());
	System.out.println("after update" + pro.getPname());
	return "redirect:/Admin/";
	}*/
	@RequestMapping(value="/updatePro/{pid}", method= RequestMethod.GET)
	public ModelAndView editProduct(@PathVariable int pid)
	{
		ModelAndView mv=new ModelAndView("Admin");
		mv.addObject("userClickManageProducts", true);
		mv.addObject("title","Manage Products");
		//fetch the product from database
		Product prod2=productDAO.getById(pid);
		//set the product from database
		mv.addObject("product",prod2);
		
		return mv;
		
	}
}


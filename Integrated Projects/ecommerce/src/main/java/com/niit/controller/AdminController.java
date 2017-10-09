package com.niit.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.dao.ProductDao;
import com.niit.model.Product;

@Controller
@Repository
@RequestMapping("/Admin")
public class AdminController {
	@Autowired
	ProductDao productDAO;
	@Autowired
	Product product;
	HttpSession session;

	@RequestMapping("/")
	public String Admin(Model model) {
		model.addAttribute("product", new Product());
		return "Admin";
	}

	@PostMapping(value = "/insert")
	public String insert(@ModelAttribute("product") Product product, Model model, BindingResult results,HttpServletRequest request ) {
		{
			/*if(!product.getFile().getOriginalFilename().equals(""))
			{
				FileUploadUtility.uploadFile(request,product.getFile(),product.getCode());
			}*/
			productDAO.insertProduct(product);
			return "redirect:/Admin/";

		}
	}
}

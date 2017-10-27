package com.niit.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.ProductDao;
import com.niit.model.Product;
@Controller
@Repository
@RequestMapping("/Admin")
public class ProductController {
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
	public String insert(@ModelAttribute("product") Product product, Model model, BindingResult results, 
			HttpServletRequest request) {
		{
			if(product.getPid()==0){
			productDAO.addProduct(product);
			}else
			{
				productDAO.saveOrUpdate(product);
			}
			MultipartFile image = product.getFile();
			if (image != null && !image.isEmpty()) {
				Path path = Paths
						.get("E:/TTT/ecommerce/src/main/webapp/resources/images/product/"
								+ product.getPid() + ".jpg");

				try {
					image.transferTo(new File(path.toString()));
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					
					e.printStackTrace();
				}

			}
			return "redirect:/productList/";
			
			

		}
	}
	

	
	
	
	}

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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

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
	/*@Bean
	public MultipartResolver multipartResolver() {
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
		multipartResolver.setMaxUploadSize(10240000);
		return multipartResolver;*/
		
	@PostMapping(value = "/insert")
	public String insert(@ModelAttribute("product") Product product, Model model, BindingResult results, 
			HttpServletRequest request) {
		{
			/*
			if(!product.getFile().getOriginalFilename().equals(""))
			{
				FileUploadUtility.uploadFile(request, product.getFile(),product.getPid());
			}*/
			productDAO.addProduct(product);
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
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			}
			return "redirect:/productList/";
			
			

		}
	}

	@PostMapping(value = "/delete")
	public String delete(@ModelAttribute("product") Product product, Model model, BindingResult results,
			HttpServletRequest request) {
		{
			
			productDAO.delete(product);
			return "redirect:/Admin/";

		}
	}

	@PostMapping(value = "/saveOrUpdate")
	public String saveOrUpdate(@ModelAttribute("product") Product product, Model model, BindingResult results,
			HttpServletRequest request) {
		productDAO.saveOrUpdate(product);
		return "redirect:/Admin/";

	}/*
	@RequestMapping(value = "/admin/product/addProduct", method = RequestMethod.POST)
	public String addProduct(@Valid @ModelAttribute(value = "productFormObj") Product product, BindingResult result) {
		// Binding Result is used if the form that has any error then it will
		// redirect to the same page without performing any functions
		if (result.hasErrors())
			return "addProduct";
		productDAO.addProduct(product);
		MultipartFile image = product.getFile();
		if (image != null && !image.isEmpty()) {
			Path path = (Path) Paths.get("E:/TTT/ecommerce/src/main/webapp/resources/images/product"
							+ product.getPid() + ".jpg");

			try {
				image.transferTo(new File(path.toString()));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return "redirect:/getAllProducts";

	}*/
	
	
	
	}

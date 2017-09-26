package com.niit.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

public class AdminController {
	@RequestMapping("/Admin")
	public String admin(Model model) {
		model.addAttribute("message", "login here");
		return "Admin";
	}
}

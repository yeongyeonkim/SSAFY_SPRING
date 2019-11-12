package com.ssafy.pms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PhoneController {
	
	@GetMapping("/home")
	public String home(Model model) {
		model.addAttribute("data", "hello, boot!");
		return "start"; // view name
	}
}

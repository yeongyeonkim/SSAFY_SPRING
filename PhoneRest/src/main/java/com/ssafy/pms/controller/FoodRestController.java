package com.ssafy.pms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.pms.service.FoodService;

@RestController
public class FoodRestController {
	
	@Autowired
	FoodService service;
	
	
}

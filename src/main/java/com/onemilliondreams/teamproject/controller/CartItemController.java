package com.onemilliondreams.teamproject.controller;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.onemilliondreams.teamproject.service.CartItemService;

@Controller
public class CartItemController {
	
	@Resource
	private CartItemService cartItemService;
	
	@PostMapping("/cartitem-create")
	public void cart(HttpServletRequest request) {
		
		
	}
}














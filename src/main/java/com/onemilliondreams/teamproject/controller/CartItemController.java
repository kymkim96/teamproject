package com.onemilliondreams.teamproject.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.onemilliondreams.teamproject.dto.CartItemDto;
import com.onemilliondreams.teamproject.service.CartItemService;

@Controller
public class CartItemController {
	
	@Resource
	private CartItemService cartItemService;
	
	@GetMapping("/cart")
	public String cart(HttpServletRequest request) {
		
		// TODO: 로그인한 사용자의 쇼핑카트를 불러올 경우
		
		// 로그인하지 않은 사용자의 쇼핑카트를 불러올 경우
		Cookie[] cookies = request.getCookies();
		for (Cookie cookie : cookies) {
			
		}
		
		// List<CartItemDto> cartItems = cartItemService.getCartItems(); 
		
		return "cart/Cart";
	}
}














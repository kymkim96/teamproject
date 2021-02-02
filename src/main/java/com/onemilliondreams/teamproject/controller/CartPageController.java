package com.onemilliondreams.teamproject.controller;

import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.onemilliondreams.teamproject.dto.CartCreateRequestDto;
import com.onemilliondreams.teamproject.dto.CartDto;
import com.onemilliondreams.teamproject.dto.CartItemReadResponseDto;
import com.onemilliondreams.teamproject.service.CartItemService;
import com.onemilliondreams.teamproject.service.CartService;

@Controller
@RequestMapping("/cart")
public class CartPageController {

	private static final Logger logger = LoggerFactory.getLogger(CartPageController.class);
	
	@Resource
	private CartService cartService;
	@Resource
	private CartItemService cartItemService;
	
	@GetMapping("/cookie-create")
	public String cookieCreate(HttpServletResponse response) {
		
		Cookie cookie = new Cookie("cid", "3");
		cookie.setMaxAge(365*24*60*60);
		cookie.setPath("/");
		response.addCookie(cookie);
		
		return "index";
	}
	
	@GetMapping("/index")
	public String index(HttpServletRequest request, HttpSession session, Model model) {
		
		CartDto cart = new CartDto();
		
		// 로그인한 사용자의 쇼핑카트를 불러올 경우
		String uaid = (String) session.getAttribute("sessionUaid");
		if (uaid != null) {
			cart = cartService.getCart(uaid);
		} else {
			// 로그인하지 않은 사용자의 쇼핑카트를 불러올 경우
			Cookie[] cookies = request.getCookies();
			int cid = 0;
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("cid")) {
					cid = Integer.parseInt(cookie.getValue());
					break;
				}
			}
			
			cart = cartService.getCart(cid);
		}
		
		Integer size = null;
		if (cart == null) {
			size = 0;
		} else {
			List<CartItemReadResponseDto> cartItems = cartItemService.getCartItems(cart.getCid());
			
			int sumAmount = 0;
			Integer deliveryFee = 0;
			double sumFinalPrice = 0;
			for (CartItemReadResponseDto cartItem : cartItems) {
				
				// 수량비 합계 초기화
				sumAmount += cartItem.getCtcount() * cartItem.getCtprice();
				
				// 배송비: 큰 값으로 기본값
				if (deliveryFee < cartItem.getBdeliveryFee()) {
					deliveryFee = cartItem.getBdeliveryFee();
				}
				
				// 할인가격
				if (cartItem.getBfinalPrice() == 0) {
					double discount = cartItem.getCtprice() - cartItem.getCtprice() * ((double)cartItem.getCtdiscount()/100);
					sumFinalPrice += discount * cartItem.getCtcount();
				} else {
					sumFinalPrice += cartItem.getBfinalPrice() * cartItem.getCtcount();
				}
			}
			String formattedAmount = NumberFormat.getInstance(Locale.KOREA).format(sumAmount);
			size = cartItems.size();
			model.addAttribute("cartItems", cartItems);
			model.addAttribute("formattedAmount", formattedAmount);
			model.addAttribute("sumAmount", sumAmount);
			model.addAttribute("deliveryFee", deliveryFee);
			model.addAttribute("discountPrice", sumAmount-sumFinalPrice);
		}
	
		model.addAttribute("size", size);
		
		return "cart/Cart";
	}
	
	@GetMapping("/destroy")
	public String destroy(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/";
	}
}
















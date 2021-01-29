package com.onemilliondreams.teamproject.controller;

import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.onemilliondreams.teamproject.dto.CartDto;
import com.onemilliondreams.teamproject.dto.CartItemDto;
import com.onemilliondreams.teamproject.service.CartService;

@Controller
public class CartController {

	@Resource
	private CartService cartService;
	
	@PostMapping("/cart-create")
	public void create(
			CartItemDto cartItem,
			HttpServletRequest request,
			HttpServletResponse response,
			HttpSession session
			) throws Exception {
		
		String uaid = (String) session.getAttribute("sessionUaid");
		String result = null;
		
		if (uaid != null) {
			// 로그인한 사용자가 요청한 경우
			CartDto cart = new CartDto();
			cart.setUsersUaid(uaid);
			result = cartService.saveCartByUaid(cart, cartItem);
		} else {
			// 로그인하지 않은 사용자가 요청한 경우
			Cookie[] cookies = request.getCookies();
			Integer cid = null;
			boolean notExistCookie = true;
			
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("cid")) {
					notExistCookie = false;
					
					cid = Integer.parseInt(cookie.getValue());
					CartDto cart = new CartDto();
					cart.setCid(cid);
					result = cartService.saveCartByCid(cart, cartItem);
					break;
				}
			}
			if (notExistCookie) {
				CartDto cart = new CartDto();
				result = cartService.saveCartByCid(cart, cartItem);
				// sql 작업이 실패하면 쿠키 생성을 중단
				if (!result.equals("fail") && !result.equals("이미 장바구니에 존재합니다.")) {
					Cookie cookie = new Cookie("cid", result);
					response.addCookie(cookie);
				}
			}
		}
		
		PrintWriter pw = response.getWriter();
		response.setContentType("application/json;charset=UTF-8");
		
		JSONObject root = new JSONObject();
		root.put("result", result);
		pw.println(root.toString());
		pw.flush();
		pw.close();
	}
}

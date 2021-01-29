package com.onemilliondreams.teamproject.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.NumberFormat;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.onemilliondreams.teamproject.dto.CartItemDto;
import com.onemilliondreams.teamproject.service.CartItemService;

@Controller
public class CartItemController {
	
	private static final Logger logger = LoggerFactory.getLogger(CartItemController.class);
	
	@Resource
	private CartItemService cartItemService;
	
	@PostMapping("/cartitem-create")
	public void create(HttpServletResponse response) {
		
	}
	
	@PostMapping("/cartitem-update")
	public void update(CartItemDto cartItem, HttpServletResponse response) throws Exception {
		
		cartItemService.updateCartItem(cartItem);
		
		PrintWriter pw = response.getWriter();
		
		/**
		 * TODO: amount 계산해서 서버에서 넘겨야됨
		 * 자바스크립트로 jstl을 동적 처리할 수 없음
		 * amount 계산해서 원 단위, 가운데 콤마찍는걸로 서버에서 포매팅하기
		 */
		response.setContentType("application/json;charset=UTF-8");
		JSONObject root = new JSONObject();
		Integer amount = cartItem.getCtcount()*cartItem.getCtprice();
		String formattedAmount = NumberFormat.getInstance(Locale.KOREA).format(amount);
		root.put("amount", "\\" + formattedAmount);
		
		pw.println(root.toString());
		pw.flush();
		pw.close();
	}
	
	@PostMapping("/cartitem-delete")
	public void delete(int ctid, HttpServletResponse response) throws Exception {
		
		String result = cartItemService.deleteCartItem(ctid);
		
		PrintWriter pw = response.getWriter();
		response.setContentType("application/json;charset=UTF-8");
		JSONObject root = new JSONObject();
		root.put("result", result);
		
		pw.println(root.toString());
		pw.flush();
		pw.close();
	}
}














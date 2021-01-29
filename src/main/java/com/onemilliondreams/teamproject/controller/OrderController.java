package com.onemilliondreams.teamproject.controller;



import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.onemilliondreams.teamproject.dto.CartItemDto;
import com.onemilliondreams.teamproject.dto.CartItemReadResponseDto;
import com.onemilliondreams.teamproject.service.CartItemService;
import com.onemilliondreams.teamproject.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
	
	@Resource 
	private OrderService orderService;
	@Resource 
	private CartItemService cartItemService;

	private static final Logger logger = LoggerFactory.getLogger(OrderController.class);
	
	@GetMapping("/content")
	public String content(
			@RequestParam(value="ctid", required=false)int[] ctid, Model model ) {
		
		if(ctid ==null) {
		//데이터가 없는동안 시험삼아 해보기
			int[] ctid_try = {4,5};
			
			//Ct아이디 가져와서 저장할거임
			List<CartItemReadResponseDto> cartItemlist = new ArrayList<>();
			//Ct아이디 불러올거임
			CartItemReadResponseDto cartItem = new CartItemReadResponseDto();
			
			//
			for(int ctid_temp : ctid_try ) {
				//Cart item을 한개만 가져오면 됨!
				cartItem = cartItemService.getCartItem(ctid_temp);
				cartItemlist.add(cartItem);
			}
			
			model.addAttribute("cartItemlist", cartItemlist);
			
			
			
		}else {
			
			//Ct아이디 가져와서 저장할거임
			List<CartItemReadResponseDto> cartItemlist = new ArrayList<>();
			//Ct아이디 불러올거임
			CartItemReadResponseDto cartItem = new CartItemReadResponseDto();
			
			//
			for(int ctid_temp : ctid ) {
				//Cart item을 한개만 가져오면 됨!
				cartItem = cartItemService.getCartItem(ctid_temp);
				cartItemlist.add(cartItem);
			}
			
			model.addAttribute("cartItemlist", cartItemlist);
		
		}
		
		
		return "order/order";
	}
	
	@GetMapping("/content2")
	public String content1() {
		return "order/ordered";
	}
	
	
	
}

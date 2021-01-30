package com.onemilliondreams.teamproject.controller;



import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.onemilliondreams.teamproject.dto.CartItemReadResponseDto;
import com.onemilliondreams.teamproject.dto.OrderDto;
import com.onemilliondreams.teamproject.dto.OrderItemDto;
import com.onemilliondreams.teamproject.service.CartItemService;
import com.onemilliondreams.teamproject.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
	
	@Resource 
	private OrderService orderService;
	@Resource 
	private CartItemService cartItemService;

	
	
	@GetMapping("/content")
	public String content(
			@RequestParam(value="ctid", required=false)int[] ctid, Model model,	OrderDto orderdata) {
		
		//삽입확인용
		int orderStatus =1;
		
		//Ct아이디 가져와서 저장할거임
		List<CartItemReadResponseDto> cartItemlist = new ArrayList<>();
		//Ct아이디 불러올거임
		CartItemReadResponseDto cartItem = new CartItemReadResponseDto();
		
		
		
		if(ctid ==null) {
		//데이터가 없는동안 시험삼아 해보기
			int[] ctid_try = {4,5};
			for(int ctid_temp : ctid_try ) {
				//Cart item을 한개만 가져오면 됨!
				cartItem = cartItemService.getCartItem(ctid_temp);
				cartItemlist.add(cartItem);
			}
			model.addAttribute("cartItemlist", cartItemlist);
		}else {
			
			//----------------------------------------------------------------------
			//실제로 구현 할때 써야하는 부분임
			for(int ctid_temp : ctid ) {
				//Cart item을 한개만 가져오면 됨!
				cartItem = cartItemService.getCartItem(ctid_temp);
				cartItemlist.add(cartItem);
			}
			model.addAttribute("cartItemlist", cartItemlist);
			//----------------------------------------------------------------------
		}
		
		/*
		//Ct아이디 가져와서 저장할거임
		List<OrderItemDto> orderItemlist = new ArrayList<>();
		//order 아이템을 저장할거임
		OrderItemDto orderItem = new OrderItemDto();
				
		//주문정보가져오기
		OrderDto order = new OrderDto();
		
		if(orderStatus==1) {
			//셋 oid를 앞에서 햇으닌까 가져와야함!
			
			order.setUsersUaid(orderdata.getUsersUaid());
			order.setOaddress(orderdata.getOaddress());
			//order ototal - jsp에서 처리할지 여기서 처리할지 정하기!
			//order oamount - jsp에서 처리할지 여기서 처리할지 정하기!
			int[] ctid_try = {4,5};
			
			for(int ctid_temp : ctid_try ) {//현재 하드코딩된상태
				//Cart item을 한개만 가져오면 됨!
				cartItem = cartItemService.getCartItem(ctid_temp);
				//otid는 seq
				orderItem.setOtcount(cartItem.getCtcount());
				orderItem.setOtdiscount(cartItem.getCtdiscount());
				orderItem.setOtprice(cartItem.getCtprice());
				orderItemlist.add(orderItem);
			}
			
			orderService.order(order, orderItemlist);
		}
		//*/
		
		return "order/order";
	}
	
	@GetMapping("/content1")
	public String content1() {
		return "order/ordered";
	}
	
	
	
}

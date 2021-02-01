package com.onemilliondreams.teamproject.controller;



import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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

	private static final Logger logger = LoggerFactory.getLogger(OrderController.class);
	
	@GetMapping("/content")
	public String content(
			@RequestParam(value="ctid", required=false) int[] ctid,
			Model model,OrderDto orderdata) {

		
		//Ct아이디 가져와서 저장할거임
		List<CartItemReadResponseDto> cartItemlist = new ArrayList<>();
		//Ct아이디 불러올거임
		CartItemReadResponseDto cartItem = new CartItemReadResponseDto();
		if(orderdata.getOaddress() == null) {
			orderdata.setOaddress("주소없음");
		}
		
		
		if(ctid ==null) {
		//데이터가 없는동안 시험삼아 해보기
			int[] ctid_try = {29};
			for(int ctid_temp : ctid_try ) {
				//Cart item을 한개만 가져오면 됨!
				cartItem = cartItemService.getCartItem(ctid_temp);
				cartItemlist.add(cartItem);
				logger.info("장바구니에서 안넘어옴");
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
		
		
		return "order/order";
	}
	
	@PostMapping("/addorder")
	public String addorder(
			@RequestParam(value="ctid", required=false)int[] ctid, 
			Model model,
			//String orderStatus ,
			OrderDto orderdata,
			HttpSession session) {
				
		//Ct아이디 불러올거임
		CartItemReadResponseDto cartItem = new CartItemReadResponseDto();
		
		
		if(orderdata.getOaddress()==null) {
			logger.info("주소가 안받아진거임");
		}else if(orderdata.getUsersUaid()==null) {
			logger.info("아이디가안들어왔음");
		}else if(ctid != null) {
			logger.info("ctid가 있음");
		}else {
			logger.info(orderdata.getOaddress());
			logger.info(orderdata.getUsersUaid());
			logger.info("얼추 다 들어온듯");
		}
		
		
		
		
		//*
		//Ct아이디 가져와서 저장할거임
		List<OrderItemDto> orderItemlist = new ArrayList<>();
		//order 아이템을 저장할거임
		OrderItemDto orderItem = new OrderItemDto();
				
		//주문정보가져오기
		OrderDto order = new OrderDto();
		
		order.setUsersUaid("admin");
		order.setOaddress(orderdata.getOaddress());
		//order ototal - jsp에서 처리할지 여기서 처리할지 정하기!
		//order oamount - jsp에서 처리할지 여기서 처리할지 정하기!
		
		int[] ctid_try = {29};
		
		for(int ctid_temp : ctid_try ) {//현재 하드코딩된상태
			//Cart item을 한개만 가져오면 됨!
			cartItem = cartItemService.getCartItem(ctid_temp);
			//otid는 seq
			orderItem.setOtcount(cartItem.getCtcount());
			orderItem.setOtdiscount(cartItem.getCtdiscount());
			orderItem.setOtprice(cartItem.getCtprice());
			orderItemlist.add(orderItem);
		}
		
		//ctid 업데이틀 해줘야 함
		orderService.order(order, orderItemlist);
		//orderService.order(order, orderItemlist,ctid_try);
		
		//*/
		
		
		
		
		
		return "order/ordered";
	}
	
	
	
}

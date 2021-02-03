package com.onemilliondreams.teamproject.controller;



import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

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
import com.onemilliondreams.teamproject.dto.OrderedDto;
import com.onemilliondreams.teamproject.dto.WriterDto;
import com.onemilliondreams.teamproject.service.CartItemService;
import com.onemilliondreams.teamproject.service.OrderService;
import com.onemilliondreams.teamproject.service.OrderedService;

@Controller
@RequestMapping("/order")
public class OrderController {
	
	@Resource 
	private OrderService orderService;
	@Resource 
	private CartItemService cartItemService;
	@Resource
	private OrderedService orderedService;

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
			
			Integer size = null;
			int sumAmount = 0;
			Integer deliveryFee = 0;
			double sumFinalPrice = 0;
			for (CartItemReadResponseDto item : cartItemlist) {
				
				// 수량비 합계 초기화
				sumAmount += item.getCtcount() * item.getCtprice();
				
				// 배송비: 큰 값으로 기본값
				if (deliveryFee < item.getBdeliveryFee()) {
					deliveryFee = item.getBdeliveryFee();
				}
				
				// 할인가격
				if (item.getBfinalPrice() == 0) {
					double discount = item.getCtprice() - item.getCtprice() * ((double)item.getCtdiscount()/100);
					sumFinalPrice += discount * item.getCtcount();
				} else {
					sumFinalPrice += item.getBfinalPrice() * item.getCtcount();
				}
			}
			String formattedAmount = NumberFormat.getInstance(Locale.KOREA).format(sumAmount);
			size = cartItemlist.size();
			model.addAttribute("formattedAmount", formattedAmount);
			model.addAttribute("sumAmount", sumAmount);
			model.addAttribute("deliveryFee", deliveryFee);
			model.addAttribute("discountPrice", sumAmount-sumFinalPrice);
			model.addAttribute("cartItemlist", cartItemlist);
			model.addAttribute("size", size);
			//----------------------------------------------------------------------
		}
		
		return "order/order";
	}
	
	@PostMapping("/addorder")
	public String addorder(
			@RequestParam(value="ctid", required=false)int[] ctid, 
			Model model,
			OrderDto orderdata, HttpSession session) {
				
		String usersUaid = (String) session.getAttribute("sessionUaid");
		if (usersUaid != null) {
			orderdata.setUsersUaid(usersUaid);
		}
		
		//Ct아이디 불러올거임
		CartItemReadResponseDto cartItem = new CartItemReadResponseDto();
		
		//데이터가 넘어왔나 안넘어왔나
		if(orderdata.getOaddress()==null) {
			logger.info("주소가 안받아진거임");
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
				
		for(int ctid_temp : ctid) {
			//Cart item을 한개만 가져오면 됨!
			cartItem = cartItemService.getCartItem(ctid_temp);
			
			OrderItemDto orderItem = new OrderItemDto();
			orderItem.setOtcount(cartItem.getCtcount());
			orderItem.setOtdiscount(cartItem.getCtdiscount());
			orderItem.setOtprice(cartItem.getCtprice());
			orderItem.setBooksIsbn(cartItem.getIsbn());
			orderItemlist.add(orderItem);
		}
		
		//ctid 업데이틀 해줘야 함
		//orderService.order(order, orderItemlist);
		orderService.order(orderdata, orderItemlist, ctid);
		
		if (orderdata.getUsersUaid() == null || orderdata.getUsersUaid().equals("")) {
			return "redirect:/order/ordered?oid=" + orderdata.getOid();
		}
		
		return "redirect:/order/ordered";
	}
	
	@GetMapping("/ordered")
	public String ordered(@RequestParam(value="oid", required = false) Integer paramOid, HttpSession session, Model model) {
		
		//ordered list 가져오기
		String usersUaid = (String) session.getAttribute("sessionUaid");
		
		List<OrderDto> list = new ArrayList<>();
		
		
		if (usersUaid == null) {
			String result  = orderedService.confirm(paramOid);
			
			if(result.equals("success")) {
				model.addAttribute("orderConfirm",result);
			} else if (result.equals("notOrder")) {
				model.addAttribute("orderConfirm",result);
				return "order/search_order";
			}
			
			List<OrderedDto> guestOrders = orderedService.selectOrdered(paramOid);
			OrderDto order = orderService.getOrder(paramOid);
			order.setOdlist(guestOrders);
			
			list.add(order);
		} else {
			List<OrderDto> list1 = orderedService.selectOrderlist(usersUaid);
			
			for(OrderDto order : list1) {
				
				Integer oid = order.getOid();
				
				List<OrderedDto> list_temp = new ArrayList<OrderedDto>();
				list_temp =orderedService.selectOrdered(oid);
				
				
				order.setOdlist(list_temp);
				list.add(order);
			}
		}
		
		model.addAttribute("list", list);
		
		return "order/ordered";
	}
	
	
	
	@GetMapping("/searchorder")
	public String searchorder() {
		
		return "order/search_order";
	}
	
}

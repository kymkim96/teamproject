package com.onemilliondreams.teamproject.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.onemilliondreams.teamproject.dto.CartCreateRequestDto;

@Controller
@RequestMapping("/cart")
public class CartPageController {

	private static final Logger logger = LoggerFactory.getLogger(CartPageController.class);
	
	@GetMapping("/index")
	public String index(HttpSession session) {
		
		/**
		 * session attribute
		 * 1. afterSize
		 * sessionCartList의 현재 사이즈
		 * 2. sessionCartList
		 * 세션에 저장되 장바구니 목록
		 */
		
		Integer size = (Integer) session.getAttribute("afterSize");
		
		/** 
		 * 서버 재시작 시, sessionCartList가 널 값으로 변하는 상황을 예외 처리
		 * afterSize를 0으로 만들어서 장바구니 페이지에 현재 목록이 없다는 것을 표시
		 */
		if (session.getAttribute("sessionCartList") == null) {
			session.setAttribute("afterSize", 0);
		}
		
		// 사이즈 초기화
		if (size == null) {
			session.setAttribute("afterSize", 0);
		}
		
		return "cart/Cart";
	}
	
	@PostMapping("/session-register")
	public String sessionRegister(CartCreateRequestDto requestDto, HttpSession session) {
		
		List<CartCreateRequestDto> list = new ArrayList<>();
		list = (List<CartCreateRequestDto>) session.getAttribute("sessionCartList");

		if (list == null) {
			List<CartCreateRequestDto> newList = new ArrayList<>();
			
//			CartCreateRequestDto requestDtoInList = new CartCreateRequestDto();
//			requestDtoInList.setTitle(requestDto.getTitle());
//			requestDtoInList.setWriter(requestDto.getWriter());
//			requestDtoInList.setPublisher(requestDto.getPublisher());
//			requestDtoInList.setId(requestDto.getId());
//			requestDtoInList.setCount(requestDto.getCount());
//			requestDtoInList.setImgLink(requestDto.getImgLink());
			
			newList.add(requestDto);
			session.setAttribute("sessionCartList", newList);
			session.setAttribute("afterSize", newList.size());
		} else {
//			CartCreateRequestDto requestDtoInList = new CartCreateRequestDto();
//			requestDtoInList.setTitle(requestDto.getTitle());
//			requestDtoInList.setWriter(requestDto.getWriter());
//			requestDtoInList.setPublisher(requestDto.getPublisher());
//			requestDtoInList.setId(requestDto.getId());
//			requestDtoInList.setCount(requestDto.getCount());
//			requestDtoInList.setImgLink(requestDto.getImgLink());
			
			list.add(requestDto);
			
			session.setAttribute("sessionCartList", list);
			session.setAttribute("afterSize", list.size());
		}
		
		return "redirect:/cart/index";
	}
	
	@PostMapping("/session-deregister")
	public String sessionDeregister(int id, HttpSession session) {
		
		List<CartCreateRequestDto> list = new ArrayList<>();
		list = (List<CartCreateRequestDto>) session.getAttribute("sessionCartList");
		
		int size = list.size();
		
		for (int i=0; i<size; i++) {
			if (list.get(i).getId() == id) {
				list.remove(i);
			}
		}
		
		int afterSize = list.size();
		session.setAttribute("afterSize", afterSize);
		
		session.setAttribute("sessionCartList", list);
		
		return "redirect:/cart/index";
	}
	
//	@PostMapping("/cart-price")
//	public String cartPrice(int count, HttpSession session) {
//		
//		List<CartCreateRequestDto> list = new ArrayList<>();
//		list = (List<CartCreateRequestDto>) session.getAttribute("sessionCartList");
//		
//		for (CartCreateRequestDto requestDto : list) {
//			
//		}
//	}
//	
	
	@GetMapping("/destroy")
	public String destroy(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/";
	}
}
















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
		
//		session.invalidate(); 
		Integer size = (Integer) session.getAttribute("afterSize");
		
		if (session.getAttribute("sessionCartList") == null) {
			session.setAttribute("afterSize", 0);
			size = 0;
		}
		
		if (size == null) {
			session.setAttribute("afterSize", 0);
		} else if (size > 0) {
//			logger.info(size.toString());
//			System.out.println(session.getAttribute("sessionCartList"));
			int sumPrice = 0;
			for (CartCreateRequestDto requestDto : (List<CartCreateRequestDto>) session.getAttribute("sessionCartList")) {
				sumPrice += requestDto.getPrice();
			}
			session.setAttribute("sumPrice", sumPrice);
			session.setAttribute("afterSize", size);
		} else {
			session.setAttribute("afterSize", 0);
		}
		
		return "cart/Cart";
	}
	
	@PostMapping("/session-register")
	public String sessionRegister(CartCreateRequestDto requestDto, HttpSession session) {
		
		System.out.println(session.getAttribute("sessionCartList"));
		
		List<CartCreateRequestDto> list = new ArrayList<>();
		list = (List<CartCreateRequestDto>) session.getAttribute("sessionCartList");

		if (list == null) {
			List<CartCreateRequestDto> newList = new ArrayList<>();
			
			CartCreateRequestDto requestDtoInList = new CartCreateRequestDto();
			requestDtoInList.setTitle(requestDto.getTitle());
			requestDtoInList.setWriter(requestDto.getWriter());
			requestDtoInList.setPublisher(requestDto.getPublisher());
			requestDtoInList.setId(requestDto.getId());
			requestDtoInList.setCount(requestDto.getCount());
			requestDtoInList.setImgLink(requestDto.getImgLink());
			
			newList.add(requestDtoInList);
			Integer size = newList.size();
			session.setAttribute("sessionCartList", newList);
			session.setAttribute("afterSize", newList.size());
		} else {
			CartCreateRequestDto requestDtoInList = new CartCreateRequestDto();
			requestDtoInList.setTitle(requestDto.getTitle());
			requestDtoInList.setWriter(requestDto.getWriter());
			requestDtoInList.setPublisher(requestDto.getPublisher());
			requestDtoInList.setId(requestDto.getId());
			requestDtoInList.setCount(requestDto.getCount());
			requestDtoInList.setImgLink(requestDto.getImgLink());
			
			list.add(requestDtoInList);
			
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
















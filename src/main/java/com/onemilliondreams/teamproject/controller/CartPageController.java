package com.onemilliondreams.teamproject.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.onemilliondreams.teamproject.dto.CartCreateRequestDto;

@Controller
@RequestMapping("/cart")
public class CartPageController {

	@GetMapping("/index")
	public String index() {
		
		return "cart/Cart";
	}
	
	@PostMapping("/session-register")
	public String sessionRegister(CartCreateRequestDto requestDto, HttpSession session) {

		List<CartCreateRequestDto> list = new ArrayList<>();
		list = (List<CartCreateRequestDto>) session.getAttribute("sessionCartList");
		
		if (list == null) {
			List<CartCreateRequestDto> newList = new ArrayList<CartCreateRequestDto>();
			newList.add(requestDto);
			session.setAttribute("sessionCartList", newList);
		} else {
			session.setAttribute("sessionCartList", list.add(requestDto));
		}
		
		return "redirect:/cart/index";
	}
	
	@PostMapping("/session-deregister")
	public String sessionDeregister(int id, HttpSession session) {
		
		List<CartCreateRequestDto> list = new ArrayList<>();
		list = (List<CartCreateRequestDto>) session.getAttribute("sessionCartList");
		
		for (CartCreateRequestDto requestDto : list) {
			if (requestDto.getId() == id) {
				list.remove(requestDto);
			}
		}
		
		session.setAttribute("sessionCartList", list);
		
		return "redirect:/cart/index";
	}
	
}
















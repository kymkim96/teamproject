package com.onemilliondreams.teamproject.controller;

import java.util.ArrayList;
import java.util.List;

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
import com.onemilliondreams.teamproject.service.CartService;

@Controller
@RequestMapping("/cart")
public class CartPageController {

	private static final Logger logger = LoggerFactory.getLogger(CartPageController.class);
	
	@Resource
	private CartService cartService;
	
	@GetMapping("/cookie-create")
	public String cookieCreate(HttpServletResponse response) {
		
		Cookie cookie = new Cookie("cid", "1");
		response.addCookie(cookie);
		
		return "redirect:/";
	}
	
	@GetMapping("/index")
	public String index(HttpServletRequest request, HttpSession session, Model model) {
		
		// TODO: 로그인한 사용자의 쇼핑카트를 불러올 경우
		// sessionUaid
		
		
		// 로그인하지 않은 사용자의 쇼핑카트를 불러올 경우
		Cookie[] cookies = request.getCookies();
		int cid = 0;
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("cid")) {
				cid = Integer.parseInt(cookie.getValue());
				break;
			}
		}
		
		CartDto cart = cartService.getCart(cid); 
		model.addAttribute("cart", cart);
		
		return "cart/Cart";
	}
	
	@PostMapping("/session-register")
	public String sessionRegister(CartCreateRequestDto requestDto, HttpSession session) {
		
		List<CartCreateRequestDto> list = new ArrayList<>();
		list = (List<CartCreateRequestDto>) session.getAttribute("sessionCartList");

		if (list == null) {
			// sessionCartList가 없는 경우 새롭게 생성하고 requestDto 리스트에 삽입
			List<CartCreateRequestDto> newList = new ArrayList<>();
			
			
			newList.add(requestDto);
			session.setAttribute("sessionCartList", newList);
			session.setAttribute("afterSize", newList.size());
		} else {
			
			// 상품의 id가 같으면 장바구니 
			for (CartCreateRequestDto item : list) {
				if (item.getId() == requestDto.getId()) {
					return "cart/alert";
				}
			}
			
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
		
		Integer size = list.size();
		logger.info(size.toString());
		
		for (int i=0; i<size; i++) {
			Integer temp = list.get(i).getId();
			logger.info(temp.toString());
			if (list.get(i).getId() == id) {
				list.remove(i);
			}
		}
		
		int afterSize = list.size();
		session.setAttribute("afterSize", afterSize);
		
		session.setAttribute("sessionCartList", list);
		
		return "redirect:/cart/index";
	}
	
	@GetMapping("/destroy")
	public String destroy(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/";
	}
}
















package com.onemilliondreams.teamproject.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.onemilliondreams.teamproject.dto.AuthDto;
import com.onemilliondreams.teamproject.service.AuthService;

@Controller
@RequestMapping("/common")
public class CommonController {
	private static final Logger logger = 
			LoggerFactory.getLogger(CommonController.class);

	
	@GetMapping("/index")
	public String index() {
		
		return "redirect:/";
	}
	
	@GetMapping("/index1")
	public String logout(HttpSession session) {
		//개별적으로 데이터를 삭제
		//session.removeAttribute("loginStatus");
		//세션의 모든 데이터를 삭제
		
		session.invalidate();
		logger.info("로그아웃");
		
		return "redirect:/";
	}
	
	@GetMapping("/mr")
	public String mr() {
		
		return "detail/1";
	}
	

	
}

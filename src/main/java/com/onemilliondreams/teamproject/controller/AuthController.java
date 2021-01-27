package com.onemilliondreams.teamproject.controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.onemilliondreams.teamproject.dto.AuthDto;
import com.onemilliondreams.teamproject.service.AuthService;

@Controller
@RequestMapping("/auth")
public class AuthController {
	private static final Logger logger = 
			LoggerFactory.getLogger(AuthController.class);

	
	
	
	
	@GetMapping("/login1")
	public String login1() {
		
		return "auth/auth";
	}
	@GetMapping("/index")
	public String index() {
		
		return "redirect:/";
	}
	
	
	
	
	
	@Resource
	private AuthService authService;
	
	@GetMapping("join1")
	public String join1() {
		
		return "auth/join";
	}
	@PostMapping("join")
	public String join(AuthDto dto)throws Exception {
		authService.join(dto);
		return "redirect:/";
	}
	
	
	
	
}

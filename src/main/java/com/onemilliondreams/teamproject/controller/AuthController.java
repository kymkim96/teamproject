package com.onemilliondreams.teamproject.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.onemilliondreams.teamproject.dto.AuthDto;

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
	
	
	@PostMapping("/login2")
	public String login2(AuthDto authdto, HttpSession session) {
		
		String uid= authdto.getUid();
		String upassword = authdto.getUpassword();
		if(uid != "") {
		session.setAttribute("loginStatus", uid);
			logger.info("로그인성공");} 
			
			return "redirect:/";
		
		
		
	}
	
	@PostMapping("/join5")
	public String join5(AuthDto authdto, HttpSession session) {
		
		String uaid= authdto.getUaid();
		String uapassword = authdto.getUapassword();
		if(uaid != "") {
		session.setAttribute("loginStatus", uaid);
			logger.info("로그인성공");} 
			return "redirect:/";
		
		
		
	}
	
	
}

package com.onemilliondreams.teamproject.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String login2(String uid, String upassword, HttpSession session) {
		if(!uid.equals("")&&!upassword.equals("")) {
			
		session.setAttribute("loginStatus", uid);
			logger.info("로그인성공");
		} else {
			
		}
		
		return "redirect:/";
	}
		
	
	
}

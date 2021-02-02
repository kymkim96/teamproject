package com.onemilliondreams.teamproject.controller;

import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
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

	@Resource
	private AuthService authService;
	
	
	@GetMapping("/index")
	public String index() {
		
		return "redirect:/";
	}
	
	@GetMapping("/login1")
	public String login1() {
		
		return "auth/auth";
	}
	
	@PostMapping("/login")
	public void login(AuthDto dto,HttpServletResponse response, HttpSession session)throws Exception {
		String result = authService.login(dto);
		if(result.equals("success")) {
			session.setAttribute("sessionUaid", dto.getUaid());
		} else if (result.equals("admin")) {
			session.setAttribute("sessionUaid", dto.getUaid());
			session.setAttribute("role", result);
			result = "success";
		}
		response.setContentType("application/json; charset=UTF-8");
		PrintWriter pw = response.getWriter();
		JSONObject root = new JSONObject();
		root.put("result", result);
		pw.println(root.toString());
		pw.flush();
		pw.close();
	}
	
	
	
	
	
	@GetMapping("/join1")
	public String join1() {
		
		return "auth/join";
	}
	@PostMapping("/join")
	public void join(AuthDto dto, HttpServletResponse response)throws Exception {
		
		String result = authService.checkUaid(dto);
		response.setContentType("application/json; charset=UTF-8");
		PrintWriter pw = response.getWriter();
		if(result.equals("중복")) {
			JSONObject root= new JSONObject();
			root.put("result",result);
			pw.println(root.toString());
			
			
		}else {
			authService.join(dto);
			JSONObject root= new JSONObject();
			root.put("result",result);
			pw.println(root.toString());
		}
		
		pw.flush();
		pw.close();
		
	}
	
	
	
	
}

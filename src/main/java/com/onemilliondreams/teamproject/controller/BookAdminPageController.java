package com.onemilliondreams.teamproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/book-admin")
public class BookAdminPageController {

	@GetMapping("/create")
	public String create() {
		
		return "admin/BookCreate";
	}
	
	@GetMapping("/update")
	public String update() {
		
		return "admin/BookUpdate";
	}
}

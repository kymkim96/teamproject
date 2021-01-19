package com.onemilliondreams.teamproject.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/list")
public class ListController {
	
	private static final Logger logger = LoggerFactory.getLogger("ListController.class");
	
	@RequestMapping("/book_list1")
	public String book_list1() {
		logger.info("실행");
		return "list/book_list1";
	}
	
	@RequestMapping("/book_list2")
	public String book_list2() {
		logger.info("실행");
		return "list/book_list2";
	}

	
	@RequestMapping("/book_list3")
	public String book_list3() {
		logger.info("실행");
		return "list/book_list3";
	}
	
	
	

}

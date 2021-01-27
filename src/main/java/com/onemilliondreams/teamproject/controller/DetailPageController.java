package com.onemilliondreams.teamproject.controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.onemilliondreams.teamproject.dto.BookDto;
import com.onemilliondreams.teamproject.service.BookService;

@Controller
public class DetailPageController {
	
	private static final Logger logger = LoggerFactory.getLogger(DetailPageController.class);
	/*
	@RequestMapping("/detail")
	public String detail1(String param1) {
		logger.info("책"+ param1 +" 상세페이지");
		return "detail/test";
	}
	*/
	
	@Resource
	private BookService bookService;
	
	@RequestMapping("/detail")
	public String detail1(@RequestParam("param1") String BookIsbn , Model model) {
		BookDto book = new BookDto();
		book = bookService.getBook(BookIsbn);
		model.addAttribute("book", book);
		
		logger.info("BookIsbn : "+ BookIsbn);
		return "detail/test";
	}
	
}

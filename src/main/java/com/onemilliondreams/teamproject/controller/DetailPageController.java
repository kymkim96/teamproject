package com.onemilliondreams.teamproject.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.onemilliondreams.teamproject.dto.BookDto;
import com.onemilliondreams.teamproject.dto.ReviewDto;
import com.onemilliondreams.teamproject.dto.WriterDto;
import com.onemilliondreams.teamproject.service.BookService;
import com.onemilliondreams.teamproject.service.ReviewService;
import com.onemilliondreams.teamproject.service.WriterService;

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
	@Resource
	private ReviewService reviewService;
	@Resource
	private WriterService writerService;
	
	@RequestMapping("/detail")
	public String detail1(@RequestParam("param1") String BookIsbn , Model model) {
		
		//book정보
		BookDto book = new BookDto();
		book = bookService.getBook(BookIsbn);
		model.addAttribute("book", book);
		
		//writer도 리스트로 받아야 함
		List<WriterDto> writerlist = writerService.getWriterList(BookIsbn);
		model.addAttribute("writerlist", writerlist);
		
		//review정보		
		List<ReviewDto> list = reviewService.getReviewList(BookIsbn);
		model.addAttribute("list", list);
		
		logger.info("BookIsbn : "+ BookIsbn);
		return "detail/test";
	}
	
}

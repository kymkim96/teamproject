package com.onemilliondreams.teamproject.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.onemilliondreams.teamproject.dto.BookDto;
import com.onemilliondreams.teamproject.dto.PagerDto;
import com.onemilliondreams.teamproject.dto.ReviewCountDto;
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
	public String detail1(
			@RequestParam("param1") String BookIsbn ,
			@RequestParam(defaultValue="1") int pageNo,
			HttpSession session,
			Model model) {
		
		//book정보
		BookDto book = new BookDto();
		book = bookService.getBook(BookIsbn);
		model.addAttribute("book", book);
		
		//writer도 리스트로 받아야 함
		List<WriterDto> writerlist = writerService.getWriterList(BookIsbn);
		model.addAttribute("writerlist", writerlist);
		
		//review정보		
		List<ReviewDto> list1 = reviewService.getReviewList(BookIsbn);
		model.addAttribute("list1", list1);
		
		
		//내가 이책을 샀는지 안샀는지!
		ReviewCountDto rcd = new ReviewCountDto();
		
		String temp;
		if(session.getAttribute("sessionUaid")==null) {
			temp = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
		}else {
			temp = session.getAttribute("sessionUaid").toString();
		}
		rcd.setSessionUaid(temp); 
		rcd.setBookIsbn(BookIsbn);
		int count  = reviewService.getOrderRow(rcd);
		model.addAttribute("ordered", count);
		
		
		//review-pager
		int totalRows = reviewService.getTotalRows(BookIsbn);//ISBN에 해당하는 총 리뷰 개수
		PagerDto pager = new PagerDto(3, 5, totalRows, pageNo);
		
		
		pager.setBooksIsbn(BookIsbn);//해당 카테고리를 추가해준다!
		List<ReviewDto> reviewlist = reviewService.getReviewList(pager);
		
		
		model.addAttribute("BookIsbn", BookIsbn);
		model.addAttribute("reviewlist", reviewlist);
		model.addAttribute("pager", pager);
		
		logger.info("BookIsbn : "+ BookIsbn);
		return "detail/test";
	}
	
}

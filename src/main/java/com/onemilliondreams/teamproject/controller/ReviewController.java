package com.onemilliondreams.teamproject.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.onemilliondreams.teamproject.dto.ReviewDto;
import com.onemilliondreams.teamproject.service.ReviewService;


@Controller
@RequestMapping("/review")
public class ReviewController {
	private static Logger logger = LoggerFactory.getLogger(ReviewController.class);
	
	@Resource
	public ReviewService reviewService;
	
	@PostMapping("/reviewwrite")
	public String reviewwrite(ReviewDto review, HttpSession session) { //세션에서 bookIsbn과 userId를 가져와야함
		reviewService.saveReview(review);
		return "redirect:/detail?param1="+review.getBooksIsbn();
	}
	
	
}

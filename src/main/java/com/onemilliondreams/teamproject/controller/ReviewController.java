package com.onemilliondreams.teamproject.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.onemilliondreams.teamproject.dto.ReviewCountDto;
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
	
	@GetMapping("/reviewdelete")
	public String reviewdelete(
			@RequestParam("param1") String sessionUaid,
			@RequestParam("param2") String bookIsbn) { //세션에서 bookIsbn과 userId를 가져와야함
		ReviewCountDto rcd = new ReviewCountDto();
		rcd.setSessionUaid(sessionUaid);;
		rcd.setBookIsbn(bookIsbn);
		reviewService.deleteReview(rcd);
		return "redirect:/detail?param1="+bookIsbn;
	}
	
	//review update
	@GetMapping("/reviewupdate")
	public String reviewupdate(String isbn, Model model, HttpSession session) {
		
		session.getAttribute("sessionUaid");
		model.addAttribute("isbn", isbn);
		
		return "detail/review_update";
	}
	
	
	@PostMapping("/reviewupdate1")
	public String reviewupdate1(ReviewDto review) {
		
		reviewService.updateReview(review);
		return "redirect:/detail?param1=" + review.getBooksIsbn();

	}
	
	
}

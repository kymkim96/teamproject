package com.onemilliondreams.teamproject.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/detail")
public class DetailPageController {
	
	private static final Logger logger = LoggerFactory.getLogger(DetailPageController.class);
	
	@RequestMapping("/1")
	public String detail1() {
		logger.info("책1 상세페이지");
		return "detail/1";
	}
	
}

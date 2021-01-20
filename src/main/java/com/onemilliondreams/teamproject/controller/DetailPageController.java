package com.onemilliondreams.teamproject.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DetailPageController {
	
	private static final Logger logger = LoggerFactory.getLogger(DetailPageController.class);
	
	@RequestMapping("/detail")
	public String detail1(String param1) {
		logger.info("책"+ param1 +" 상세페이지");
		return "/detail/"+param1;
	}
}

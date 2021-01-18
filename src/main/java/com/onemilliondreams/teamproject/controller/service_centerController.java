package com.onemilliondreams.teamproject.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/service_center")
public class service_centerController {
	
	private static final Logger logger = LoggerFactory.getLogger("service_centerController.class");
	
	@RequestMapping("/notice")
		public String notice() {
			logger.info("실행");
			return "servic_center/notice";
	}
}

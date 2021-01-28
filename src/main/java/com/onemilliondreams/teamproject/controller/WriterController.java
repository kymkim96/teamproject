package com.onemilliondreams.teamproject.controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.onemilliondreams.teamproject.dto.WriterDto;
import com.onemilliondreams.teamproject.service.WriterService;

@Controller
@RequestMapping("/writer")
public class WriterController {
	private static Logger logger = LoggerFactory.getLogger(WriterController.class);
	
	@Resource
	private WriterService writerService;
	
	
	
	@PostMapping("/insertwriter")
	public String insertwriter(WriterDto writer) {
		
		writerService.insertWriter(writer);
		return "redirect:/writer/content";
	}
	
	
	@RequestMapping("/content")
	public String content() {
		logger.info("실행");
		return "detail/writertemp";
	}
	
}

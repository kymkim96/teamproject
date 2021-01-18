package com.onemilliondreams.teamproject.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.onemilliondreams.teamproject.dto.BookCreateRequestDto;

@Controller
public class BookController {

	private static final Logger logger = LoggerFactory.getLogger(BookController.class);
	
	@PostMapping("/books-create")
	public String create(BookCreateRequestDto requestDto) {
		
		logger.info("ISBN: " + requestDto.getIsbn());
		logger.info("제목: " + requestDto.getTitle());
		logger.info("작가: " + requestDto.getWriter());
		logger.info("옮긴이: " + requestDto.getTranslator());
		logger.info("정가: " + requestDto.getPrice());
		logger.info("출판사: " + requestDto.getPublisher());
		logger.info("베스트셀러 여부: " + requestDto.isBestSeller());
		logger.info("관련 비디오 링크: " + requestDto.getVideo1());
		logger.info("쪽수: " + requestDto.getPage());
		logger.info("무게: " + requestDto.getWeight());
		logger.info("크기: " + requestDto.getSize());
		logger.info("책 내용: " + requestDto.getInformation());
		logger.info("카테고리: " + requestDto.getCategory());
		logger.info("출간일: " + requestDto.getPublicationDate());
		
		MultipartFile image = requestDto.getImgUrl();
		String originalFilename = image.getOriginalFilename();
		logger.info("파일명: " + image.getOriginalFilename());
		
		String saveDir = "D:/MyWorkspace/uploadfiles/";
		
		File dir = new File(saveDir);
		if (!dir.exists()) dir.mkdirs();
		
		String fileName = new Date().getTime() + originalFilename;
		String filePath = saveDir + fileName;
		
		try {
			image.transferTo(new File(filePath));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:/cart/";
	}
	
	@PostMapping("/books-update")
	public String update() {
		return "redirect:/cart/";
	}
}

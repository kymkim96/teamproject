package com.onemilliondreams.teamproject.controller;

import java.io.File;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.onemilliondreams.teamproject.dto.BookDto;
import com.onemilliondreams.teamproject.dto.BookUpdateRequestDto;

@Controller
public class BookController {

	private static final Logger logger = LoggerFactory.getLogger(BookController.class);
	
	@Value("${fileupload.filepath}")
	private String saveDirPath;
	
	@PostMapping("/books-create")
	public String create(BookDto requestDto) {
		
		MultipartFile image = requestDto.getBimg();
		
		if (!image.isEmpty()) {
			String originalFilename = image.getOriginalFilename();
			logger.info("파일명: " + image.getOriginalFilename());
			
			String saveDir = saveDirPath;
			
			File dir = new File(saveDir);
			if (!dir.exists()) dir.mkdirs();
			
			String fileName = new Date().getTime() + originalFilename;
			requestDto.setBimgFilename(fileName);
			String contentType = image.getContentType();
			requestDto.setBcontentType(contentType);
			
			String filePath = saveDir + fileName;
			
			try {
				image.transferTo(new File(filePath));
			} catch (Exception e) {
				e.printStackTrace();
			}
		} 
		
		return "redirect:/";
	}
	
	@PostMapping("/books-update")
	public String update(BookUpdateRequestDto requestDto) {
		
		MultipartFile image = requestDto.getBimg();
		String originalFilename = image.getOriginalFilename();
		logger.info("파일명: " + image.getOriginalFilename());
		
		String saveDir = saveDirPath;
		
		File dir = new File(saveDir);
		if (!dir.exists()) dir.mkdirs();
		
		String fileName = new Date().getTime() + originalFilename;
		String filePath = saveDir + fileName;
		
		try {
			image.transferTo(new File(filePath));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:/";
	}
}

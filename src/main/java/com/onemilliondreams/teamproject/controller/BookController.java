package com.onemilliondreams.teamproject.controller;

import java.io.File;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.onemilliondreams.teamproject.dto.BookDto;
import com.onemilliondreams.teamproject.dto.BookUpdateRequestDto;
import com.onemilliondreams.teamproject.service.BookService;

@Controller
public class BookController {

	private static final Logger logger = LoggerFactory.getLogger(BookController.class);
	
	// 서비스 주입
	@Resource
	private BookService bookService; 
	
	@Value("${fileupload.filepath}")
	private String saveDirPath;
	
	@PostMapping("/books-create")
	public String create(BookDto requestDto, Model model, HttpServletResponse response) throws Exception {
		
		// 이미지 업로드 처리
		MultipartFile image = requestDto.getBimg();
		
		if (!image.isEmpty()) {
			String originalFilename = image.getOriginalFilename();
			logger.info("파일명: " + image.getOriginalFilename());
			
			String saveDir = saveDirPath;
			
			File dir = new File(saveDir);
			if (!dir.exists()) dir.mkdirs();
			
			String fileName = new Date().getTime() + "-" + originalFilename;
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
		
		// 폼 태그에 없어서 따로 null 처리
		if (requestDto.getBstate() == null) {
			requestDto.setBstate("");
		}
		
		// TODO: 카테고리 테이블 연결
		requestDto.setCategoriesCategoryName("");
		
		// ISBN 중복 검사
		String result = bookService.saveBook(requestDto);
		
		if (result.equals("ISBN is already used")) {
			return "redirect:/book-admin/create?result=" + result;
		}
		
		return "redirect:/";
	}
	
	@PostMapping("/books-update")
	public String update(BookUpdateRequestDto requestDto) {
		
		// 이미지 업로드 처리
		MultipartFile image = requestDto.getBimg();
		
		if (!image.isEmpty()) {
			String originalFilename = image.getOriginalFilename();
			logger.info("파일명: " + image.getOriginalFilename());
			
			String saveDir = saveDirPath;
			
			File dir = new File(saveDir);
			if (!dir.exists()) dir.mkdirs();
			
			String fileName = new Date().getTime() + "-" + originalFilename;
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
		
		// 폼 태그에 없어서 따로 null 처리
		if (requestDto.getBstate() == null) {
			requestDto.setBstate("");
		}
		
		// TODO: 카테고리 테이블 연결
		requestDto.setCategoriesCategoryName("");
		
		return "redirect:/";
	}
}

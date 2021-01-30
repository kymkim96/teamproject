package com.onemilliondreams.teamproject.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.onemilliondreams.teamproject.dto.BookDto;
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
		
		// ISBN 중복 검사
		String result = bookService.saveBook(requestDto);
		
		if (result.equals("ISBN is already used")) {
			return "redirect:/book-admin/create?result=" + result;
		}
		
		return "redirect:/";
	}
	
	// 책 이미지 표시
	@GetMapping("/books-image")
	public void imageDownload(String isbn, HttpServletResponse response) throws Exception {
		
		BookDto book = bookService.getBook(isbn);
		
		String filePath = null;
		String defaultImage = "default_image.jpg";
		if (!book.getBimgFilename().equals(defaultImage)) {
			String filename = book.getBimgFilename();
			filePath = saveDirPath + filename;
			
			response.setContentType(book.getBimgFilename());
			
		} else if (book.getBimgFilename().equals(defaultImage)){
			filePath = saveDirPath + defaultImage;
			response.setContentType("image/jpg");
		}
		
		OutputStream os = response.getOutputStream();
		InputStream is = new FileInputStream(filePath);
		FileCopyUtils.copy(is, os);
		
		os.flush();
		os.close();
		is.close();
	}
	
	@PostMapping("/books-update")
	public String update(BookDto requestDto) {
		
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
		
		bookService.updateBook(requestDto);
		
		return "redirect:/";
	}
}

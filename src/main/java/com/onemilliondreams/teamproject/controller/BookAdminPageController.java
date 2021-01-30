package com.onemilliondreams.teamproject.controller;


import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.onemilliondreams.teamproject.dto.BookDto;
import com.onemilliondreams.teamproject.dto.WriterDto;
import com.onemilliondreams.teamproject.service.BookService;
import com.onemilliondreams.teamproject.service.WriterService;

@Controller
@RequestMapping("/book-admin")
public class BookAdminPageController {

	private static final Logger logger = LoggerFactory.getLogger(BookAdminPageController.class);
	
	@Resource
	private BookService bookService;
	@Resource
	private WriterService writerService;
	
	@GetMapping("/create")
	public String create(@RequestParam(required = false) String result, Model model) throws Exception {
		
		if (result != null) {
			model.addAttribute("result", result);
		}
		
		return "admin/BookCreate";
	}
	
	@GetMapping("/update")
	public String update(String isbn, Model model) {
		
		BookDto book = new BookDto();
		List<WriterDto> writers = new ArrayList<>();
		
		if (isbn != null) {
			book = bookService.getBook(isbn);
			writers = writerService.getWriterList(isbn);
		}
		
		if (book != null && writers != null) {
			model.addAttribute("book", book);
			model.addAttribute("writers", writers);
		}
		
		return "admin/BookUpdate";
	}
}

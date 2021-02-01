package com.onemilliondreams.teamproject.controller;

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
import com.onemilliondreams.teamproject.dto.PagerDto;

import com.onemilliondreams.teamproject.service.BookService;


@Controller
@RequestMapping("/list")
public class ListController {
	
	private static final Logger logger = LoggerFactory.getLogger(ListController.class);
	

	@Resource
	private BookService bookService; 


	@GetMapping("/book_list")
	public String book_list(
			@RequestParam(defaultValue="1") int pageNo, 
			Model model, String category_name) {
		
		List<BookDto> list = bookService.getBooklist(category_name);
		/*
		 * Integer size = list.size(); logger.info(size.toString());
		 */
		model.addAttribute("list", list);	
	

		
		//pager
		int totalRows =  bookService.getTotalRows(category_name);//카테고리이름에 해당하는 총 행 수 
		PagerDto pager = new PagerDto(2, 5, totalRows, pageNo);
		//List<BookDto> booklist = bookService.getBookList(pager);
		
		model.addAttribute("pager", pager);
		//model.addAttribute("booklist", booklist);
		return "list/book_list";
		}

	
}
	




	
	

	 
	
	

	





package com.onemilliondreams.teamproject.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.onemilliondreams.teamproject.Dao.CategoryDao;
import com.onemilliondreams.teamproject.dto.BookDto;
import com.onemilliondreams.teamproject.dto.CategoryDto;
import com.onemilliondreams.teamproject.service.BookService;


@Controller
@RequestMapping("/list")
public class ListController {
	
	private static final Logger logger = LoggerFactory.getLogger(ListController.class);
	
	
	
	@RequestMapping("/book_list1")
	public String book_list1() {
		logger.info("실행");
		return "list/book_list1";
	}
	
	
	
	//전체 상품리스트들이 가져옴 한 페이지에
	@Resource
	private BookService bookService; 
	
	@GetMapping("/book_list1")
	public String book_list1(Model model,String category_name) {
		
		List<BookDto> list = bookService.getBooklist("자기계발서 ");
		model.addAttribute("list", list);
		
		return "book_list1";
	} 

	
	
	
	@Resource
	private CategoryDao categoryDao;
	
	@RequestMapping("/book_list2")
	public String book_list2(String category_name) {//자기계발서
		CategoryDto cate = categoryDao.selectByPk(category_name);
		logger.info("category_name: "+cate.getCategory_name());
		
		return "list/book_list2";
	}
	
	
	@RequestMapping("/book_list3")
	public String book_list3() {
		logger.info("실행");
		return "list/book_list3";
	}
	
	
	}
	



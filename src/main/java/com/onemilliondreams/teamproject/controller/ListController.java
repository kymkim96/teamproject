package com.onemilliondreams.teamproject.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

//import com.mycompany.webapp.dto.Ch14Board;
//import com.mycompany.webapp.dto.Ch14Pager;
import com.onemilliondreams.teamproject.Dao.CategoryDao;
import com.onemilliondreams.teamproject.dto.BookDto;
import com.onemilliondreams.teamproject.dto.CategoryDto;
import com.onemilliondreams.teamproject.dto.Pager;
import com.onemilliondreams.teamproject.service.BookService;


@Controller
@RequestMapping("/list")
public class ListController {
	
	private static final Logger logger = LoggerFactory.getLogger(ListController.class);
	
	
	
	/*@RequestMapping("/book_list1")
	public String book_list1() {
		logger.info("실행");
		return "list/book_list1";
	}*/
	
	
	

	@Resource
	private BookService bookService; 
	
	//booklist?category_name=""
	
	@GetMapping("/book_list")
	public String book_list1(Model model,String category_name) {
		List<BookDto> list = bookService.getBooklist(category_name);
		model.addAttribute("list", list);
		return "list/book_list1";
	} 
	

	
	
	
	/*@GetMapping("/booklist")
	public String booklist(Model model) {
		List<BookDto> list = bookService.getBookList();
		model.addAttribute("list", list);
		return "list/book_list1";
	}*/
	
	 
	//페이지해당하는 것만 
		@GetMapping("/board_list")
		public String boardlist(@RequestParam(defaultValue="1") int pageNo, Model model ) {
			int totalRows = bookService.getTotalRows();//전체행수
			Pager pager = new Pager(5, 6 , totalRows, pageNo);
			List<BookDto> list = bookService.getBookList(pager);
			model.addAttribute("list", list);
			model.addAttribute("pager", pager);
			return "book_list1";
		} 
	
	

	
}	




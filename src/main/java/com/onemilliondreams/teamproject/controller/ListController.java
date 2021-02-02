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

import com.onemilliondreams.teamproject.service.ListService;


@Controller
@RequestMapping("/list")
public class ListController {
	
	private static final Logger logger = LoggerFactory.getLogger(ListController.class);
	

	@Resource
	private ListService listService; 


	@GetMapping("/book_list")
	public String book_list(
							@RequestParam(defaultValue="1") int pageNo, 
							Model model, 
							String categoriesCategoryName) {
					
		
		//List<BookDto> list = listService.getBooklist(categoriesCategoryName);
		//model.addAttribute("list", list);
	
	
		//pager
		int totalRows = listService.getTotalRows(categoriesCategoryName);//카테고리이름에 해당하는 총 행 수 
		PagerDto pager = new PagerDto(3, 2, totalRows, pageNo);
		
		
		pager.setCategoriesCategoryName(categoriesCategoryName);
		List<BookDto> list = listService.getList(pager);
		
		 Integer size = list.size(); 
		 logger.info(size.toString());
		
		model.addAttribute("pager", pager);
		model.addAttribute("list", list);
		model.addAttribute("categoriesCategoryName", categoriesCategoryName);
		return "list/book_list";
		}

	
}
	




	
	

	 
	
	

	





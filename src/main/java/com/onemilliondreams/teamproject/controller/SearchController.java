package com.onemilliondreams.teamproject.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.onemilliondreams.teamproject.dto.BookDto;
import com.onemilliondreams.teamproject.dto.PagerDto;
import com.onemilliondreams.teamproject.dto.WriterDto;
import com.onemilliondreams.teamproject.service.SearchService;
import com.onemilliondreams.teamproject.service.WriterService;



@Controller
@RequestMapping("/search")
public class SearchController {

	@Resource
	private SearchService searchService;
	@Resource
	private WriterService writerService;
	
	@GetMapping("/searchresult2")
	public String searchForm() {
		
		return "search/searchresult";
	}
	@PostMapping("/searchresult")
	public String searchresult(@RequestParam(defaultValue="1")int pageNo, Model model, String btitle) {
		
		
		
		int totalRows = searchService.getTotalRows(btitle); //조건에 맞는 행수
		PagerDto pager = new PagerDto(1, 5, totalRows, pageNo);// 6개 5단 
		
		pager.setBtitle(btitle);
		List<BookDto> list = searchService.getBookList(pager); //
		List<BookDto> list2 = new ArrayList<>();	
		for(BookDto dto : list) {
			List<WriterDto> writerList = new ArrayList<WriterDto>();
			writerList = writerService.getWriterList(dto.getIsbn());
			if (writerList != null) {
				dto.setBookWriterlist(writerList);
			}
			list2.add(dto);
		}
		model.addAttribute("list",list2);
		model.addAttribute("pager",pager);
		model.addAttribute("btitle",btitle);
		return "search/searchresult";
	}
	@GetMapping("/searchresult")
	public String searchresult2(@RequestParam(defaultValue="1")int pageNo, Model model, String btitle) {
		
		
		
		int totalRows = searchService.getTotalRows(btitle); //조건에 맞는 행수
		PagerDto pager = new PagerDto(1, 5, totalRows, pageNo);// 6개 5단 
		
		pager.setBtitle(btitle);
		List<BookDto> list = searchService.getBookList(pager); //
		List<BookDto> list2 = new ArrayList<>();	
		
		for(BookDto dto : list) {
			List<WriterDto> writerList = new ArrayList<WriterDto>();
			writerList = writerService.getWriterList(dto.getIsbn());
			if (writerList != null) {
				dto.setBookWriterlist(writerService.getWriterList(dto.getIsbn()));
			}
			list2.add(dto);
		}
		
		model.addAttribute("list",list2);
		model.addAttribute("pager",pager);
		model.addAttribute("btitle",btitle);
		//writer도 리스트로 받아야 함
		
	
		return "search/searchresult";
	}
	
	
}

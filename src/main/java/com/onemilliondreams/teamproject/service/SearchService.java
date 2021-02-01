package com.onemilliondreams.teamproject.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.onemilliondreams.teamproject.Dao.SearchDao;
import com.onemilliondreams.teamproject.dto.BookDto;
import com.onemilliondreams.teamproject.dto.PagerDto;


@Service
public class SearchService {
	private static final Logger logger= LoggerFactory.getLogger(SearchService.class);
	
	@Resource
	private SearchDao Dao;
	
	
	public List<BookDto> getBookList(PagerDto pager){
		List<BookDto> list = Dao.selectByPage(pager);
		return list;
	}

	
	public int getTotalRows(String btitle) {
	int totalRows =	Dao.countAll(btitle);
		return totalRows;
		
	}
	public BookDto getBook(String title) {
		BookDto dto = Dao.selectByPk(title);
		return dto;
	}
	
	public List<BookDto> getBookList(){
		
		List<BookDto> list = Dao.selectAll();
		return list;
	}
	
	
}

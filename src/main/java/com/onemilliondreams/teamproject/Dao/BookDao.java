package com.onemilliondreams.teamproject.Dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;


//import com.onemilliondreams.teamproject.controller.ListController;
import com.onemilliondreams.teamproject.dto.BookDto;
import com.onemilliondreams.teamproject.dto.PagerDto;




@Repository
public class BookDao {
	
	private static final Logger logger = LoggerFactory.getLogger(BookDao.class);
	
	@Resource
	private SqlSessionTemplate sst;
	
	public BookDto getBook(String bookIsbn) {
		BookDto book = new BookDto();
		book = sst.selectOne("books.selectByPk",bookIsbn);
		return book;
	}

	public int insert(BookDto requestDto) {
		
		int rows = sst.insert("books.insert", requestDto);
		return rows;
	}
	

	
	
	public int update(BookDto requestDto) {	
		int rows = sst.update("books.update", requestDto);
		return rows;

	}


}

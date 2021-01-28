package com.onemilliondreams.teamproject.Dao;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.onemilliondreams.teamproject.dto.BookDto;


@Repository
public class BookDao {
	
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

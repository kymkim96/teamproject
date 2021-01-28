package com.onemilliondreams.teamproject.Dao;

import java.util.List;

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
	
	
	public List<BookDto> getbooklist(String category_name) {
		List<BookDto> list = sst.selectList("books.selectByCn", category_name);
		return list;
	}

}

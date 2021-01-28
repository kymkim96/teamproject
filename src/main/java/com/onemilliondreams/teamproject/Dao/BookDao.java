package com.onemilliondreams.teamproject.Dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.onemilliondreams.teamproject.dto.BookDto;
import com.onemilliondreams.teamproject.dto.Pager;


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
	

	//카테고리네임
	public List<BookDto> getbooklist(String categoryName) {
		List<BookDto> list = sst.selectList("books.selectByCn", categoryName);
		return list;
	}
	
	public int countAll() {
		int count = sst.selectOne( "books.countAll");
		return count;
	}
	
	public List<BookDto> selectByPage(Pager pager){
		List<BookDto> list = sst.selectList("books.selectByPager", pager);
		return list;
	}
	
	
	public int update(BookDto requestDto) {
		
		int rows = sst.update("books.update", requestDto);
		return rows;

	}

}

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
	

	//카테고리네임
	public List<BookDto> getbooklist(String category_name) {
		List<BookDto> list = sst.selectList("books.selectByCn", category_name);		
		logger.info(category_name);
		return list;
	}
	
	public int countAll(String category_name) {
		int count = sst.selectOne("books.countAll", category_name);
		return count;
	}
	

	/*public List<BookDto> selectByPage(PagerDto pager) {
		List<BookDto>list = sst.selectList("books.selectByPage", pager);
		return list;
	
	}*/
	
	
	public int update(BookDto requestDto) {	
		int rows = sst.update("books.update", requestDto);
		return rows;

	}


}

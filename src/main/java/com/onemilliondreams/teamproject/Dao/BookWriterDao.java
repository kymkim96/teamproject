package com.onemilliondreams.teamproject.Dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.onemilliondreams.teamproject.dto.BookWriterDto;
import com.onemilliondreams.teamproject.dto.BookWriterReadResponseDto;

@Repository
public class BookWriterDao {

	@Resource
	private SqlSessionTemplate sst;
	
	public int insert(BookWriterDto bookWriter) {
		
		int rows = sst.insert("bookswriters.insert", bookWriter);
		return rows;
	}

	public List<BookWriterReadResponseDto> selectWnameByIsbn(String isbn) {
		
		List<BookWriterReadResponseDto> list = sst.selectList("bookswriters.selectWnameByIsbn", isbn);
		return list;
	}

	public int delete(BookWriterDto bookWriter) {
		
		int rows = sst.delete("bookswriters.delete", bookWriter);
		return rows;
	}

	
}

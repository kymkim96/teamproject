package com.onemilliondreams.teamproject.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.onemilliondreams.teamproject.Dao.BookWriterDao;
import com.onemilliondreams.teamproject.dto.BookWriterDto;
import com.onemilliondreams.teamproject.dto.BookWriterReadResponseDto;

@Service
public class BookWriterService {

	@Resource
	private BookWriterDao bookWriterDao;
	
	public void saveBookWriter(BookWriterDto bookWriter) {
		
		bookWriterDao.insert(bookWriter);
	}

	public List<BookWriterReadResponseDto> getBookWriterWname(String isbn) {
		
		List<BookWriterReadResponseDto> list = bookWriterDao.selectWnameByIsbn(isbn);
		return list;
	}

	
}

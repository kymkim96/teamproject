package com.onemilliondreams.teamproject.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.onemilliondreams.teamproject.Dao.BookDao;
import com.onemilliondreams.teamproject.dto.BookDto;

@Service
public class BookService {
	
	@Resource
	public BookDao bookDao;

	public BookDto getBook(String bookIsbn) {
		BookDto book = bookDao.getBook(bookIsbn);
		return book;
	}
	
	
	
}

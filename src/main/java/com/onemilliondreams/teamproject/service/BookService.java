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
		
		//정수로 최종가격 변경
		int Bftemp = book.getBfprice();
		int bdistemp = 1- (int) (book.getBdiscount()*(0.01));
		book.setBfprice(Bftemp*bdistemp);
		return book;
	}
	

	
}

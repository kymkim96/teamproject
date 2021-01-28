package com.onemilliondreams.teamproject.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.onemilliondreams.teamproject.Dao.BookDao;
import com.onemilliondreams.teamproject.controller.BookAdminPageController;
import com.onemilliondreams.teamproject.dto.BookDto;

@Service
public class BookService {
	
	@Resource
	public BookDao bookDao;

	private static final Logger logger = LoggerFactory.getLogger(BookService.class);
	
	public BookDto getBook(String bookIsbn) {
		
		BookDto book = bookDao.getBook(bookIsbn);
		
		if (book != null) {
			String result = book.getBcontent();
			book.setBcontent(result.replace("\n", "<br/>"));
		}
		
		//정수로 최종가격 변경
		int Bftemp = book.getBfprice();
		int bdistemp = 1- (int) (book.getBdiscount()*(0.01));
		book.setBfprice(Bftemp*bdistemp);
		
		String result = book.getBcontent();
		book.setBcontent(result.replace("\n", "<br/>"));
		
		return book;
	}
	

	

	public String saveBook(BookDto requestDto) {
		
		BookDto book = bookDao.getBook(requestDto.getIsbn());
		if (book != null) {
			return "ISBN is already used";
		}
		
		bookDao.insert(requestDto);
		return "성공";
	}
	
	public void updateBook(BookDto requestDto) {
		
		bookDao.update(requestDto);
	}
}

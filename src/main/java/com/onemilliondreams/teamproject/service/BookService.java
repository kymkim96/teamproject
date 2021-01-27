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
		
		String result = book.getBcontent();
		book.setBcontent(result.replace("\n", "<br/>"));
		
		return book;
	}

	public String saveBook(BookDto requestDto) {
		
		BookDto book = bookDao.getBook(requestDto.getIsbn());
		if (book != null) {
			return "ISBN이 중복되었습니다.";
		}
		
		bookDao.insert(requestDto);
		return "성공";
	}
}

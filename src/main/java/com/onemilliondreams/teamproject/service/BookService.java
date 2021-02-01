package com.onemilliondreams.teamproject.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.onemilliondreams.teamproject.Dao.BookDao;
import com.onemilliondreams.teamproject.dto.BookDto;
import com.onemilliondreams.teamproject.dto.BookWriterDto;

@Service
public class BookService {
	
	@Resource
	private BookDao bookDao;
	@Resource
	private BookWriterService bookWriterService;
	@Resource
	private WriterService writerService;

	private static final Logger logger = LoggerFactory.getLogger(BookService.class);
	
	public BookDto getBook(String bookIsbn) {
		
		BookDto book = bookDao.getBook(bookIsbn);
		
		if (book != null) {
			String result = book.getBcontent();
			book.setBcontent(result.replace("\n", "<br/>"));
			
			//정수로 최종가격 변경
			double bdistemp =1- (book.getBdiscount()/100);
			int temp = (int) (book.getBprice()*bdistemp);
			book.setBfprice(temp);
			
			return book;
				
		}
		
		
		
		return book;
	}
	

	

	public String saveBook(BookDto requestDto) {
		
		BookDto book = bookDao.getBook(requestDto.getIsbn());
		if (book != null) {
			return "ISBN is already used";
		}
		
		// 할인율 적용하기
		int price = requestDto.getBprice();
		Integer discount = requestDto.getBdiscount();
		if (discount != null) {
			double temp = price - (price * ((double)discount/100));
			int finalPrice = (int) Math.ceil(temp);
			requestDto.setBfinalPrice(finalPrice);
		} else {
			requestDto.setBfinalPrice(price);
		}
		
		
		int rows = bookDao.insert(requestDto);
		// 책과 착가 매핑하기
		if (rows > 0) {
			if (requestDto.getBwriters() != null) {
				for (String writer : requestDto.getBwriters()) {
					Integer wid = writerService.getWriterByWname(writer);
					if (wid != null && wid != -1) {
						BookWriterDto bookWriter = new BookWriterDto();
						bookWriter.setBooksIsbn(requestDto.getIsbn());
						bookWriter.setWritersWid(wid);
						bookWriterService.saveBookWriter(bookWriter);
					} else {
						return "writer is not correct";
					}
				}
			}
		}
		
		return "성공";
	}



	public List<BookDto> getBooklist(String category_name) {
		List<BookDto> list = bookDao.getbooklist(category_name);
		return list;
	}
	


	
	public void updateBook(BookDto requestDto) {
		
		// 할인율 적용하기
		int price = requestDto.getBprice();
		Integer discount = requestDto.getBdiscount();
		if (discount != null) {
			double temp = price - (price * ((double)discount/100));
			int finalPrice = (int) Math.ceil(temp);
			requestDto.setBfinalPrice(finalPrice);
		} else {
			requestDto.setBfinalPrice(price);
		}
		bookDao.update(requestDto);
	}

}

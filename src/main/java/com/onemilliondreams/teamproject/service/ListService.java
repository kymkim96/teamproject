package com.onemilliondreams.teamproject.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.onemilliondreams.teamproject.Dao.ListDao;
import com.onemilliondreams.teamproject.dto.BookDto;
import com.onemilliondreams.teamproject.dto.PagerDto;
import com.onemilliondreams.teamproject.dto.WriterDto;

@Service
public class ListService {
	@Resource

	private ListDao listDao;
	
	 /* public List<BookDto> getBooklist(String categoriesCategoryName) { 
		  List<BookDto> list = listDao.getbooklist(categoriesCategoryName); 
		  return list; 
		  }*/
	 
	
	public int getTotalRows(String categoriesCategoryName) {
		int totalRows= listDao.countAll(categoriesCategoryName);
		return  totalRows;
	}
	

	public List<BookDto> getList(PagerDto pager) {
		List<BookDto> list = listDao.selectByPage(pager);
		return list;
	}


	


	
}

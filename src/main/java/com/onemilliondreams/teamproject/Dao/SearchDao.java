package com.onemilliondreams.teamproject.Dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.onemilliondreams.teamproject.dto.BookDto;
import com.onemilliondreams.teamproject.dto.PagerDto;

@Repository
public class SearchDao {
	private static final Logger logger = 
			LoggerFactory.getLogger(SearchDao.class);
	
	
	@Resource
	private SqlSessionTemplate sst;
	
	public List<BookDto> selectAll(){
		List<BookDto> list = sst.selectList("searchs.selectAll");
		
		return list;
	}
	
	public int countAll(String btitle) {
		int count = sst.selectOne("searchs.countAll", btitle);
			return count;
	}
	
	
	public List<BookDto> selectByPage(PagerDto pager){
		List<BookDto> list = sst.selectList("searchs.selectByPage", pager);
		return list;
	}
	
	public BookDto selectByPk(String btitle) {
		BookDto dto = sst.selectOne("searchs.selectByPk", btitle);
		return dto;
	}

	
}

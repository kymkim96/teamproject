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
public class ListDao {

	private static final Logger logger = LoggerFactory.getLogger(ListDao.class);
	
	@Resource
	private SqlSessionTemplate sst;
	
	//카테고리네임
	/*public List<BookDto> getbooklist(String categoriesCategoryName) {
			List<BookDto> list = sst.selectList("books.selectByCn", categoriesCategoryName);		
			return list;
		}*/
		
		public int countAll(String categoriesCategoryName) {
			int count = sst.selectOne("books.countAll", categoriesCategoryName);
			return count;
		}
		
		public List<BookDto> selectByPage(PagerDto pager) {
			List<BookDto> list = sst.selectList("books.selectByPage", pager);
			return list;
		}
		
}

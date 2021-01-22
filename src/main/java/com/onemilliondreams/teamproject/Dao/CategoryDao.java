package com.onemilliondreams.teamproject.Dao;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.onemilliondreams.teamproject.dto.CategoryDto;


@Repository
public class CategoryDao {
	private static final Logger logger = LoggerFactory.getLogger( CategoryDao.class);
	
	@Resource
	private SqlSessionTemplate sst;
	
	public CategoryDto selectByPk(String category_name) {
		CategoryDto cate = sst.selectOne("mybatis.mapper.category.selectByPk", category_name);
		return cate;
	}
		
}

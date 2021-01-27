package com.onemilliondreams.teamproject.Dao;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.onemilliondreams.teamproject.dto.ReviewDto;

@Repository
public class ReviewDao {
	@Resource
	private SqlSessionTemplate sst;

	public int insert(ReviewDto review) {
		int rows = sst.insert("reviews.insert", review);
		return rows;
	}
	
}

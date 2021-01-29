package com.onemilliondreams.teamproject.Dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.onemilliondreams.teamproject.dto.PagerDto;
import com.onemilliondreams.teamproject.dto.ReviewDto;

@Repository
public class ReviewDao {
	@Resource
	private SqlSessionTemplate sst;
	
	
	//리뷰 삽입
	public int insert(ReviewDto review) {
		int rows = sst.insert("reviews.insert", review);
		return rows;
	}
	
	//ISBN별 리뷰갯수
	public int countPart(String bookIsbn) {
		int count = sst.selectOne("reviews.countPart", bookIsbn);
		return count;
	}
	
	//ISBN별 리뷰 전체
	public List<ReviewDto> selectByFk(String BookIsbn) {
		List<ReviewDto> list = sst.selectList("reviews.selectByFk",BookIsbn);
		return list;
	}

	public List<ReviewDto> selectByPage(PagerDto pager) {
		List<ReviewDto> list = sst.selectList("reviews.selectByPage",pager);
		return list;
	}

	

	
}

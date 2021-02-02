package com.onemilliondreams.teamproject.Dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.onemilliondreams.teamproject.controller.ReviewController;
import com.onemilliondreams.teamproject.dto.PagerDto;
import com.onemilliondreams.teamproject.dto.ReviewCountDto;
import com.onemilliondreams.teamproject.dto.ReviewDto;

@Repository
public class ReviewDao {
	
	private static Logger logger = LoggerFactory.getLogger(ReviewDao.class);
	
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
	
	//User가 
	//책을 얼마나 삿는지를 알려주는거임
	public int getOrderRow(ReviewCountDto rcd) {
		int count  = sst.selectOne("orders.countOrder", rcd);
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

	public int getReviewRow(ReviewCountDto rcd) {
		int count  = sst.selectOne("reviews.countReview", rcd);
		return count;
	}

	public int delete(ReviewCountDto rcd) {
		int rows = sst.delete("reviews.delete", rcd);
		return rows;
	}

	public int update(ReviewDto review) {
		Integer rows = sst.update("reviews.update", review);
		return rows;
	}


		
}

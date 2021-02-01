package com.onemilliondreams.teamproject.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.onemilliondreams.teamproject.Dao.ReviewDao;
import com.onemilliondreams.teamproject.controller.ReviewController;
import com.onemilliondreams.teamproject.dto.PagerDto;
import com.onemilliondreams.teamproject.dto.ReviewCountDto;
import com.onemilliondreams.teamproject.dto.ReviewDto;

@Service
public class ReviewService {
	private static Logger logger = LoggerFactory.getLogger(ReviewController.class);
	
	@Resource
	public ReviewDao reviewDao;
	
	public void saveReview(ReviewDto review) {
		reviewDao.insert(review);		
	}
	
	public int getTotalRows(String bookIsbn) {
		 int totalRows = reviewDao.countPart(bookIsbn);
	     return totalRows;
	}
	
	//ISBN으로 전체를 가져오기
	public List<ReviewDto> getReviewList(String BookIsbn) {
		List<ReviewDto> list = reviewDao.selectByFk(BookIsbn);
		return list;
	}

	
	//페이지 별로 가져오기
	public List<ReviewDto> getReviewList(PagerDto pager) {
		List<ReviewDto> list = reviewDao.selectByPage(pager);
		return list;
	}

	public int getOrderRow(ReviewCountDto rcd) {
		int count = reviewDao.getOrderRow(rcd);
		
		
		return count;
	}
	
}

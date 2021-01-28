package com.onemilliondreams.teamproject.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.onemilliondreams.teamproject.Dao.ReviewDao;
import com.onemilliondreams.teamproject.dto.PagerDto;
import com.onemilliondreams.teamproject.dto.ReviewDto;

@Service
public class ReviewService {
	
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
	
}

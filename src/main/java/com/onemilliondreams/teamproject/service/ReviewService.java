package com.onemilliondreams.teamproject.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.onemilliondreams.teamproject.Dao.ReviewDao;
import com.onemilliondreams.teamproject.dto.ReviewDto;

@Service
public class ReviewService {
	
	@Resource
	public ReviewDao reviewDao;
	
	public void saveReview(ReviewDto review) {
		reviewDao.insert(review);		
	}
	
}

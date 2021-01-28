package com.onemilliondreams.teamproject.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.onemilliondreams.teamproject.Dao.CartDao;
import com.onemilliondreams.teamproject.dto.CartDto;

@Service
public class CartService {

	@Resource
	private CartDao cartDao;
	
	public CartDto getCart(int cid) {
		
		CartDto cart = cartDao.selectByPk(cid);
		
		return cart;
	}

	public CartDto getCart(String uaid) {

		CartDto cart = cartDao.selectByUaid(uaid);
		return cart;
	}

}

package com.onemilliondreams.teamproject.Dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.onemilliondreams.teamproject.controller.CartPageController;
import com.onemilliondreams.teamproject.dto.CartItemReadResponseDto;

@Repository
public class CartItemDao {

	private static final Logger logger = LoggerFactory.getLogger(CartItemDao.class);
	
	@Resource
	private SqlSessionTemplate sst;
	
	public List<CartItemReadResponseDto> selectItemList(int cid) {
		
		List<CartItemReadResponseDto> cartItems = sst.selectList("cart_items.selectItemList", cid);
		
//		if (cartItems != null) {
//			Integer size = cartItems.size();
//			logger.info(size.toString());
//			logger.info(cartItems.get(0).getBimgFilename());
//		}
		
		return cartItems;
	}

	public CartItemReadResponseDto selectCartItem(int ctid) {
		CartItemReadResponseDto cartItem =sst.selectOne("cart_items.selectCartItem", ctid);
		return cartItem;
	}
}

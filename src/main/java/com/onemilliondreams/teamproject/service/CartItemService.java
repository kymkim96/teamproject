package com.onemilliondreams.teamproject.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.onemilliondreams.teamproject.Dao.CartItemDao;
import com.onemilliondreams.teamproject.dto.CartItemDto;
import com.onemilliondreams.teamproject.dto.CartItemReadResponseDto;

@Service
public class CartItemService {

	@Resource
	private CartItemDao cartItemDao;
	
	public List<CartItemReadResponseDto> getCartItems(int cid) {
		
		List<CartItemReadResponseDto> cartItems = cartItemDao.selectItemList(cid);
		return cartItems;
	}

	public void updateCartItem(CartItemDto cartItem) {
		
		cartItemDao.update(cartItem);
	}

	public String deleteCartItem(int ctid) {
		
		cartItemDao.delete(ctid);
		return "success";
	}
}









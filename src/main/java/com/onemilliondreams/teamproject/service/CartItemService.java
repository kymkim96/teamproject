package com.onemilliondreams.teamproject.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.onemilliondreams.teamproject.Dao.CartItemDao;
import com.onemilliondreams.teamproject.dto.CartItemDto;
import com.onemilliondreams.teamproject.dto.CartItemReadResponseDto;
import com.onemilliondreams.teamproject.dto.WriterDto;

@Service
public class CartItemService {

	@Resource
	private CartItemDao cartItemDao;
	@Resource
	private WriterService writerService;
	
	public List<CartItemReadResponseDto> getCartItems(int cid) {
		
		List<CartItemReadResponseDto> cartItems = cartItemDao.selectItemList(cid);
		List<CartItemReadResponseDto> newList = new ArrayList<>();
		
		for (CartItemReadResponseDto cartItem : cartItems) {
			List<WriterDto> bookWriterlist = writerService.getWriterList(cartItem.getIsbn());
			cartItem.setBookWriterlist(bookWriterlist);
			newList.add(cartItem);
		}
		
		return newList;
	}
	
	public int getCartItems(CartItemDto cartItem) {
		
		int rows = cartItemDao.selectCount(cartItem);
		return rows;
	}

	public void updateCartItem(CartItemDto cartItem) {
		
		cartItemDao.update(cartItem);
	}

	public String deleteCartItem(int ctid) {
		
		cartItemDao.delete(ctid);
		return "success";
	}

	public String saveCartItem(CartItemDto cartItem) {
		
		int rows = cartItemDao.insert(cartItem);
		if (rows > 0) {
			return "success";
		}
		return "fail";
	}

	public CartItemReadResponseDto getCartItem(int ctid) {
		CartItemReadResponseDto cartItem = cartItemDao.selectCartItem(ctid);
		return cartItem;
	}

}










package com.onemilliondreams.teamproject.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.onemilliondreams.teamproject.Dao.CartDao;
import com.onemilliondreams.teamproject.Dao.CartItemDao;
import com.onemilliondreams.teamproject.dto.CartDto;
import com.onemilliondreams.teamproject.dto.CartItemDto;

@Service
public class CartService {

	private static final Logger logger = LoggerFactory.getLogger(CartService.class);
	
	@Resource
	private CartDao cartDao;
	@Resource
	private CartItemService cartItemService;
	
	public CartDto getCart(int cid) {
		
		CartDto cart = cartDao.selectByPk(cid);
		
		return cart;
	}

	public CartDto getCart(String uaid) {

		CartDto cart = cartDao.selectByUaid(uaid);
		return cart;
	}

	@Transactional
	public String saveCartByUaid(CartDto cart, CartItemDto cartItem) {
		
		int cid = 0;
		String uaid = cart.getUsersUaid();
		CartDto existCart = getCart(uaid);
		
		if (existCart != null) {
			cid = existCart.getCid();
		} else {
			CartDto newCart = new CartDto();
			newCart.setUsersUaid(uaid);
			cartDao.insert(newCart);
			cid = newCart.getCid();
		}
		
		cartItem.setCartsCid(cid);
		// 장바구니에 등록할 책이 이미 있는지 확인
		Integer rows = cartItemService.getCartItems(cartItem);
		if (rows > 0) {
			return "이미 장바구니에 존재합니다.";
		}
		String result = cartItemService.saveCartItem(cartItem);
		
		return result;
	}
	
	@Transactional
	public String saveCartByCid(CartDto cart, CartItemDto cartItem) {
		
		Integer cid = cart.getCid();
		String result = null;
		CartDto existCart = new CartDto();
		if (cid != null) {
			existCart = getCart(cart.getCid());
		}
		
		// 존재하는 장바구니가 없거나 쿠키가 없는 경우, 장바구니 추가
		if (existCart == null || cid == null) {
			CartDto newCart = new CartDto();
			cartDao.insert(newCart);
			Integer newCid = newCart.getCid();
			
			cartItem.setCartsCid(newCid);
			result = cartItemService.saveCartItem(cartItem);
			if (result.equals("fail")) {
				return result;
			}
			
			return newCid.toString();
		}
		
		cartItem.setCartsCid(cid);
		// 장바구니에 등록할 책이 이미 있는지 확인
		Integer rows = cartItemService.getCartItems(cartItem);
		if (rows > 0) {
			return "이미 장바구니에 존재합니다.";
		}
		result = cartItemService.saveCartItem(cartItem);
		
		return result;
	}

}

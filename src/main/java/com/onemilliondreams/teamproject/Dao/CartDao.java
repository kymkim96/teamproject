package com.onemilliondreams.teamproject.Dao;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.onemilliondreams.teamproject.dto.CartDto;

@Repository
public class CartDao {

	@Resource
	private SqlSessionTemplate sst;
	
	public CartDto selectByPk(int cid) {
		
		CartDto cart = sst.selectOne("carts.selectByPk", cid);
		
		return cart;
	}

	public CartDto selectByUaid(String uaid) {
		
		CartDto cart = sst.selectOne("carts.selectByUaid", uaid);
		
		return cart;
	}

}

package com.onemilliondreams.teamproject.Dao;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.onemilliondreams.teamproject.dto.OrderDto;
import com.onemilliondreams.teamproject.dto.OrderItemDto;

@Repository
public class OrderDao {

	@Resource
	private SqlSessionTemplate sst;

	public int insertOrder(OrderDto order) {
		int rows = sst.insert("orders.insertorder", order);
		return rows;
	}

	public int insertOrderItem(OrderItemDto orderItem) {
		int rows = sst.insert("orders.insertorderitem", orderItem);
		return rows;
	}
	
}

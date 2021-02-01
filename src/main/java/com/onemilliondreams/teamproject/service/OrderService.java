package com.onemilliondreams.teamproject.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.onemilliondreams.teamproject.Dao.CartItemDao;
import com.onemilliondreams.teamproject.Dao.OrderDao;
import com.onemilliondreams.teamproject.dto.OrderDto;
import com.onemilliondreams.teamproject.dto.OrderItemDto;


@Service
public class OrderService {
	
	private static final Logger logger = LoggerFactory.getLogger(OrderService.class);
	
	@Resource
	private OrderDao orderDao;
	@Resource
	private CartItemDao cartitemDao;
	
	@Transactional
	public void order(OrderDto order, List<OrderItemDto> orderItemlist,int[] ctid) {
		//orders 테이블에 주문 정보 저장
		orderDao.insertOrder(order);
		//생성된 주문 번호
		int oid = order.getOid();	
				
		for(OrderItemDto ot: orderItemlist) {
			
		   ot.setOrdersOid(oid);
		   orderDao.insertOrderItem(ot);
	   }
		
		for(int ctid_temp: ctid) {
			cartitemDao.delete(ctid_temp);
		}
	}
	

	
	
	
	
	
	
	
	
	
	

}

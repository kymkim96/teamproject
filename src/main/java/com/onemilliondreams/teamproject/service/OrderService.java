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
	public void order(OrderDto order, List<OrderItemDto> orderItemlist
			//,int[] ctid
			) {
		//orders 테이블에 주문 정보 저장
		orderDao.insertOrder(order);//이걸 실행하면 ono를 알수 잇음
		//생성된 주문 번호
		int oid = order.getOid();
		
		
	   for(OrderItemDto ot: orderItemlist) {
		   ot.setOrdersOid(oid);
		   orderDao.insertOrderItem(ot);
		   
		   //여기서 업데이트를 해줘야 한다는 뜻이지~
		   //int otid = order.getOtid();
		   //이걸 어떻게 처리할지는 거의 미지수인데
		   //한 오티아이디당 한 그거자너,,?
		   //cartitemDao.updateOtid(ctid);
		   
	   }
		
	}
	

	
	
	
	
	
	
	
	
	
	

}

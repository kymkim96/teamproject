package com.onemilliondreams.teamproject.Dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.onemilliondreams.teamproject.dto.OrderDto;
import com.onemilliondreams.teamproject.dto.OrderedDto;

@Repository
public class OrderedDao {

	@Resource
	private SqlSessionTemplate sst;

	public List<OrderedDto> selectOrdered(int oid){
		List<OrderedDto> list = sst.selectList("ordereds.ordered", oid);
		return list;
		
		
	}

	public List<OrderDto> selectOrderlist(String usersUaid) {
		List<OrderDto> list = sst.selectList("ordereds.orderlist", usersUaid);
		return list;
	}
}

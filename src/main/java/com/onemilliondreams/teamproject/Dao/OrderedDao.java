package com.onemilliondreams.teamproject.Dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.onemilliondreams.teamproject.dto.OrderedDto;

@Repository
public class OrderedDao {

	@Resource
	private SqlSessionTemplate sst;

	public List<OrderedDto> selectOrdered(String usersUaid){
		List<OrderedDto> list = sst.selectList("ordereds.ordered", usersUaid);
		return list;
		
		
	}

	public List<OrderedDto> selectOrderlist(String usersUaid) {
		List<OrderedDto> list = sst.selectList("ordereds.orderlist", usersUaid);
		return list;
	}
	
}

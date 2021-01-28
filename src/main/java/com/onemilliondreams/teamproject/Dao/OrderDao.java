package com.onemilliondreams.teamproject.Dao;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDao {

	@Resource
	private SqlSessionTemplate sst;
	
	public AuthDao selectOrder(int oid) {
		AuthDao dao = sst.selectOne("orders.selectOrder", oid);
		return dao;
		
	}
	
}

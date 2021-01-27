package com.onemilliondreams.teamproject.Dao;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.onemilliondreams.teamproject.dto.AuthDto;
@Repository
public class AuthDao {

	@Resource
	private SqlSessionTemplate sst;
	
	public AuthDto selectAuth(String uaid) {
		AuthDto auth=sst.selectOne("auths.selectAuth", uaid);
		return auth;
	}
	
	
	public int insert(AuthDto dto) {
		int rows=sst.insert("auths.insert", dto);
		
		return rows;
		
	}

}

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
		//내가 입력한 uaid에 대한 db데이터를 가져온다.
		return auth;
	}
	
	
	public int insert(AuthDto dto) {
		int rows=sst.insert("auths.insert", dto);
		
		return rows;
		
	}
	
	public int update(AuthDto authDto) {
		
		int rows = sst.update("auths.update", authDto);
		return rows;
	}

	public int delete(String uaid) {
		int rows = sst.delete("auths.delete", uaid);
		return rows;
	}
	
	
}

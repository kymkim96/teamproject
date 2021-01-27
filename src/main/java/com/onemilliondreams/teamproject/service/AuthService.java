package com.onemilliondreams.teamproject.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.onemilliondreams.teamproject.Dao.AuthDao;
import com.onemilliondreams.teamproject.dto.AuthDto;

@Service
public class AuthService {

	@Resource
	private AuthDao authDao;
	public void join(AuthDto dto) {
		authDao.insert(dto);
		
	}

}

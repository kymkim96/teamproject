package com.onemilliondreams.teamproject.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;


import com.onemilliondreams.teamproject.Dao.AuthDao;
import com.onemilliondreams.teamproject.controller.AuthController;
import com.onemilliondreams.teamproject.dto.AuthDto;

@Service
public class AuthService {

	@Resource
	private AuthDao authDao;
	
	private static final Logger logger = 
			LoggerFactory.getLogger(AuthService.class);
	
	public String checkUaid(AuthDto dto) {
		
		AuthDto dbdata = authDao.selectAuth(dto.getUaid());
		if(dbdata != null) {
			logger.info("hi");
			return "중복";
		}
		
		return "성공";
	}
	
	
	public void join(AuthDto dto) {
		authDao.insert(dto);
	}
	
	public String login(AuthDto dto) {
		AuthDto dbdata = authDao.selectAuth(dto.getUaid());
		if(dbdata ==null) {
			return "wrongUaid";
		} else if(dbdata.getUapassword().equals(dto.getUapassword())) {
			if (dbdata.getRole() != null && dbdata.getRole().equals("admin")) {
				return dbdata.getRole();
			}
			return "success";
		} 
		
		return "wrongUapassword";
	}
	
	  public void updateAuth(AuthDto authdto) {
		   authDao.update(authdto); //리턴값 필요없어서 안받음
	   }




		public void deleteAuth(String uaid) {
			authDao.delete(uaid);
			
		}
	
		 public AuthDto getAuth(String uaid) {
			   AuthDto authdto = authDao.selectAuth(uaid);
			   return authdto;
		   }
	

}

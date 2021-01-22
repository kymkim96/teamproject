package com.onemilliondreams.teamproject.controller;

import java.sql.Connection;
import java.sql.SQLException;

import javax.annotation.Resource;
import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {
	public static final Logger logger = LoggerFactory.getLogger( HomeController.class);
	@RequestMapping("/")
	public String method() {
		
		return "index";
	}
	
	@Resource
	private DataSource dataSource;
	
	@GetMapping("/conntest")
	public String conntest() {
		try {
			Connection conn = dataSource.getConnection();
			logger.info("연결성공");
			conn.close();
		} catch (SQLException e) {
			logger.info("연결실패");
			e.printStackTrace();
		}finally {
			
		}
		return "index";
	}

	
}

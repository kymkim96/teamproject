package com.onemilliondreams.teamproject.Dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.onemilliondreams.teamproject.dto.PagerDto;
import com.onemilliondreams.teamproject.dto.WriterDto;

@Repository
public class WriterDao {
	
	private static final Logger logger = LoggerFactory.getLogger(WriterDao.class);
	
	@Resource
	private SqlSessionTemplate sst;
	
	public int insertWriter(WriterDto writer) {
		int rows = sst.insert("writers.insert", writer);
		return rows;
	}

	public List<WriterDto> getWriterList(String BookIsbn) {
		List<WriterDto> list = sst.selectList("writers.getwriterlist", BookIsbn);
		return list;
	}

	public int selectByName(String wname) {
		
		Integer wid = sst.selectOne("writers.selectByName", wname);
		
		if (wid == null) {
			wid = -1;
		}
		
		return wid;
	}

}
 
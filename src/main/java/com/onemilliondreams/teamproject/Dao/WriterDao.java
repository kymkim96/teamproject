package com.onemilliondreams.teamproject.Dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.onemilliondreams.teamproject.dto.WriterDto;

@Repository
public class WriterDao {
	
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

}
 
package com.onemilliondreams.teamproject.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.onemilliondreams.teamproject.Dao.WriterDao;
import com.onemilliondreams.teamproject.controller.WriterController;
import com.onemilliondreams.teamproject.dto.WriterDto;

@Service
public class WriterService {
	private static Logger logger = LoggerFactory.getLogger(WriterController.class);
	
	@Resource
	private WriterDao writerDao;
	
	public void insertWriter(WriterDto writer) {
		writerDao.insertWriter(writer);		
	}

	public List<WriterDto> getWriterList(String BookIsbn) {
		List<WriterDto> list = writerDao.getWriterList(BookIsbn);
		
		for(WriterDto writer: list) {
			String result = writer.getWcontent();
			writer.setWcontent(result.replace("\n", "<br/>"));
		}
		
		return list;
	}
	
	public int getWriterByWname(String wname) {
		
		Integer wid = writerDao.selectByName(wname);
		return wid;
	}
		
	
}

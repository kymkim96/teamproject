package com.onemilliondreams.teamproject.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.onemilliondreams.teamproject.Dao.OrderedDao;
import com.onemilliondreams.teamproject.dto.OrderDto;
import com.onemilliondreams.teamproject.dto.OrderedDto;
import com.onemilliondreams.teamproject.dto.WriterDto;

@Service
public class OrderedService {
	
	@Resource
	private OrderedDao orderedDao;
	@Resource
	private WriterService writerService;
	
	public List<OrderedDto> selectOrdered(int oid){
		List<OrderedDto> list = orderedDao.selectOrdered(oid);
		
		
		List<OrderedDto> list2 = new ArrayList<>();
		for(OrderedDto Ordered : list) {
			List<WriterDto> list3 = writerService.getWriterList(Ordered.getBooksIsbn());
			Ordered.setBookWriterlist(list3);
			list2.add(Ordered);
		}
		return list2;
	}

	public List<OrderDto> selectOrderlist(String usersUaid) {
		List<OrderDto> list = orderedDao.selectOrderlist(usersUaid);
		return list;
	}
	
	
}

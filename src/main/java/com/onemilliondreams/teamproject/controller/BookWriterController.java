package com.onemilliondreams.teamproject.controller;

import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.onemilliondreams.teamproject.dto.BookWriterDto;
import com.onemilliondreams.teamproject.service.BookWriterService;
import com.onemilliondreams.teamproject.service.WriterService;

@Controller
public class BookWriterController {

	@Resource
	private BookWriterService bookWriterService;
	@Resource
	private WriterService writerService;
	
	@PostMapping("/bookwriter-create")
	public void create(String isbn, String wname, HttpServletResponse response) throws Exception {
		
		response.setContentType("application/json;charset=UTF-8");
		PrintWriter pw = response.getWriter();
		JSONObject root = new JSONObject();

		Integer wid = writerService.getWriterByWname(wname);
		
		if (wid == -1) {
			root.put("result", "해당 작가가 존재하지 않습니다.");
			pw.println(root.toString());
			pw.flush();
			pw.close();
		}
		
		BookWriterDto bookWriter = new BookWriterDto();
		bookWriter.setBooksIsbn(isbn);
		bookWriter.setWritersWid(wid);
		Integer rows = bookWriterService.saveBookWriter(bookWriter);
		
		if (rows != null) {
			root.put("result", "매핑 성공");
			root.put("wid", wid);
			pw.println(root.toString());
			pw.flush();
			pw.close();
		}
		
		root.put("result", "매핑 실패");
		pw.println(root.toString());
		pw.flush();
		pw.close();
	}
	
	@PostMapping("/bookwriter-delete")
	public void delete(BookWriterDto bookWriter, HttpServletResponse response) {
		
		bookWriterService.deleteBookWriter(bookWriter);
	}
}

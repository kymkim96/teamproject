package com.onemilliondreams.teamproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/book-admin")
public class BookAdminPageController {

	@GetMapping("/create")
	public String create(Model model) {
		
		/**
		 * 관련 동영상 링크 첨부
		 * 동적으로 링크를 추가로 첨부하기 위해 사용하는 변수
		 * 각 URL 입력 input 태그의 id
		 */
		// model.addAttribute("videoIndex", 1);
		
		return "admin/BookCreate";
	}
	
	@GetMapping("/update")
	public String update() {
		
		return "admin/BookUpdate";
	}
	
//	// 관련 동영상 링크 첨부 폼 요청
//	@GetMapping("/video-form")
//	public String videoForm(int videoIndex, Model model) {
//		
//		/**
//		 * 관련 동영상 링크 첨부
//		 * 동적으로 링크를 추가로 첨부하기 위해 사용하는 변수
//		 * 각 URL 입력 input 태그의 id
//		 */
//		model.addAttribute("videoIndex", videoIndex);
//		
//		return "admin/form/VideoUrlForm";
//	}
}

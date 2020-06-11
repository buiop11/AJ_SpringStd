package com.ahjin.demo.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.ahjin.demo.model.Alien;
import com.ahjin.demo.service.AlienService;

//@RequestMapping(value="/mapper")  // 홈페이지 이름 주소 기존 맵핑 
@Controller  
@SessionAttributes({"Alien"})
public class AlienMapperController {
	
	
	@Autowired(required=true) 
	AlienService service;  
	
	/*
	 * @Value("${logging.file}") private String loggingFile;
	 */
 
	
	// mybatis 연동 mapper로 리스트 뿌리기 
	@RequestMapping("/list2")  // 게시판 리스트 
	public String alienList(Model model) throws Exception {
		
		List<Alien> alienList = service.getMapperList();
		
		System.out.println("이 맵퍼컨트롤러 타나?????? " + alienList);
		
		model.addAttribute("alienList", alienList);  // String, Object
		
		return "test";
	}
	


}

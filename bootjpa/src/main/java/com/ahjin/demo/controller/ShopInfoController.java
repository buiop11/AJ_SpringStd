package com.ahjin.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller // @RestController 사용시 전부 값의 형태로 넘어가기 떄문에 아래 @ResponseBody 사용안해도됨
@RequestMapping(value="/shopinfo")  
public class ShopInfoController {

	// [홈페이지 소개]
	// 1. 주인장 소개 
	@RequestMapping("/introduce_host") // 컨트롤러를 다르게 만들어야함 
	public String introduce_host() {
//		System.out.println("이거 탑ㄴ까???? 아래를 그냥 아예 못탐..ㅠㅠ 왜죠??");
		return "/shopinfo/introduce_host";
	}

}

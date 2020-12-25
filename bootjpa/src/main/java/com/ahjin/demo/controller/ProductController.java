package com.ahjin.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller 
// @RestController 사용시 전부 값의 형태로 넘어가기 떄문에 아래 @ResponseBody 사용안해도됨
@RequestMapping(value="/product") 
public class ProductController {

	// 상품리스트
	@RequestMapping("/productList") 
	public String productList() {
		return "/product/productList";
	}
	
	// 상품 싱글
	@RequestMapping("/productSingle") 
	public String productSingle() {
		return "/product/productSingle";
	}

}

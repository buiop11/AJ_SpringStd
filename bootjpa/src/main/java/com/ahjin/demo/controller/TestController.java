package com.ahjin.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	
	
	// ww 
	@RequestMapping("/Hello")
	public String guestBooks() {
		return "test2";
	}

}

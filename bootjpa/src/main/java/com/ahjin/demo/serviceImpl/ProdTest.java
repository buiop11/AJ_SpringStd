package com.ahjin.demo.serviceImpl;

import java.util.List;

import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Component;

import com.ahjin.demo.model.Alien;
import com.ahjin.demo.service.AlienService;

@Component  // 빈생성을 해준다. 
@Profile("prod")
public class ProdTest implements AlienService {

	@Override
	public List<Alien> getAlienList() {
		// 안씀 
		return null;
	}

	@Override
	public String getGreeting() {
		return "Hello from Prod!!!!!";
	}

}

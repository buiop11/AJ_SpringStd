package com.ahjin.demo.service;

import java.util.List;
import com.ahjin.demo.model.Alien;


public interface AlienService {
	
	public List<Alien> getAlienList(); 
	
	// profile 테스트 
	public String getGreeting();
	
}

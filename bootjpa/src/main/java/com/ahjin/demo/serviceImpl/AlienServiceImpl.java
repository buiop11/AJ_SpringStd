package com.ahjin.demo.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ahjin.demo.dao.AlienRepo;
import com.ahjin.demo.model.Alien;
import com.ahjin.demo.service.AlienService;

@Service //핵심 비지니스 로직을 정의 (보기 쉽게)
public class AlienServiceImpl implements AlienService {

	
	  @Autowired AlienRepo repo;
	  
	  // 에어리언 리스트 가져오기
	  
	  @Override public List<Alien> getAlienList() { return repo.findAll(); }
	 
}

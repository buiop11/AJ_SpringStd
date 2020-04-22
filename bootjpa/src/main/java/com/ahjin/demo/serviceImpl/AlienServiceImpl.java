package com.ahjin.demo.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Service;

import com.ahjin.demo.dao.AlienRepo;
import com.ahjin.demo.dao.CommentRepo;
import com.ahjin.demo.model.Alien;
import com.ahjin.demo.model.CommentVO;
import com.ahjin.demo.service.AlienService;

@Service //핵심 비지니스 로직을 정의 (보기 쉽게)
@Profile("dev")
public class AlienServiceImpl implements AlienService {

	
	  @Autowired AlienRepo alienRepo;
	  @Autowired CommentRepo commentRepo;
	  
	  // 에어리언 리스트 가져오기
	  @Override public List<Alien> getAlienList() { 
		  return alienRepo.findAll(); 
	  }

	
	// 게시글 1개 가져오기  
	@Override
	public Alien getOneAlien(int aid) {
		return alienRepo.getOne(aid);
	}
	 
	// 게시글 1건 추가하기
	@Override
	public int addAlien(Alien alien) {
		
		int result = 0; 
		
		if(alien !=null) {
			alienRepo.save(alien);
			result = 1;
		}
		
		return result;
	}
	
	// 게시글 1건 삭제하기 
	@Override
	public void deleteAlien(int aid) {

		//	int result = 0;
		alienRepo.deleteById(aid);  // 뭘로 반환이 되는건지 모르겠당 -> 들어가보니 void 이네 
		
	}

	// profile 테스트
	@Override
	public String getGreeting() {
		return "Hello from Dev!!!!";
	}

	// 코멘트 가지고 오기 
	@Override
	public List<CommentVO> getComment(int alienNum) {
		return commentRepo.findByAlienNum(alienNum);
	}




}

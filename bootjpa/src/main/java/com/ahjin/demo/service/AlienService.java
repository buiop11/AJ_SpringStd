package com.ahjin.demo.service;

import java.util.List;

import com.ahjin.demo.model.Alien;
import com.ahjin.demo.model.CommentVO;


public interface AlienService {
	
	// 리스트가져오기 
	public List<Alien> getAlienList(); 
	
	// 1개 게시글 가져오기 
	public Alien getOneAlien(int aid);
	
	// 게시글 추가하기 
	public int addAlien(Alien alien);
	
	// 게시글 1개 삭제하기 
	public void deleteAlien(int aid); // 값을 리턴하려면 어케야하지?
	
	// profile 테스트 
	public String getGreeting();
	
	// 댓글 리스트 가져오기 (aid에 맞춘) - 다른 테이블 
	public List<CommentVO> getComment(int alienNum);
	
	// 댓글 추가하기 
	public int addComment(CommentVO comment);
	
	// ★★mybatis로 리스트 가져오기 
	public List<Alien> getMapperList() throws Exception;
	
}

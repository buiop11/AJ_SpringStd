package com.ahjin.demo.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ahjin.demo.model.Alien;
import com.ahjin.demo.model.CommentVO;
import com.ahjin.demo.model.Criteria;
import com.ahjin.demo.model.GuestBook;
import com.ahjin.demo.model.PageMaker;


public interface AlienService {
	
	//부스트코스 방명록 
	public List<GuestBook> getGuestBook();
	//부스트코스 방명록 1개 추가 
	public int addGuestBook(GuestBook guestbook);
	
	//---------------------//
	
	// 리스트가져오기 
	public List<Alien> getAlienList(); 
	// 1개 게시글 가져오기 
	public Alien getOneAlien(int aid);
	// 게시글 추가하기 
	public int addAlien(Alien alien);
	// 게시글 1개 삭제하기 
	public void deleteAlien(int aid); // 값을 리턴하려면 어케야하지?
	
	//------------------//
	
	// profile 테스트 
	public String getGreeting();
	
	// 댓글 추가하기 
	//public CommentVO addComment(CommentVO comment);
	public int addComment(CommentVO comment)  throws Exception;
	
	
	// ★★mybatis로 게시판(alien) 리스트 가져오기 
	public List<Alien> getMapperList(Map<String, Object> param) throws Exception;
	// mybatis로 가져오는거는 throws 다 던져야 하나보다. 
	// 댓글 리스트 가져오기 (aid에 맞춘) - 다른 테이블 
	public List<CommentVO> getComment(int alienNum) throws Exception;
	
	// 지울거 - prod 
	List<Alien> getMapperList() throws Exception;
	List<Alien> getMapperList(HashMap<String, Object> page) throws Exception;
	PageMaker webzinePagingInfo(Map<String, Object> param, Criteria cri) throws Exception;
	
	// 게시판 페이징 20201229
    public PageMaker pagingInfo(Map<String, Object> param, Criteria cri) throws Exception;
	
	
}

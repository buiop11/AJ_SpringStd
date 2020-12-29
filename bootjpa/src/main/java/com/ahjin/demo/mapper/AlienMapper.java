package com.ahjin.demo.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Repository;

import com.ahjin.demo.model.Alien;
import com.ahjin.demo.model.CommentVO;


/*@Mapper*/
@MapperScan
@Repository
public interface AlienMapper {

	// 리스트 뽑아오기 
	public List<Alien> selectAlienList(Map<String,Object> page) throws Exception;
	
	// 코멘트 리스트 뽑아오기 
	public List<CommentVO> selectFindParentDesc(int parent) throws Exception;

	// 코멘트 저장하기 - 트리거써야함
	public int makeComment(CommentVO comment) throws Exception;
	// 대댓글일때 - depth = 2
	public int makeReComment(CommentVO comment) throws Exception;
	
	
	// 추가 20201229  - 리스트 카운트 수 세기 
	public int selectAlienListCount(Map<String, Object> param) throws Exception;
}

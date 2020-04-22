package com.ahjin.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ahjin.demo.model.CommentVO;

@Repository
public interface CommentRepo extends JpaRepository<CommentVO, Integer>{
// CrudRepository<Alien, Integer>  : Alien 객체의 Primary Key  --> 리턴타입들이 복잡 / JpaRepository는 List로 리턴가능
	
	// 아래는 개발자 구미대로 추가해서 넣는거. 
	
	//List<Alien> findByTech(String tech);
	
	//List<Alien> findByAidGreaterThan(int aid);
	// invaild derived query! No property GT found for type Traversed path: Alien.aid. 함수를 내맘대로 정하면 에러가 난다. 
	// JPA 도큐먼트에 내용 나옴. 정해져있는 메소드명이 따로 있다.
	
	List<CommentVO> findByAlienNum(int AlienNum);
	
}

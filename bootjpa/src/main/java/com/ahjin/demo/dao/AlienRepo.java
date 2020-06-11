package com.ahjin.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
//import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ahjin.demo.model.Alien;

@Repository
public interface AlienRepo extends JpaRepository<Alien, Integer> {
// CrudRepository<Alien, Integer>  : Alien 객체의 Primary Key  --> 리턴타입들이 복잡 / JpaRepository는 List로 리턴가능

	// 이 인터페이스는 JpaRepository를 상속한거로도 기본적인 메소드를 다 사용할 수 있다.
	// 아래는 개발자 구미대로 추가해서 넣는거.

	// List<Alien> findByTech(String tech);

	// List<Alien> findByAidGreaterThan(int aid);
	// invaild derived query! No property GT found for type Traversed path:
	// Alien.aid. 함수를 내맘대로 정하면 에러가 난다.
	// JPA 도큐먼트에 내용 나옴. 정해져있는 메소드명이 따로 있다.
	// Unsatisfied dependency expressed through field 'repo';

	// JPQL / HQL
	// 없는 컬럼으로 sorted 시 org.h2.jdbc.JdbcSQLSyntaxErrorException: Column "NAME" not
	// found; SQL statement: 에러발생
	
	@Query("from Alien order by aname") 
	List<Alien>findByTechSorted(String tech); // aname으로 정렬
	 

}

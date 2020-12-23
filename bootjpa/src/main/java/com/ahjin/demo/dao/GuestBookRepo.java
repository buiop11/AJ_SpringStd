package com.ahjin.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ahjin.demo.model.GuestBook;

@Repository
public interface GuestBookRepo extends JpaRepository<GuestBook, Integer> {
// CrudRepository<Alien, Integer>  : Alien 객체의 Primary Key  --> 리턴타입들이 복잡 / JpaRepository는 List로 리턴가능

	// 이 인터페이스는 JpaRepository를 상속한거로도 기본적인 메소드를 다 사용할 수 있다.
	// 아래는 개발자 구미대로 추가해서 넣는거.
	
	// 반대로 가장 늦은게 위에 올라오게 정의 (JPA이름에 맞게 설정해야함)
	List<GuestBook> findAllByOrderByIdDesc(); // findAllByOrderByRegDateDesc - 날짜 기준으로 해야하지만, 일단 안나오므로..

}

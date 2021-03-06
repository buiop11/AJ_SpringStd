package com.ahjin.demo.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.beans.factory.BeanNameAware;
import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter @Setter
@Component  //-> ??
@Data
@Entity  // JPA가 관리하는 클래스 라는 뜻 - JPA와 매핑할 클래스는 반드시 기재 
public class Alien implements BeanNameAware {
// alien 이게.. table 이름이랑 같은거 넣어야함. 이름 alienVO로 살짝 바꾸었더니 mysql-binding이 안됨.
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO) // 키(시퀀스같은) 자동생성
	private int aid;  // key 
	
	@Column(name="aname")
	private String aname;  // 작성자 
	
	@Column(name="title")	
	private String title;   // 제목 
	
	@Column(name="content")
	private String content;  // 내용 
	
	@Column(name="writeday")
	private Date writeDay;  // 작성일 
	
	@Column(name="readcnt")
	private int readCnt;  // 조회수 
	

	// BeanNameAware 오버라이드 (@Component 로 빈추가를 해주면 확인가능)
	@Override
	public void setBeanName(String name) {
		System.out.println("빈 네임 확인 ~~~~~ : " + name + "---Alien.java - model 파일에서 찍는다.");
	}
	
	
	
}

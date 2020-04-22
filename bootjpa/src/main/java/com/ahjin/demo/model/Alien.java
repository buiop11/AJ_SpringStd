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

//@Getter @Setter
@Component  //-> ??
@Data
@Entity  // JPA가 관리하는 클래스 라는 뜻 - JPA와 매핑할 클래스는 반드시 기재 
public class Alien implements BeanNameAware {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO) // 키(시퀀스같은) 자동생성
	private int aid;  // key 
	
	@Column(name="name")
	private String aname;  // 작성자 
	
	@Column(name="title")
	private String title;   // 제목 
	
	@Column(name="content")
	private String content;  // 내용 
	
	@Column(name="write")
	private Date writeDay;  // 작성일 
	
	@Column(name="readcnt")
	private int readCnt;  // 조회수 
	


	/*
	 * public int getAid() { return aid; }
	 * 
	 * 
	 * public void setAid(int aid) { this.aid = aid; }
	 * 
	 * 
	 * public String getAname() { return aname; }
	 * 
	 * 
	 * public void setAname(String aname) { this.aname = aname; }
	 * 
	 * 
	 * public String getTitle() { return title; }
	 * 
	 * 
	 * public void setTitle(String title) { this.title = title; }
	 * 
	 * 
	 * public String getContent() { return content; }
	 * 
	 * 
	 * public void setContent(String content) { this.content = content; }
	 * 
	 * 
	 * public Date getWriteDay() { return writeDay; }
	 * 
	 * 
	 * public void setWriteDay(Date writeDay) { this.writeDay = writeDay; }
	 * 
	 * 
	 * public int getReadCnt() { return readCnt; }
	 * 
	 * 
	 * public void setReadCnt(int readCnt) { this.readCnt = readCnt; }
	 */

	// BeanNameAware 오버라이드 (@Component 로 빈추가를 해주면 확인가능)
	@Override
	public void setBeanName(String name) {
		System.out.println("빈 네임 확인 ~~~~~ : " + name + "---Alien.java - model 파일에서 찍는다.");
	}
	
	
	
}

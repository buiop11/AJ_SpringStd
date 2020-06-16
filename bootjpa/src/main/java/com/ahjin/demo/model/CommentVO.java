package com.ahjin.demo.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;

import lombok.Data;

@Data  // 롬복데이타 (게터,세터 생략가능)
@Entity
@Table(name="comment_tb")
public class CommentVO {

	@GeneratedValue(strategy = GenerationType.AUTO)
	@Id
	private int conum;   // 테이블명이랑 같으면 column 안넣어도됨.
	
	@Column(name="writer")
	private String writer;
	
	@JoinColumn(name="aid")  // Alien 테이블의 aid랑 매칭하고싶음.
	@Column(name="parent") 
	private int parent;	 // 대문자는 에러다.
	
	@Column(name="depth")
	private int depth;
	
	@Column(name="depth2")
	private int depth2;
	
	@Column(name="secret")   // default = 'N'
	private String secret;
	
	@Column(name="commentdate")    // default = CURRENT_TIMESTAMP
	private Date commentdate;
	
	@Column(name="comment")
	private String comment;
	
}

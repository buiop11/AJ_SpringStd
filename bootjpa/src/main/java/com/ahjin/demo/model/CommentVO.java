package com.ahjin.demo.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;

@Data  // 롬복데이타 (게터,세터 생략가능)
@Entity
@Table(name="comment")
public class CommentVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int seq;
	
	@Column(name="writer")
	private String writer;
	
	@JoinColumn(name="aid")  // Alien 테이블의 aid랑 매칭하고싶음.
	@Column(name="aliennum") // 대문자는 에러다.
	private int alienNum;
	
	@Column(name="depth")
	private int depth;
	
	@Column(name="secret")
	private String secret;
	
	@Column(name="date")
	private Date date;
	
}

package com.ahjin.demo.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter @Setter
@Data
@Entity
@Table(name="guestbook")
public class GuestBook {

	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO) // 키(시퀀스같은) 자동생성
	private int id;  // key 
	
	@Column(name="name")
	private String name;   
	
	@Column(name="content")
	private String content;   
	
	@Column(name="regdate")
	private Date regdate;   
	
}

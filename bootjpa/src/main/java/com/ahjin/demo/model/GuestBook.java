package com.ahjin.demo.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

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
	
	// //@CreationTimestamp
	@Column(name="regdate")
	private String regdate;   
	// 테이블의 DATETIME 모양을 그냥 String으로 가져와서 초단위까지 찍는다.
	// 근데 입력도 이걸로 받아야함..다시 Date 타입으로 변경함 ==> 근데 상관없을듯 어차피 입력을 안하고, default로 되는건 DB에서 되는거 다시 String으로 수정 
}

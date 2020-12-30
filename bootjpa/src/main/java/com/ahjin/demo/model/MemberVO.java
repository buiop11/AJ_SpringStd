package com.ahjin.demo.model;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter @Setter
@Component
@Data  // 롬복데이타 (게터,세터 생략가능)
@Entity
@Table(name="member")
public class MemberVO {

	@Id
	private String id;   // 테이블명이랑 같으면 column 안넣어도됨.
	
	private String pwd;
	
	private String name;	
	
	private String email;
	
	private int auth;
	
	private String nid;
	
	private String kid;
	
	// mysql datetime형 컬럼과 매핑 
	private LocalDateTime joindate;
	
	
}

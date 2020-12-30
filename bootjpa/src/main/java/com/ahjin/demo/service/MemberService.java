package com.ahjin.demo.service;

import com.ahjin.demo.model.MemberVO;


// 로그인 
public interface MemberService {
	
	
	// 회원정보 1개 가지고오기 
	//public MemberVO getMember(String id, String pwd);
	
	// 회원가입 처리  
	public int addMember(MemberVO member);
	
	// 탈퇴처리하기 
	public int deleteMember(String id, String pwd); 
	
}

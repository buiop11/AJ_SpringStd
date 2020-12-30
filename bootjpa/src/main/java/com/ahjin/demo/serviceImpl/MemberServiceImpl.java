package com.ahjin.demo.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Service;

import com.ahjin.demo.dao.MemberRepo;
import com.ahjin.demo.model.MemberVO;
import com.ahjin.demo.service.MemberService;


// 로그인
@Service //핵심 비지니스 로직을 정의 (보기 쉽게)
@Profile("dev")
public class MemberServiceImpl implements MemberService {

	
	  // JPA 객체 연결 
	  @Autowired MemberRepo memberRepo;


	  // 로그인 
//	  @Override
//	  public MemberVO getMember(String id, String pwd) {
//		  return memberRepo.getOne(id,pwd);
//	  }
	
	  
	  // 회원가입하기 
	  @Override
	  public int addMember(MemberVO member) {
		int result = 0; 
		
		if(member !=null) {
			memberRepo.save(member);
			result = 1;
		}
		
		return result;
	  }
	
	 
	  // 탈퇴하기 
	  @Override
	  public int deleteMember(String id, String pwd) {
		  int result = 0;
		  
		  //MemberVO mem = memberRepo.getOne(id);
//		  if(mem.getPwd().equals(pwd)) {
//			  result = memberRepo.deleteById(id); // 뭘로 리턴하는지 보자 
//			  System.out.println("삭제되었습니다. delete _jpa는 무엇을 반환할까요? " + result);
//		  }
//		  
		  return result;
	  }
	  

	
}

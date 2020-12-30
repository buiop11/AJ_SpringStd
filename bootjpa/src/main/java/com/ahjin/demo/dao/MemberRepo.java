package com.ahjin.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ahjin.demo.model.MemberVO;

@Repository
public interface MemberRepo extends JpaRepository<MemberVO, Integer> {


	// findById 파라미터 타입이 int밖에 없어서 String으로 추가함 
	// 아이디 찾기 (findAllId 사용) 

	// 로그인 
	//MemberVO getOne(String id, String pwd);

	// 삭제시 사용
	//MemberVO getOne(String id);
	int deleteById(String id);
	


}

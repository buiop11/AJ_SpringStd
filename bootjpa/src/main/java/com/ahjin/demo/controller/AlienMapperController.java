package com.ahjin.demo.controller;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.ahjin.demo.model.Alien;
import com.ahjin.demo.model.CommentVO;
import com.ahjin.demo.service.AlienService;

//@RequestMapping(value="/mapper")  // 홈페이지 이름 주소 기존 맵핑 
@Controller  
@SessionAttributes({"Alien"})
public class AlienMapperController {
	
	
	@Autowired(required=true) 
	AlienService service;  
	
	/*
	 * @Value("${logging.file}") 
	 * private String loggingFile;
	 */
 
	
	// mybatis 연동 mapper로 리스트 뿌리기 
	@RequestMapping("/list2")  // 게시판 리스트 
	public String alienList(Model model) throws Exception {
		
		List<Alien> alienList = service.getMapperList();
		model.addAttribute("alienList", alienList);  // String, Object
		return "test";
	}
	
	
	// 상세 페이지 내 - 코멘트 뿌리기 (mybatis사용) 
	//@ResponseBody
	@RequestMapping(value = "/ajaxCommentList")
	public String ajaxCommentList(HttpServletRequest req, Model model) throws Exception {

		String aid = req.getParameter("aid");
		int aid2 = Integer.parseInt(aid);  // 게시판 맞는 글 가지고 와야하니깐 
		
		// 댓글도 가지고온다.
		List<CommentVO> comments = service.getComment(aid2);  
		model.addAttribute("comments", comments);

		return "ajaxCommentList";
	}

	
	// 코멘트 생성하기(추가, 등록하기)
	@ResponseBody   // ajax 값 리턴할때는 무조건 써야한다!!!!!!!!!!! ㅠㅠ 
	@RequestMapping("/makeComment") 
	public int makeComment(HttpServletRequest req, Model model) throws Exception{
		
	  // 코멘트 
	  String comment = req.getParameter("comment"); 
	 
	  // 게시글 번호 
	  String aid2 = req.getParameter("parent"); 
	  int parent = Integer.parseInt(aid2);   
	  
	  // 작성자 
	  String writer = req.getParameter("writer"); 
	  
	  // 깊이 첫댓글=1, 이후댓글은 =2,이후는없음^^
	  String depth_n = req.getParameter("depth");
	  int depth = Integer.parseInt(depth_n);    
	  
	  // depth2는 = conum  
	  // 첫댓글 번호 따라가기
	  String depth_n2 = req.getParameter("pe_depth");
	  int depth2 = Integer.parseInt(depth_n2);  
	  
	  // 비밀글
	  String secret = req.getParameter("secret");
  
	  
	  CommentVO co = new CommentVO();
	  //co.setConum(conum);  // 이거 자동으로 만들어진다. 
	  co.setParent(parent);  // 부모게시판 
	  co.setComment(comment);
	  co.setDepth(depth);    
	  
	  co.setDepth2(depth2);
		  
	  co.setWriter(writer);
	  co.setSecret(secret);
	  
	  // 현재시간저장 -- 테이블만들때 디폴트로 해놓긴했는데 ㅡㅡ;;
	  //Date sqlDate = new java.sql.Date(System.currentTimeMillis());
	 // co.setCommentdate(sqlDate);
	  
	  //co = service.addComment(co); -- jpa
	  int co2 = service.addComment(co);
  
	  //java.lang.IllegalArgumentException: Unknown return value type: java.lang.Integer
	  // int result 타입으로 리턴하려고했으나, 이렇게 에러가 난다. 
	  
	  return co2; 
	}	 

}

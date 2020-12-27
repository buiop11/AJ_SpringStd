package com.ahjin.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ahjin.demo.model.Alien;
import com.ahjin.demo.service.AlienService;

@Controller // @RestController 사용시 전부 값의 형태로 넘어가기 떄문에 아래 @ResponseBody 사용안해도됨
@RequestMapping(value="/board")
public class BoardController {

	/*
	 * @Autowired AlienRepo repo;
	 */

	@Autowired(required = true)
	AlienService service;


	// --------- 게시판 ------- JPA로 처리해보기(일단은 mybatis)- 
	// 댓글을 달면 jpa 못하겠음ㅠㅠ
	@RequestMapping("/boardList") // 게시판 리스트
	public String boardList() {
		return "/board/boardList";
	}

	// 리스트 뿌리기
	// @ResponseBody
	@RequestMapping(value = "/ajaxBoardList")
	public String ajaxBoardList(Model model) {

		List<Alien> alienList = service.getAlienList();
		// List<Alien> alienList = repo.findAll(); // 전체 가져오기
		model.addAttribute("boardList", alienList);

		return "/board/ajaxBoardList";
	}

	// 추가하기페이지로 이동
	@RequestMapping("/goAddPage")
	public String goAddPage() {
		return "/board/addBoard";
	}

	// 게시글 추가하기
	@RequestMapping("/saveBoard") // url이랑 jsp 페이지랑 매칭안됨 // 이 url들어가면 자동으로 그냥 만들어짐... ㅎㄷㄷ ;;
	public String saveBoard(Alien alien) {
		// 파라미터값을 Alien 으로 받아야한다. --> jpa형태로 저장하려면
		// repo.save(alien)을 탈 수 있는 서비스 페이지로 이동
		// ★ 저장에 실패했을 때 처리하는거 있어야함 /// --- Exception
		service.addAlien(alien);
		System.out.println(alien);
		
		// 저장되었습니다. 팝업띄운후 리스트 페이지로 돌아간다.
		return "/board/boardList";
	}

	// 게시글 삭제하기
	@RequestMapping("/deleteBoard")
	public String deleteBoard(int aid) {
		service.deleteAlien(aid);

		// 삭제 후 이동시키는 페이지 작성
		return "/board/deleteBoard";
	}

	// 게시글 1개 상세페이지 @PathVariable - @ResponseBody은 짝꿍입니다.
	@RequestMapping("/getBoard")
	public String getBoard(HttpServletRequest req, Model model) {

		String aid2 = req.getParameter("aid"); // 왜 String으로밖에 못가지고오지??ㅠㅠ
		int aid = Integer.parseInt(aid2);
		Alien alien = service.getOneAlien(aid);

		model.addAttribute("board", alien);

		return "/board/showBoard";
	}

}

package com.ahjin.demo.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ahjin.demo.dao.AlienRepo;
import com.ahjin.demo.model.Alien;
import com.ahjin.demo.service.AlienService;

@Controller   // @RestController 사용시 전부 값의 형태로 넘어가기 떄문에 아래 @ResponseBody 사용안해도됨
public class AlienController {
	
	
	/*
	 * @Autowired AlienRepo repo;
	 */
	
	
	@Autowired(required=true) AlienService service;
	 
	@RequestMapping("/")  // 대문 
	public String home() {
		return "home.jsp";
	}
	
	
	@RequestMapping("/alienList")  // 게시판 리스트 
	public String alienList() {
		return "alienList.jsp";
	}
	
	
	// 리스트 뿌리기 
	//@ResponseBody
	@RequestMapping(value="/ajaxAlienList")
	public String ajaxAlienlist(Model model) {
		
		List<Alien> alienList = service.getAlienList();
		//List<Alien> alienList = repo.findAll(); // 전체 가져오기
		model.addAttribute("alienList",alienList);
		
		return "ajaxAlienList.jsp";
	}
	
	/*
	 * //@RequestMapping("/aliens") //위랑 동일한거
	 * 
	 * @RequestMapping(path="/aliens", produces= {"application/xml"}) // only xml 로만
	 * 받겠다 - consumes={"application/xml"}/ 포스트맨에서 해봄
	 * 
	 * @ResponseBody public List<Alien> getAliens() { return repo.findAll(); // 원래
	 * 있던 메소드 .findAll() //data로 리턴시 @ResponseBody 사용 // .toString() 하려면 return 타입을
	 * String으로 --> findAll()은 JpaRepository에서 한번더 정의되어서 리턴타입 List<T> // 리턴타입 String
	 * 아니면 json타입으로 리턴됨 }
	 * 
	 * 
	 * @RequestMapping("/addAlien") public String addAlien(Alien alien) {
	 * 
	 * repo.save(alien); // Alien을 저장한다. return "home.jsp"; }
	 * 
	 * 
	 * @DeleteMapping("/deleteAlien/{aid}") // 이렇게 쓸거면 @PathVariable 잊어먹지말기!
	 * // @DeleteMapping? -> 쓰려면 @RestController로 수정 public String
	 * deleteAlien(@PathVariable int aid) {
	 * 
	 * Alien a = repo.getOne(aid); repo.delete(a);
	 * 
	 * return "deleted"; // 페이지가 없어서 에러남. }
	 * 
	 * 
	 * @RequestMapping("/getAlien") public ModelAndView getAlien(@RequestParam int
	 * aid) {
	 * 
	 * ModelAndView mv = new ModelAndView("showAlien.jsp");
	 * 
	 * Alien alien = repo.findById(aid).orElse(new Alien()); // 또는 .orElse(null)
	 * 
	 * // 값 넘기기 전에 한번 찍어보기 System.out.println(repo.findByTech("Java")); //[Alien
	 * [aid=101, aname=Navin, tech=Java], Alien [aid=104, aname=Kamal, tech=Java]]
	 * System.out.println(repo.findByAidGreaterThan(102));
	 * System.out.println(repo.findByTechSorted("Java"));
	 * 
	 * mv.addObject(alien); return mv; // 모델엔뷰로 리턴 .. 확인해야함 }
	 * 
	 * 
	 * 
	 * @RequestMapping("/alien/{aid}") // 와일드카드 {}
	 * 
	 * @ResponseBody public Optional<Alien> getUrlAlien(@PathVariable("aid") int
	 * aid) { return repo.findById(aid); // .toString() 하려면 return 타입을 String으로 -->
	 * findById() 리턴타입은 CrudRepository에 있고 Optinal<T>타입 // 리턴타입 String 아니면 json타입으로
	 * 리턴됨 }
	 */
}

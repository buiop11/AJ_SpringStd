package com.ahjin.demo.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ahjin.demo.model.Alien;
import com.ahjin.demo.model.CrawlingVO;
import com.ahjin.demo.model.GuestBook;
import com.ahjin.demo.model.MemberVO;
import com.ahjin.demo.service.AlienService;
import com.ahjin.demo.service.MemberService;

@Controller // @RestController 사용시 전부 값의 형태로 넘어가기 떄문에 아래 @ResponseBody 사용안해도됨
@RequestMapping(value="/")
public class AlienController {

	/*
	 * @Autowired AlienRepo repo;
	 */

	@Autowired(required = true)
	AlienService service;
	
	@Autowired(required = true)
	MemberService memberService;

	@Value("${logging.file}")
	private String loggingFile;

	@Value("${myproperty}")
	private String myproperty;

	// 대문
	@RequestMapping("/")
	public String home(Model model) {

		String greeting = service.getGreeting() + "찍어본다 - 로깅파일 : " + loggingFile + "이건 기본 프로퍼티 : " + myproperty;
		model.addAttribute("greeting", greeting);// profile예제

		return "home";
	}
	
	
	// 2020-부스트코스-방명록만들기 
	@RequestMapping("/guestbooks")
	public String guestBooks() {
		return "guestbooks";
	}
	// 방명록 리스트 
	@RequestMapping("/ajaxGuestBooks")
	public String ajaxGuestBooks(Model model) {
		
		List<GuestBook> guestbook = service.getGuestBook();
		model.addAttribute("guestbooks",guestbook);
		return "ajaxGuestBooks";
	}
	// 방명록 추가 
	@RequestMapping("/addGuestBook")
	public String addGuestBook(GuestBook guestbook) {
		
		System.out.println(guestbook);
		service.addGuestBook(guestbook);
		
		return "guestbooks";
	}

	// --------- 게시판 -------JPA인지, mybatis인지확인-> 댓글때문에 mybatis로 옮긴듯  //
//	@RequestMapping("/alienList") // 게시판 리스트
//	public String alienList() {
//		return "alienList";
//	}
//
//	// 리스트 뿌리기
//	// @ResponseBody
//	@RequestMapping(value = "/ajaxAlienList")
//	public String ajaxAlienlist(Model model) {
//
//		List<Alien> alienList = service.getAlienList();
//		// List<Alien> alienList = repo.findAll(); // 전체 가져오기
//		model.addAttribute("alienList", alienList);
//		System.out.println("차이점체크 : " + alienList);
//
//		return "ajaxAlienList";
//	}
//
//	// 추가하기페이지로 이동
//	@RequestMapping("/goAddPage")
//	public String goAddPage() {
//		return "addAlien";
//	}
//
//	// 게시글 추가하기
//	@RequestMapping("/addAlien") // url이랑 jsp 페이지랑 매칭안됨 // 이 url들어가면 자동으로 그냥 만들어짐... ㅎㄷㄷ ;;
//	public String addAlien(Alien alien) {
//		// 파라미터값을 Alien 으로 받아야한다. --> jpa형태로 저장하려면
//		// repo.save(alien)을 탈 수 있는 서비스 페이지로 이동
//		// ★ 저장에 실패했을 때 처리하는거 있어야함 /// --- Exception
//		service.addAlien(alien);
//		System.out.println(alien);
//		
//		// 저장되었습니다. 팝업띄운후 리스트 페이지로 돌아간다.
//		return "alienList";
//	}
//
//	// 게시글 삭제하기
//	@RequestMapping("/deleteAlien")
//	public String deleteAlien(int aid) {
//		service.deleteAlien(aid);
//
//		// 삭제 후 이동시키는 페이지 작성
//		return "deleteAlien";
//	}
//
//	// 게시글 1개 상세페이지 @PathVariable - @ResponseBody은 짝꿍입니다.
//	@RequestMapping("/getAlien")
//	public String getAlien(HttpServletRequest req, Model model) {
//
//		String aid2 = req.getParameter("aid"); // 왜 String으로밖에 못가지고오지??ㅠㅠ
//		int aid = Integer.parseInt(aid2);
//		Alien alien = service.getOneAlien(aid);
//
//		model.addAttribute("alien", alien);
//
//		return "showAlien";
//	}
	

	// location (주소)
	@RequestMapping("/location")
	public String location() {
		return "location";
	}
	
	// ========= member ===============
	// 로그인 
	@RequestMapping("/login")
	public String login() {
		return "/member/login";
	}
	
	// 로그인 처리 
	@RequestMapping("/loginPro")
	public String loginPro(HttpSession session) {
		
		// 세션 추가 해야함
		// 쿠키 추가해야함 (id 저장하기 넣게) 
		//session.setAttribute("sessionVO", value);
		return "";
	}
	
	// 로그아웃
	@RequestMapping("/logout")
	public String logout() {
		// 세션 초기화 
		//session.invalidate(); //session 초기화
//	    @ResponseBody
//	    public ResultVO logout(Model model, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception {
//	        try {
//	            if (session.getAttribute("sessionVO") != null) {
//	                //로그 아웃시에 모든 쿠키 값들을 비워줌
//	                this.ClearAirsCookie(response);
//	                session.invalidate(); //session 초기화
//	            }
//	            response.sendRedirect(request.getContextPath() + "/");
//	        } catch (Exception e) {
//	        }
//
//	        ResultVO resultVO = new ResultVO();
//	        return resultVO;
//	    }
		
		return "";
	}
	
	// 회원가입 
	@RequestMapping("/signUp")
	public String signUp() {
		return "/member/signUp";
	}
	
	// 비밀번호 찾기 (이메일 발송)
	@RequestMapping("/forgotPassword")
	public String forgotPassword() {
		return "/member/forgotPassword";
	}

	// 회원가입 등록 
	@RequestMapping(value="/registerMember", method=RequestMethod.POST)
	public String registerMember(MemberVO member, Model model) {
		int result = memberService.addMember(member);
		model.addAttribute("result", result);
		return "/member/signUpPro";
	}
	
	// 아이디 중복확인 해야겠네 (일단 이메일은 제외한다..)

	/*
	 * @RequestMapping("/makeComment") public int makeComment(CommentVO comment) {
	 * 
	 * System.out.println("코멘트가넘어오나 찍어보니~~~~ : " + comment); int result =
	 * service.addComment(comment);
	 * 
	 * org.springframework.dao.InvalidDataAccessResourceUsageException: error
	 * performing isolated work; SQL [n/a]; nested exception is
	 * org.hibernate.exception.SQLGrammarException: error performing isolated work
	 * Caused by: org.hibernate.exception.SQLGrammarException: error performing
	 * isolated work Caused by: java.sql.SQLSyntaxErrorException: Table
	 * 'test.hibernate_sequence' doesn't exist
	 * 
	 * return result; }
	 */
	
	
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
	 * @RequestMapping("/addAlien") public String addAlien(Alien alien) {
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
	 * aid) { ModelAndView mv = new ModelAndView("showAlien.jsp");
	 * 
	 * Alien alien = repo.findById(aid).orElse(new Alien()); // 또는 .orElse(null)
	 * 
	 * // 값 넘기기 전에 한번 찍어보기 System.out.println(repo.findByTech("Java")); //[Alien
	 * [aid=101, aname=Navin, tech=Java], Alien [aid=104, aname=Kamal, tech=Java]]
	 * System.out.println(repo.findByAidGreaterThan(102));
	 * System.out.println(repo.findByTechSorted("Java"));
	 * 
	 * mv.addObject(alien); return mv; // 모델엔뷰로 리턴 .. 모델앤뷰는 -> jsp페이지랑 model처럼 값
	 * 넘기는거랑 모델엔뷰 객체에 한꺼번에 넣어서 던지는 것임.
	 * 
	 * @RequestMapping("/alien/{aid}") // 와일드카드 {}
	 * 
	 * @ResponseBody public Optional<Alien> getUrlAlien(@PathVariable("aid") int
	 * aid) { return repo.findById(aid); // .toString() 하려면 return 타입을 String으로 -->
	 * findById() 리턴타입은 CrudRepository에 있고 Optinal<T>타입 // 리턴타입 String 아니면 json타입으로
	 * 리턴됨 }
	 */

	// 원우가 요청한 웹 크롤링 예제
	@RequestMapping("/mkYearBook")
	public String mkYearBook(Model model) throws IOException {

		// 돌려보낼 큰 그릇 하나 선언
		List<CrawlingVO> mk = new ArrayList<CrawlingVO>();
		// 개별그릇 반만 선언 (for문 안에 있어도 되지만 그냥 여따함)
		CrawlingVO vo;

		for (int i = 0; i < 5; i++) {
			// 일단 5개만 (로딩이 기니깐) 1000까지하려면 i<100으로 수정

			String url = "http://m.mk.co.kr/yearbook/index.php?page=" + i + "&TM=Y2&MM=T0";

			System.out.println(url);

			// 1. Jsoup 라이브러리를 다운받아야 한다. (jar 파일) - maven에 dependency를 추가한다.
			Document doc = Jsoup.connect(url).get(); // Exception 설정해야함.
			Elements elements = doc.select("div").select(".tablet_cont1").select("tbody").select("tr"); // div 클래스의
																										// .class로
																										// 가지고왔다.

			// String test = elements.select("td").text();
			String companyName = "";
			String ranking = "";
			// String column3="";

			for (Element el : elements) { // 중복이 된다. 이유는?// tbody안에있는 tr의 수 만큼 돈다. - mobile 테이블도 있었다..

				vo = new CrawlingVO(); // 객체 선언!

				companyName = el.select("td").select("a").text();
				ranking = el.select("td").select(".center").text();
				// column3 = el.select("td").select(".right").text();
				Elements colum3 = el.select("td").select(".right"); // 여러개임

				String sales2018 = colum3.get(0).text();
				String sales2017 = colum3.get(1).text();
				String increase = colum3.get(2).text();
				String form = colum3.get(3).text();

				vo.setCompanyName(companyName);
				vo.setRanking(ranking);
				vo.setSales2018(sales2018);
				vo.setSales2017(sales2017);
				vo.setIncrease(increase);
				vo.setForm(form);

				// 넣은다음 리스트에 추가
				mk.add(vo);
			}
		}

		// String test = el.text();
		// model.addAttribute("test", test);
		model.addAttribute("mk", mk); // 모음집을 보내쟈규

		return "mkYearBook";
	}

}

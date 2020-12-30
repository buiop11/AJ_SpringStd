package com.ahjin.demo.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ahjin.demo.dao.AlienRepo;
import com.ahjin.demo.dao.CommentRepo;
import com.ahjin.demo.dao.GuestBookRepo;
import com.ahjin.demo.mapper.AlienMapper;
import com.ahjin.demo.model.Alien;
import com.ahjin.demo.model.CommentVO;
import com.ahjin.demo.model.Criteria;
import com.ahjin.demo.model.GuestBook;
import com.ahjin.demo.model.PageMaker;
import com.ahjin.demo.service.AlienService;

@Service //핵심 비지니스 로직을 정의 (보기 쉽게)
@Profile("dev")
public class AlienServiceImpl implements AlienService {

	
	  @Autowired AlienRepo alienRepo;
	  @Autowired CommentRepo commentRepo;
	  @Autowired GuestBookRepo guestbookRepo;
	  
	  // mybatis연결 AlienMapper 붙이기  @Autowired가 없어서 클래스가 생성이 안되었음...
	  @Autowired AlienMapper alienMapper;
	  
	  
    // ======= JPA ======== // 
	  
	  
	//---------부스트코스 방명록 ------------//
	@Override
	public List<GuestBook> getGuestBook() {
		//return guestbookRepo.findAll();
		return guestbookRepo.findAllByOrderByIdDesc();
	}
	// 방명록 저장 
	@Override
	public int addGuestBook(GuestBook guestbook) {
	int result = 0; 
		
		if(guestbook !=null) {
			guestbookRepo.save(guestbook);
			result = 1;
		}
		return result;
	}
		
	
	// 에어리언 리스트 가져오기
	@Override public List<Alien> getAlienList() { 
		return alienRepo.findAll(); 
	}
	
	// 게시글 1개 가져오기  
	@Override
	public Alien getOneAlien(int aid) {
		return alienRepo.getOne(aid);
	}
	
	// 게시글 1건 추가하기
	@Override
	public int addAlien(Alien alien) {
		int result = 0; 
		if(alien !=null) {
			alienRepo.save(alien);
			result = 1;
		}
		return result;
	}
	
	// 게시글 1건 삭제하기 
	@Override
	public void deleteAlien(int aid) {

		//	int result = 0;
		alienRepo.deleteById(aid);  // 뭘로 반환이 되는건지 모르겠당 -> 들어가보니 void 이네 
		
	}

	// profile 테스트
	@Override
	public String getGreeting() {
		return "Hello from Dev!!!!";
	}

	
	
	
	// ======= MyBatis ====== //
	// 코멘트 추가하기
	@Transactional
	@Override
	public int addComment(CommentVO comment) throws Exception{
		//CommentVO comment2 = commentRepo.save(comment);
		//System.out.println("저장된 정보 찍어보기!!" + comment2);
		int gg = 0;
		if(comment.getDepth2() != 0) {  // 대댓글일때 dpeht=2
			gg = alienMapper.makeReComment(comment);
		}else {
			gg = alienMapper.makeComment(comment); // 첫댓글 depth=1
		}
		return gg;
	}
	
	
	// mybatis로 리스트 가져오기 
	@Override
	public List<Alien> getMapperList(Map<String,Object> page) throws Exception {
		return alienMapper.selectAlienList(page);
	}

	// 코멘트 가지고 오기 
	@Override
	public List<CommentVO> getComment(int parent) throws Exception {
		//return commentRepo.findByParent(parent);
		return alienMapper.selectFindParentDesc(parent);
	}

	// 지울거 
	@Override
	public List<Alien> getMapperList() throws Exception {
		return null;
	}
	@Override
	public List<Alien> getMapperList(HashMap<String, Object> page) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("prod 이거도 타나?");
		return null;
	}
	@Override
	public PageMaker webzinePagingInfo(Map<String, Object> param, Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	
	// 게시판 페이징 20201229
	@Override
	public PageMaker pagingInfo(Map<String, Object> param, Criteria cri) throws Exception {
		PageMaker pageMaker = new PageMaker();
        pageMaker.setCri(cri);
        pageMaker.setTotalCount(alienMapper.selectAlienListCount(param)); // 리스트 수 가지고오기 
        param.put("startPage", cri.getPageStart());
        param.put("endPage", cri.getPageEnd());
        return pageMaker;
	}

	
}

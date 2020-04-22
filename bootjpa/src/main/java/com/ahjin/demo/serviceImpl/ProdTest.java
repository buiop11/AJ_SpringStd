package com.ahjin.demo.serviceImpl;

import java.util.List;

import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Component;

import com.ahjin.demo.model.Alien;
import com.ahjin.demo.model.CommentVO;
import com.ahjin.demo.service.AlienService;

@Component  // 빈생성을 해준다. 
@Profile("prod") // 애초에 dev- profile로 실행시켰기 때문에 실행되지 않는다.
public class ProdTest implements AlienService {

	@Override
	public List<Alien> getAlienList() {
		// 안씀 
		return null;
	}

	@Override
	public String getGreeting() {
		return "Hello from Prod!!!!!";
	}

	@Override
	public Alien getOneAlien(int aid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addAlien(Alien alien) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void deleteAlien(int aid) {
		// TODO Auto-generated method stub
	}

	@Override
	public List<CommentVO> getComment(int alienNum) {
		// TODO Auto-generated method stub
		return null;
	}

}

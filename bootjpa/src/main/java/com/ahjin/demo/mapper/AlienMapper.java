package com.ahjin.demo.mapper;

import java.util.List;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Repository;

import com.ahjin.demo.model.Alien;


/*@Mapper*/
@MapperScan
@Repository
public interface AlienMapper {

	// 리스트 뽑아오기 
	public List<Alien> selectAlienList() throws Exception;

	
}

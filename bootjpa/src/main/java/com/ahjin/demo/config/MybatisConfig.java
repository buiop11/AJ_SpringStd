package com.ahjin.demo.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;


@Configuration  // basePackages 이 아니고 value
@MapperScan(value= {"com.ahjin.demo.mapper"}, sqlSessionFactoryRef="sqlSessionFactory")  // mapper 인터페이스 패키지 위치를 작성 
public class MybatisConfig {
	
	
	@Bean(name="sqlSessionFactory")
	public SqlSessionFactory sqlSessionFactory(@Qualifier("dataSource") DataSource dataSource) throws Exception {
		// 리턴타입은 왜 ibatis걸로하는가?  ---  기존에 이용하고 있던 dataSource를 주입받는다. 현재 주입하는 dataSource는 프로퍼티에 설정한 DB정보를 통해 생성된 dataSource입니다. 
		
		System.out.println("데이타 소스가 있긴한걸까????? 함 찍어보기 " + dataSource);    //Hikari-pool 찍힘. 
		
		SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
		sqlSessionFactoryBean.setDataSource(dataSource);
		//sqlSessionFactoryBean.setTypeAliasesPackage("com.ahjin.demo.model.Alien");   // 받아올VO, 엔티티의 패키지이름을 생략할 수 있도록 함. 
		sqlSessionFactoryBean.setMapperLocations(new PathMatchingResourcePatternResolver().getResources("classpath:mybatis/mapper/*-mapper.xml"));
		
		
		return sqlSessionFactoryBean.getObject();
	}
	
	
	
	
	
}

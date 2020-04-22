package com.ahjin.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.EnableAspectJAutoProxy;


//@ComponentScan("com.ahjin.service.AlienService")
//@ComponentScan --> 이건 없어도 알아서 scan 뜬다.config파일에 @Component는 있어야함.
@EnableAspectJAutoProxy
@SpringBootApplication
public class BootjpaApplication {

	public static void main(String[] args) {
		SpringApplication.run(BootjpaApplication.class, args);
	}

}

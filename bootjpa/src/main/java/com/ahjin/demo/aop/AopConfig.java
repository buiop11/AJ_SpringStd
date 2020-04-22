package com.ahjin.demo.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Aspect     // aop 설정입니다. 
@Component  // 빈을 만들고요 
public class AopConfig {

	Logger logger =  LoggerFactory.getLogger(AopConfig.class);
	// 같은거 Logger logger = LoggerFactory.getLogger(this.getClass());
	// slf4j 꺼로 import 
	
	@Around("execution(* com.ahjin.demo.serviceImpl.AlienServiceImpl.*(..))")
	public Object logging(ProceedingJoinPoint pjp) throws Throwable { // ProceedingJoinPoint 핵심기능들을 가져오는 조인포인트
		// ProceedingJoinPoint pjp 는 @Around 할때 사용 하는거임 / 그냥은 JoinPoint로 해봐도됨.
		
		logger.info("staaaart!!!!!!! - " + pjp.getSignature().getDeclaringTypeName() + " /// " + pjp.getSignature().getName());
		String signatureStr = pjp.getSignature().toShortString();
		logger.info("ProceedingJoinPoint 의 시그네이쳐가뭐냐?? " +  signatureStr);
		
		long st = System.currentTimeMillis(); // 시작 시간 찍어봄세 
		
		Object result = null; // object 선언 
		
		try {
			
			result = pjp.proceed(); // 조인포인트실행! 
			
			
		}catch(Exception e){
			e.printStackTrace();
		}finally {

			long et = System.currentTimeMillis();
			logger.info("finisssssshed!!!!! - " + pjp.getSignature().getDeclaringTypeName() + "///" + pjp.getSignature().getName());
			logger.info(signatureStr +" 시그네이쳐의 경과시간!!" + (et-st));
		}
		
		return result;
	}

	/*
	 * # Advice 종류

		@Before : 조인포인트 전에 실행 
		@AfterReturning : 조인포인트에서 성공적으로 리턴 된 후 실행
		@AfterThrowing : 예외가 발생하였을 경우 실행
		@After : 조인포인트에서 메서드의 실행결과에 상관없이 무조건 실행
		@Around : 조인포인트의 전 과정(전, 후)에 수행

	# execution 포인트컷 예
 
		execution([수식어] [리턴타입] [클래스이름] [이름]([파라미터])
	 * 
	 */
	
}

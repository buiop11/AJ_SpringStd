package com.ahjin.demo.config;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class IntercepterEx implements HandlerInterceptor {

	
	
	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse res, 
			Object handler) throws Exception {
		
		long startTime = System.currentTimeMillis();
		req.setAttribute("startTime", startTime);
		return true;
	}

	
	@Override
	public void postHandle(HttpServletRequest req, HttpServletResponse res, Object handler, 
			ModelAndView modelandView) throws Exception {
		
		long startTime = (Long)req.getAttribute("startTime");
		req.removeAttribute("startTime");
		
		long endTime = System.currentTimeMillis();
		modelandView.addObject("handlingTime", endTime - startTime);
		// addObject --> 단수 / 한개만보낸다. 여러개보낼따 .addAllObjects
	}
	
	@Override
	public void afterCompletion(HttpServletRequest rea, HttpServletResponse res,
			Object handler, Exception ex) throws Exception{
		// 딱히 할일이 없으므로 그냥 비워둡니다.
		// 인터셉터 어댑터는 인터페이스에 선언된 메서드를 모두 기본 구현한 클래스라서 필요한 메서드만 
		// 오버라이드 해 쓰면 됩니다. 
	}
	
	
	
	
	
	
}

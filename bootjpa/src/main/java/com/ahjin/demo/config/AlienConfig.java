package com.ahjin.demo.config;

import java.util.Locale;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

//@Component
@Configuration
public class AlienConfig implements WebMvcConfigurer {

	@Bean
	public InternalResourceViewResolver viewResolver() {
		
		InternalResourceViewResolver viewResolver = 
				new InternalResourceViewResolver();
		
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}
	
	
	// IntercepterEx 클래스를 만들고, 이 @Configuration 클래스에 
	// implements WebMvcConfigurer을 상속 받은 후 
	// 이 클래스를 @Bean으로 등록함. 
	@Override // 인터셉터할거를 추가함. 
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(interCepterEx());
		// 로케일추가 
		//registry.addInterceptor(localeChangeInterceptor());
	}
	
	@Bean
	public IntercepterEx interCepterEx() {
		return new IntercepterEx();
	}
	
	
	// locale 다국어지원 - session 속성에 따라 로케일 해석하기 
	/*
	 * @Bean public LocaleResolver localResolver() {
	 * 
	 * SessionLocaleResolver localeResolver = new SessionLocaleResolver();
	 * localeResolver.setDefaultLocale(new Locale("en")); // 기본다국어 지원을 설정할 수 있습니다.
	 * 
	 * return localeResolver; }
	 */
	
	// locale 다국어지원 - cookie 속성에 따라 로케일 해석하기 
	/*
	 * @Bean public LocaleChangeInterceptor localeChangeInterceptor() {
	 * LocaleChangeInterceptor locale = new LocaleChangeInterceptor();
	 * locale.setParamName("language"); return locale; }
	 * 
	 * @Bean public CookieLocaleResolver localeResolver() { CookieLocaleResolver
	 * cookie = new CookieLocaleResolver(); cookie.setCookieName("language");
	 * cookie.setCookieMaxAge(3600); cookie.setDefaultLocale(new Locale("en"));
	 * return cookie; }
	 */
	
}

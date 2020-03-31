<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>


<header id="page_header">
	<h1> AwsomeCo Blog ! </h1>

	<nav>
		<ul>
			<li><a href="/">최근 글</a></li>
			<li><a href="pre">이전 글</a></li>
			<li><a href="next">다음 글</a></li>
			<li><a href="contact">연락처</a></li>
		</ul>
	</nav>
</header>


<aside> 
	<p>
		&quot; 물건을 팔때는 거절할 기회를 주어선 안 됩니다.&quot;
	</p>
	
	<b>profile 예제!!</b>
	<b> ${greeting}</b>
	<br>
	<br>
</aside>

<body>
	



	메인페이지 

	
	<a href="/alienList"><img src="/image/apiche.jpg" /></a>
	
	
	
	
	
	<!-- <form action="addAlien"> controller의 addAlien로 이동
		<input type="text" name="aid"><br>
		<input type="text" name="aname"><br>
		<input type="text" name="tech"><br>
		<input type="submit"><br>
	
	</form>

	<form action="getAlien"> aid로 alien 가져오기
		<input type="text" name="aid"><br>
		<input type="submit"><br>
	
	</form> -->



</body>


<footer id="page_footer">

	<p>&copy 2020 AwsomeCo.</p>
	
	<nav>
		<ul>
			<li><a href="/">홈페이지</a></li>
			<li><a href="about">회사소개</a></li>
			<li><a href="terms.html">서비스 항목</a></li>
			<li><a href="privacy.html">개인정보 보호정책</a></li>
		</ul>
	</nav>
</footer>

</html>
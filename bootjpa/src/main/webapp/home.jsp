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
			<li><a href="/">�ֱ� ��</a></li>
			<li><a href="pre">���� ��</a></li>
			<li><a href="next">���� ��</a></li>
			<li><a href="contact">����ó</a></li>
		</ul>
	</nav>
</header>


<aside> 
	<p>
		&quot; ������ �ȶ��� ������ ��ȸ�� �־ �� �˴ϴ�.&quot;
	</p>
	
	<b>profile ����!!</b>
	<b> ${greeting}</b>
	<br>
	<br>
</aside>

<body>
	



	���������� 

	
	<a href="/alienList"><img src="/image/apiche.jpg" /></a>
	
	
	
	
	
	<!-- <form action="addAlien"> controller�� addAlien�� �̵�
		<input type="text" name="aid"><br>
		<input type="text" name="aname"><br>
		<input type="text" name="tech"><br>
		<input type="submit"><br>
	
	</form>

	<form action="getAlien"> aid�� alien ��������
		<input type="text" name="aid"><br>
		<input type="submit"><br>
	
	</form> -->



</body>


<footer id="page_footer">

	<p>&copy 2020 AwsomeCo.</p>
	
	<nav>
		<ul>
			<li><a href="/">Ȩ������</a></li>
			<li><a href="about">ȸ��Ұ�</a></li>
			<li><a href="terms.html">���� �׸�</a></li>
			<li><a href="privacy.html">�������� ��ȣ��å</a></li>
		</ul>
	</nav>
</footer>

</html>
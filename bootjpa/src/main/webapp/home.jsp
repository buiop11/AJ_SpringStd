<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    
<!DOCTYPE html>
<html>
<head>
<!-- 채팅인테페이스 함 만들어보자 -->
<script src="chat.js" type="text/javascript"></script>
<script type="text/javascript">
var canvas = document.getElementById("my_canvas");
if(canvas.getContext){
    var context = canvas.getContext("2d");
}else{
    // 캔버스의 숨겨진 내용을 드러내거나,
    // 브라우저가 <canvas> 요소 안의 내용을 보여주도록 합니다. 
}
    context.fillStyle = "rgb(200,0,0)";


</script>

<!-- <link rel="stylesheet" href="chat" type="text/css" media="screen"> -->
<style>
a:after{
	content: "("attr(href)")";  
}


#chat_wrapper{
	width:320px;
	height:440px;
	background-color: #ddd;
	padding: 10px;
}

#char_wrapper h2{
	margin:0;
}

#chat{
	width:300px;
	height:300px;
	overflow:auto;
	background-color:#fff;
	padding:10px;
}

</style>


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
	
<!-- 캔버스 그려볼라고했는데..?? 왜 안됨?? ㅋ -->
<canvas id="my_canvas" width="150" height="150">
    캔버스가 지원되지 않을 때 표시할 폴백입니다. 
</canvas> 

<!-- 채팅인테페이스 함 만들어보자 // 서버가 있어야한다. html&css 책 보기 -->
<div id="chat_wrapper">
    <h2>AwesomeCo Help!</h2>
    <form id="nick_form" action="#" method="post" accept-charset="utf-8">
        <p>
            <label> Nickname
                <input id="nickname" type="text" value="GuestUser" />
            </label> 
            <input type="submit" value="Change">
        </p>
    </form>
    
    <div id="chat">connecting...</div>
    <form id="chat_form" action="#" method="post" accept-charset="utf-8">
    	<p>
    		<label> Message
    			<input id="message" type="text" />
    		</label>
    		<input type="submit" value="Send">
    	</p>
    </form>
</div>

<br>
<br>
<div>
	메인페이지    인터셉트 찍어보기  스타트타임: ${startTime}  //// 핸들링타임:  ${handlingTime}
</div>
<br>
<br>
	
	<a href="/alienList"><img src="/image/apiche.jpg" /></a>
	
	
	<h2> 원우가 요청한 웹 크롤링 처리 예제 </h2>
	<a href="/mkYearBook"> 여기로 가즈아!!! </a>
	
	
	
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
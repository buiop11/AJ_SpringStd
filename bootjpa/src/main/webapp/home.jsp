<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

    
<!DOCTYPE html>
<html>

<!-- head 시작 -->
<head>
<!-- style sheet 추가 -->
<link href="/css/base.css" rel="stylesheet" type="text/css" />
<link href="/css/content.css" rel="stylesheet" type="text/css" />
<link href="/css/layout.css" rel="stylesheet" type="text/css" />
<link href="/css/common.css" rel="stylesheet" type="text/css" />
<link href="/css/ui_style.css" rel="stylesheet" type="text/css" />

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


<style>
/* a:after{
	content: "("attr(href)")";  
}
 */

#chat_wrapper{
	width:320px;
	height:440px;
	background-color: #ddd;
	padding: 10px;
	float:right;
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
<!-- head 끝 -->

<header id="page_header" class="header">
	
	<div class="inner" id="inner">
        <!-- utilWrap -->
        <div class="utilWrap">
            <ul class="utilList">
                    
                 <!-- beforeLogin -->
                 <li><a href="/member/login"><span>로그인</span></a></li>
                 <li><a href="/member/join"><span>회원가입</span></a></li>
           	     <!--//beforeLogin -->

                <li><a href="/mypage"><span>마이페이지</span></a></li>
                <li><a href="/mypage/bookingList"><span>예약/결제조회</span></a></li>
                <li><a href="/customer"><span>고객센터/여행정보</span></a></li>
                <li><a href="/guestbook"><span>방명록</span></a></li>
            </ul>
        </div>
        <!--//utilWrap -->

        <!-- logoWrap -->
        <div class="logoWrap">
            <p class="logo">
                <a href="/">  ★★아댕의로고★★  <!-- svg 로고 20180903수정--></a>
            </p>
        </div>
        <!--//logoWrap -->

        <!-- topSearchWrap -->
        <div class="topSearchWrap">
            <div class="topSearch">
                <span class="inputWrap">
                    <input type="text" id="header_search" placeholder="검색어를 입력하세요." value="여기에 검색어" onclick="this.value='';" onkeyup="javascript:enter()"> <i class="border"></i>
                    <button type="button" onclick="javascript:totalSearch()" id="suibtSearch" class="btns_topSearch">검색</button>
                </span>
            </div>

        </div>
        <!--// topSearchWrap -->
    </div>
</header>  <!-- head 끝  -->


<body>

	
<div class="main">

	<div id="container">
	
		<!-- 캔버스 그려볼라고했는데..?? 왜 안됨?? ㅋ -->
	<!-- 	<canvas id="my_canvas" width="150" height="150">
		    캔버스가 지원되지 않을 때 표시할 폴백입니다. 
		</canvas>  -->
		
		<!-- 채팅인테페이스 함 만들어보자 // 서버가 있어야한다. html&css 책 보기 -->
	<!-- 	<div id="chat_wrapper">
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
		</div> -->
		
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
		
	
	
	</div> <!-- container 끝 -->


</div> <!-- main 끝 -->


</body>


<footer class="footerWrap">
	<div class="inner">
		<p>&copy 2020 AwsomeCo.</p>
	
		<nav>
			<ul>
				<li><a href="/">홈페이지</a></li>
				<li><a href="about">회사소개</a></li>
				<li><a href="terms.html">서비스 항목</a></li>
				<li><a href="privacy.html">개인정보 보호정책</a></li>
			</ul>
		</nav>
		
		<dl>
			<dt>******홈페이지****</dt>
			<dd>*****홈페이지 설명 ****</dd>
			
		</dl>
		
	</div>
</footer>

</html>
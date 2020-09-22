<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

    
<!DOCTYPE html>
<html>

<!-- head ���� -->
<head>
<!-- style sheet �߰� -->
<link href="/css/base.css" rel="stylesheet" type="text/css" />
<link href="/css/content.css" rel="stylesheet" type="text/css" />
<link href="/css/layout.css" rel="stylesheet" type="text/css" />
<link href="/css/common.css" rel="stylesheet" type="text/css" />
<link href="/css/ui_style.css" rel="stylesheet" type="text/css" />

<!-- ä���������̽� �� ������ -->
<script src="chat.js" type="text/javascript"></script>
<script type="text/javascript">
var canvas = document.getElementById("my_canvas");
if(canvas.getContext){
    var context = canvas.getContext("2d");
}else{
    // ĵ������ ������ ������ �巯���ų�,
    // �������� <canvas> ��� ���� ������ �����ֵ��� �մϴ�. 
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
<!-- head �� -->

<header id="page_header" class="header">
	
	<div class="inner" id="inner">
        <!-- utilWrap -->
        <div class="utilWrap">
            <ul class="utilList">
                    
                 <!-- beforeLogin -->
                 <li><a href="/member/login"><span>�α���</span></a></li>
                 <li><a href="/member/join"><span>ȸ������</span></a></li>
           	     <!--//beforeLogin -->

                <li><a href="/mypage"><span>����������</span></a></li>
                <li><a href="/mypage/bookingList"><span>����/������ȸ</span></a></li>
                <li><a href="/customer"><span>������/��������</span></a></li>
                <li><a href="/guestbook"><span>����</span></a></li>
            </ul>
        </div>
        <!--//utilWrap -->

        <!-- logoWrap -->
        <div class="logoWrap">
            <p class="logo">
                <a href="/">  �ڡھƴ��Ƿΰ�ڡ�  <!-- svg �ΰ� 20180903����--></a>
            </p>
        </div>
        <!--//logoWrap -->

        <!-- topSearchWrap -->
        <div class="topSearchWrap">
            <div class="topSearch">
                <span class="inputWrap">
                    <input type="text" id="header_search" placeholder="�˻�� �Է��ϼ���." value="���⿡ �˻���" onclick="this.value='';" onkeyup="javascript:enter()"> <i class="border"></i>
                    <button type="button" onclick="javascript:totalSearch()" id="suibtSearch" class="btns_topSearch">�˻�</button>
                </span>
            </div>

        </div>
        <!--// topSearchWrap -->
    </div>
</header>  <!-- head ��  -->


<body>

	
<div class="main">

	<div id="container">
	
		<!-- ĵ���� �׷�������ߴµ�..?? �� �ȵ�?? �� -->
	<!-- 	<canvas id="my_canvas" width="150" height="150">
		    ĵ������ �������� ���� �� ǥ���� �����Դϴ�. 
		</canvas>  -->
		
		<!-- ä���������̽� �� ������ // ������ �־���Ѵ�. html&css å ���� -->
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
			����������    ���ͼ�Ʈ ����  ��ŸƮŸ��: ${startTime}  //// �ڵ鸵Ÿ��:  ${handlingTime}
		</div>
		<br>
		<br>
			
		<a href="/alienList"><img src="/image/apiche.jpg" /></a>
		
		
		<h2> ���찡 ��û�� �� ũ�Ѹ� ó�� ���� </h2>
		<a href="/mkYearBook"> ����� �����!!! </a>
		
	
	
	</div> <!-- container �� -->


</div> <!-- main �� -->


</body>


<footer class="footerWrap">
	<div class="inner">
		<p>&copy 2020 AwsomeCo.</p>
	
		<nav>
			<ul>
				<li><a href="/">Ȩ������</a></li>
				<li><a href="about">ȸ��Ұ�</a></li>
				<li><a href="terms.html">���� �׸�</a></li>
				<li><a href="privacy.html">�������� ��ȣ��å</a></li>
			</ul>
		</nav>
		
		<dl>
			<dt>******Ȩ������****</dt>
			<dd>*****Ȩ������ ���� ****</dd>
			
		</dl>
		
	</div>
</footer>

</html>
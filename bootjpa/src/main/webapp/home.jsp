<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    
<!DOCTYPE html>
<html>
<head>
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
	
<!-- ĵ���� �׷�������ߴµ�..?? �� �ȵ�?? �� -->
<canvas id="my_canvas" width="150" height="150">
    ĵ������ �������� ���� �� ǥ���� �����Դϴ�. 
</canvas> 

<!-- ä���������̽� �� ������ // ������ �־���Ѵ�. html&css å ���� -->
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
	����������    ���ͼ�Ʈ ����  ��ŸƮŸ��: ${startTime}  //// �ڵ鸵Ÿ��:  ${handlingTime}
</div>
<br>
<br>
	
	<a href="/alienList"><img src="/image/apiche.jpg" /></a>
	
	
	<h2> ���찡 ��û�� �� ũ�Ѹ� ó�� ���� </h2>
	<a href="/mkYearBook"> ����� �����!!! </a>
	
	
	
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
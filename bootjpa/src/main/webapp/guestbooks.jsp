<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8" %>
    
<link href="/css/base.css" rel="stylesheet" type="text/css" />
<link href="/css/common.css" rel="stylesheet" type="text/css" />
<link href="/css/ui_style.css" rel="stylesheet" type="text/css" />
<link href="/css/content.css" rel="stylesheet" type="text/css" />
<link href="/css/layout.css" rel="stylesheet" type="text/css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">   

window.addEventListener('DOMContentLoaded',function(){

	alert("loadddd??");

	$.ajax({
		type:"post",
		url:"/ajaxGuestBooks",
		success : function(data){
			$("div#tBody").html(data);
		},
		error : function(request,status,error){
		}

	});
	
})



function onSubmit(){
	if(addGuestBookFrm.name.value == ''){
		alert("이름작성!");
		addGuestBookFrm.name.focus();
		return false;
	}

	if(addGuestBookFrm.content.value == ''){
		alert("내용 작성!");
		addGuestBookFrm.content.focus();
		return false;
	}
}

</script>


<!-- 헤더페이지 넣기 (페이지 모듈화)  -->
<jsp:include page="/layout/header.jsp" flush="false"/>




<body>


<h1 class="p30"> 방명록  </h1>

<div id="tBody"></div> <!--ajax 방명록 입력   -->


<!-- 방명록 등록  -->
<form onsubmit="return onSubmit();" name="addGuestBookFrm" action="/addGuestBook" method="post"> 

	
	<div class="p30">
		<input type="text" name="name" id="name">
		<div><!-- 내용  -->
			<span><textarea name="content" id="content" placeholder="여러분의 소중한 방명록을 작성해주세요."style="height:100px"></textarea></span>
		</div>

		<button type="submit" class="btns mid bgNavy mt10"> 등록하기  </button>
	</div>	
	
</form>

</body>

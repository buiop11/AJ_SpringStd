<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!-- <link href="/css/base.css" rel="stylesheet" type="text/css" />-->
<link href="/css/common.css" rel="stylesheet" type="text/css" />
<link href="/css/ui_style.css" rel="stylesheet" type="text/css" />

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




<body>


	<div id="tBody"></div>


<hr>

<form onsubmit="return onSubmit();" name="addGuestBookFrm" action="/addGuestBook" method="post">

	<div>
		<table>
			<tr> 
				<th>방명록</th>
			</tr>
			<tr>
				<td>이름: </td>
				<td><input type="text" name="name" id="name"></td>
			</tr>
			<tr>
				<td>내용: </td>
				<td><textarea name="content" id="content" placeholder="여러분의 소중한 방명록을 작성해주세요."></textarea></td>
			</tr>
		</table>
	
		<button type="submit" class="btns mid bgNavy"> 등록하기  </button>
		
	</div>
	
</form>

</body>

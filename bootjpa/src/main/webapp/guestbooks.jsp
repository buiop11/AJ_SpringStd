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
		alert("�̸��ۼ�!");
		addGuestBookFrm.name.focus();
		return false;
	}

	if(addGuestBookFrm.content.value == ''){
		alert("���� �ۼ�!");
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
				<th>����</th>
			</tr>
			<tr>
				<td>�̸�: </td>
				<td><input type="text" name="name" id="name"></td>
			</tr>
			<tr>
				<td>����: </td>
				<td><textarea name="content" id="content" placeholder="�������� ������ ������ �ۼ����ּ���."></textarea></td>
			</tr>
		</table>
	
		<button type="submit" class="btns mid bgNavy"> ����ϱ�  </button>
		
	</div>
	
</form>

</body>

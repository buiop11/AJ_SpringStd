<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8" %>

<link href="/css/base.css" rel="stylesheet" type="text/css" />
<link href="/css/content.css" rel="stylesheet" type="text/css" />
<link href="/css/layout.css" rel="stylesheet" type="text/css" />
<link href="/css/common.css" rel="stylesheet" type="text/css" />
<link href="/css/ui_style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="/js/jquery.form.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

/* window.addEventListener('DOMContentLoaded', function(){

	alert("로드도미??");
	$.ajax({
		alert("정상적으로 로드됨?-코멘트작업중");
		type:"post",
		url:"/ajaxCommentList",
		success : function(data){
			$('div#commentBody').html(data);
		},
		error :  function(request,status,error) {
        }
	});
}) */
// 위에껀 왜 안됨?ㅠㅠㅠㅠ;;; 어이가 없네;;; 아래 jquery는 된다. 

$(document).ready(function(){
	alert("dhdhdhdh");
	$.ajax({
		//alert("정상적으로 로드됨?-코멘트작업중");
		type:"post",
		url:"/ajaxCommentList",
		success : function(data){
			$('div#commentBody').html(data);
		},
		error :  function(request,status,error) {
        }
	});
}); 

 
function ddd(){
	alert("타sssssss타");	
}

// 코멘트 등록하기 
function comment_submit(){
	var formData = $("#comentView").serialize();

	$.ajax({
		cache:false,
		url: "/makeComment",
		type:"post",
		data:formData,
		success: function(data){
			if(data.result == 1){
				alert("등록돼따!");  // 여기서 등록되면 reload 시켜야함! 
			}else{
				alert("안됐따!");
			}
		},
		error : function(request, status, error){
			alert("에러..1 : " + request + "에러..2 : " +  status + "에러..3 : " + error);
		}
	});
	
}

</script>


<!-- content -->
<article id="content"> <!-- article은 기사의 한 문단으로 생각하면 쉽다.  -->

	<!-- content head -->
	<div class="content_head">
		<h1> Alien Show! </h1>	
	</div>
	<!-- content head 끝  -->
	
	<!-- content body  -->
	<div class="content_body">
	
		<!-- content안에도 섹션을 나눈다.  -->
		<div class="section_head line"> <!-- 클래스가 2개 들어감 section_head / line  -->
			<h2 class="section_tit">
				<strong> 상세 보기 </strong>
			</h2>
		</div>
		
		
		<div class="section_body">
			<table class="boardView">
				<caption> <!-- caption:사진삽화등에 붙이는 설명  / 기본 위치는 표 가운데 -->
					<strong> 상세보기2 </strong>
				</caption>	
				
				<!-- html css를 사용하여 테이블의 사이즈를 조정할 수도 있지만 간단한 방법
				바로 col 태그 / column 의 col!  -->
				<colgroup>
					<col style="width:10%;">
					<col style="">
					<col style="width:11%;">
					<col style="width:11%;">
				</colgroup>
				
				<thead>
					<tr>	
						<th scope="col">제목</th>
						<td colspan="7">${alien.title}</td>
					</tr>
				</thead>
				
				<thead>
					<tr>
						
						<th scope="col">번호</th>
						<td>${alien.aid}</td>
						
						<th scope="col">이름/작성자</th>
						<td>${alien.aname}</td>
						
						
						<th scope="col">등록일</th>
						<td>${alien.writeDay}</td>	
						
						<th scope="col">조회수</th>
						<td>${alien.readCnt}</td>
					</tr>
				</thead>
				
				<tbody>
					<tr style="height:500px;">
						<th scope="col">콘텐츠</th>
						<td colspan="7">${alien.content}</td>
						<!-- 7개 행울 하나로 합쳐서 보여주려고  -->
					</tr>
				</tbody>
				
			</table>
		</div> 
		
		
		<!-- 댓글 등록하기  // 이거 ajax로 만들어야함.아 그냥 보내면되나?  -->
		<div class="row" style="padding-top:100px;">
			<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
				<h4>Leave a Coment:</h4>
				<form name="comentView" id="comentView" method="post" action="javascript:comment_submit();">
					<input type="text" name="comment" placeholder="댓글을 입력하세요!" style="width:80%;">
					<input type="hidden" name="parent" value="${alien.aid}" />
					<input type="hidden" name="writer" value="지나가는행인" />
					<input type="hidden" name="depth" value="1" />
					<button type="submit"> 등록하기  </button>
				</form>
			</div>
		</div>
		
		
		<!-- comment 리스트 들어갈 곳  -->
		<div id="commentBody" style="padding-top:20px; padding-bottom:20px;">
		</div>
		
		<input type="button" value="클릭 " onclick="javascript:ddd();"/>
		
		
		<!-- 목록 /삭제 버튼  -->
		<div class="btnWrap"  style="padding-top:100px;">
			<span>
				<!--  클래스가 7개... ㅎㄷㄷ  -->
				<a href="javascript:history.back();" class="btns big bgPoint bdRedius3 bsRed wFix w150">목록으로</a>
				<!-- 삭제하기 버튼  -->
				<a href="/deleteAlien?aid=${alien.aid}" class="btns big bgPoint bdRedius3 bsRed wFix w150">삭제하기</a>
				*본인만 삭제 할 수 있습니다.
			</span>
		</div>
	
	</div>
	<!-- content body 끝  -->



</article>


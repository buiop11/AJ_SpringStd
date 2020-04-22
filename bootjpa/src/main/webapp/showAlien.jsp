<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

   

<link href="/css/base.css" rel="stylesheet" type="text/css" />
<link href="/css/content.css" rel="stylesheet" type="text/css" />
<link href="/css/layout.css" rel="stylesheet" type="text/css" />
<link href="/css/common.css" rel="stylesheet" type="text/css" />
<link href="/css/ui_style.css" rel="stylesheet" type="text/css" />


<<script type="text/javascript">
<!--

//-->
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
						<th scope="col">번호</th>
						<td>${alien.aid}</td>
					</tr>
				</thead>
				
				<thead>
					<tr>
						
						<th scope="col">제목</th>
						<td>${alien.title}</td>
						
						<th scope="col">이름/작성자</th>
						<td>${alien.aname}</td>
						
						
						<th scope="col">등록일</th>
						<td>${alien.writeDay}</td>	
						
						<th scope="col">조회수</th>
						<td>${alien.readCnt}</td>
					</tr>
				</thead>
				
				<tbody>
					<tr>
						<th scope="col">콘텐츠</th>
						<td>${alien.content}</td>
					</tr>
				</tbody>
				
			</table>
		</div> 
		
		
		<!-- 댓글 달기  -->
		<div class="row" style="padding-top:100px;">
			<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
				<h4>Leave a Coment:</h4>
				<form name="comentView" id="comentView" method="post" action="/makeComent">
					<input type="text" value="" name="coment" placeholder="댓글을 입력하세요!">
					<button type="submit"> Submit </button>
				
				</form>
			</div>
		</div>
		
		
		<!-- 목록버튼  -->
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

<div>
 임의로 만들어보는 댓글~~~ 
 ${comments}
</div>


</article>


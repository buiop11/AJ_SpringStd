<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<!DOCTYPE html>
<html>


<head>
<!-- css  -->
<jsp:include page="/layout/bootstrap_css.jsp" flush="false" />

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

	$("#depth2").hide();  // comment_depth2 숨겨두기

	var aid = $("#aid").val(); // jquery는 val() 
	var alldata = {"aid" : aid}; // 배열로 넘긴다.
	
	$.ajax({
		type:"post",
		data: alldata,
		url:"/ajaxCommentList",
		success : function(data){
			$('div#commentBody').html(data);
		},
		error :  function(request,status,error) {
        }
	});
}); 


function rere(conum,writer,comment,commentDate){ // 답글에 답글달기 depth는 2까지만 가능하다.=> 웃대처럼!
	alert("타sssssss타" + conum + writer + comment + commentDate);  // 댓글 유일값~ 하나 가지고 와서 찍는다. 		

	$("#co_num").text(conum);
	$("#co_writer").text(writer);
	$("#co_comment").text(comment);
	$("#co_date").text(commentDate);

	$("#depth").val("2");
	$("#pe_depth").val(conum);
	
	$("#depth2").show();
	
}

// 코멘트 등록하기 
function comment_submit(){
	var formData = $("#comentView").serialize(); 
	// form 안에 있는 값 말아서 보냄 

	$.ajax({
		cache:false,
		url: "/makeComment",
		type:"post",
		data:formData,
		success: function(result){

			alert("일단찍어본다." + result); 	
			location.reload();  // 리로드 먹는다! 
			
			/* if(data.result == 1){
				alert("등록돼따!");  // 여기서 등록되면 reload 시켜야함! 
			}else{
				alert("안됐따!");
			} */
		},
		error : function(request, status, error){
			alert("에러..1 : " + request + "에러..2 : " +  status + "에러..3 : " + error);
		}
	});
	
}

</script>


</head>


<body>
<div class="dashboard-main-wrapper">

	<!-- 헤더페이지 넣기 (페이지 모듈화) / main 안에 헤더위치 (헤더랑/사이드바) -->
	<jsp:include page="/layout/bootstrap_header.jsp" flush="false" />


	<div class="dashboard-wrapper">
		<div class="container-fluid dashboard-content">
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
					<div class="page-header">
						<h2 class="pageheader-title">상세 보기</h2>
						<div class="page-breadcrumb">
							<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item">
									<a href="#" class="breadcrumb-link">Dashboard</a>
								</li>
								<li class="breadcrumb-item">
									<a href="#" class="breadcrumb-link">Forms
								</a></li>
								<li class="breadcrumb-item active" aria-current="page">Form Validations</li>
							</ol>
							</nav>
						</div>
					</div>
				</div>
			</div>


				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
				
					<!-- HttpServletRequest input 타입으로 aid 값 보내기 -->
					<input type="hidden" id="aid" value="${board.aid}"/>
					
					<div class="card">
						<h5 class="card-header">게시판 상세보기</h5>
						<div class="card-body">
							<table class="table table-bordered">
							<thead>
								<tr>
									<th scope="col" class="table-secondary">제목</th>
									<th colspan="3" scope="col">${board.title}</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row" class="table-secondary">작성자</th>
									<td>${board.aname}</td>
									<td class="table-secondary">등록일</td>
									<td>${board.writeDay}</td>
								</tr>
								<tr>
									<th scope="row" class="table-secondary">내용</th>
									<td colspan="3" style="height:300px;">${board.content}</td>
								</tr>
							</tbody>
							</table>
							
							<!-- 댓글 등록하기    -->
							<div class="row" style="padding-top:50px;">
								<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
									<h4>Leave a Coment:</h4> 
									
									<div id="depth2"> 
										<table>
											<tr>
												<td id="co_num"></td>  
												<td id="co_writer"></td>
												<td id="co_comment"></td>
												<td id="co_date"></td> 
											</tr>
										</table>
									</div>
									
									<form name="comentView" id="comentView" method="post" action="javascript:comment_submit();">
										
										<input type="hidden" name="parent" value="${alien.aid}" />
										<input type="hidden" name="writer" value="지나가는행인" /> 
										<!--아이디별 작성자 구분 필요 ★-->
										
										<!-- depth -- default 값은 1인데, 위에 댓글이 정해지면 depth2로 변경되고 , depth2는 co_num으로 들어간다. -->
										<input type="hidden" id="depth" name="depth" value="1" />					
										<input type="hidden" id="pe_depth" name="pe_depth" value="0"/>
					
										<div > <!-- 한줄로 만들기  -->
											<input type="text" class="form-control" name="comment" placeholder="댓글을 입력하세요!">
											비밀글
											<label class="custom-control custom-radio custom-control-inline">
												<input type="radio" name="radio-inline" class="custom-control-input" checked>
												<span class="custom-control-label">N</span>
											</label>
											<label class="custom-control custom-radio custom-control-inline">
												<input type="radio" name="radio-inline" class="custom-control-input">
												<span class="custom-control-label">Y</span>
											</label>
											<button type="submit" class="btn btn-outline-secondary"> 등록  </button>
										</div>
									</form>
								</div>
							</div>
						
							<!-- comment 리스트 들어갈 곳  -->
							<div id="commentBody" style="padding-top:20px; padding-bottom:20px;"></div>
							
							<div class="form-group row text-right">
								<div class="col-12 col-sm-12">
									<button class="btn btn-space btn-secondary" onclick="history.back()">목록</button>
									<!-- 보던목록 페이지로 돌아가야함 / 페이징 처리 붙이고 난 후에 -->
								</div>
							</div> 
							
						</div> <!-- card-body -->
					</div>
				</div>
				

				
		</div> <!-- container-fluid dashboard-content -->
			
	
		<!-- footer 가져오기 -->
		<jsp:include page="/layout/bootstrap_footer.jsp" flush="false" />
		
	</div> <!-- dashboard-wrapper -->

</div> <!--dashboard-main-wrapper -->


<!-- Optional JavaScript -->
<jsp:include page="/layout/bootstrap_js.jsp" flush="false" />

</body>


</html>
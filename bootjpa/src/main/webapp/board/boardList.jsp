<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<!DOCTYPE html>
<html>


<head>
<jsp:include page="/layout/bootstrap_css.jsp" flush="false" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

	// 최대한 자바스크립트로 해보자. 
	window.addEventListener('DOMContentLoaded', function(){

		 var start = document.getElementById("start").value;
		 var end = document.getElementById("end").value;
		 var alldata = {"start":start, "end":end}
	
		//alert("로드도미??");
		$.ajax({
			type:"post",
			url:"/board/ajaxBoardList",
			data:alldata,
			success : function(data){
				$('div#tBody').html(data);
			},
			error :  function(request,status,error) {
            }
		});


		// 야매로 클릭한 색 바꾸기
		if(start == 1){
			document.getElementById("page1").classList.add("active");
			document.getElementById("page2").classList.remove("active");
			document.getElementById("page3").classList.remove("active");
		}else if(start == 4){
			document.getElementById("page1").classList.remove("active");
			document.getElementById("page2").classList.add("active");
			document.getElementById("page3").classList.remove("active");
		}else if(start == 7){
			document.getElementById("page1").classList.remove("active");
			document.getElementById("page2").classList.remove("active");
			document.getElementById("page3").classList.add("active");
		}


	})
	
	
	function goAdd(){
		var con = confirm("게시글을 추가하겠습니까?");
		if(con){
			window.location="/board/goAddPage";
		}
	}	

	
	
</script>

<body>
<div class="dashboard-main-wrapper">

	<!-- 헤더페이지 넣기 (페이지 모듈화) / main 안에 헤더위치 (헤더랑/사이드바) -->
	<jsp:include page="/layout/bootstrap_header.jsp" flush="false" />


	<div class="dashboard-wrapper">
		
		<div class="container-fluid dashboard-content">
		
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
					<div class="page-header">
						<h2 class="pageheader-title">Data Tables</h2>
						<p class="pageheader-text">
							Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.
						</p>
						<div class="page-breadcrumb">
							<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
								<li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Tables</a></li>
								<li class="breadcrumb-item active" aria-current="page">Data Tables</li>
							</ol>
							</nav>
						</div>
					</div>
				</div>
			</div> <!-- row -->
			
			<!-- 페이징 처리를 위해 ajax 값 보낼거 -->
			<input type="hidden" id="start" value="${start}" />
			<input type="hidden" id="end" value="${end}" />
			
			<div id="tBody">
				<!-- ajaxSubmt을 이용하여 리스트가 표시되는 부분 -->
			</div>
			
			<!-- 페이징 처리  -->
			<nav aria-label="Page navigation example" style="margin-top:10px;">
				<ul class="pagination">
					<li class="page-item"><a class="page-link" href="/board/boardList?start=${start-3}&end=${end-3}">Previous</a></li>
					<li class="page-item" id="page1"><a class="page-link" href="/board/boardList?start=1&end=3">1</a></li>
					<li class="page-item" id="page2"><a class="page-link " href="/board/boardList?start=${start+3}&end=${end+3}">2</a></li>
					<li class="page-item" id="page3"><a class="page-link" href="/board/boardList?start=${start+6}&end=${end+9}">3</a></li>
					<li class="page-item"><a class="page-link" href="/board/boardList?start=${start+3}&end=${end+3}">Next</a></li>
				</ul>
			</nav> 
			<!-- 페이징 처리 끝 -->
			
			
			<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
				<button class="btn btn-primary" type="button" onclick="javascript:goAdd();">게시글 등록</button>
			</div>
			
		</div> <!-- container-fluid dashboard-content -->
		

		<!-- footer 가져오기 -->
		<jsp:include page="/layout/bootstrap_footer.jsp" flush="false" />
		
	</div> <!-- dashboard-wrapper -->

</div> <!--dashboard-main-wrapper -->


<!-- Optional JavaScript -->
<jsp:include page="/layout/bootstrap_footer.jsp" flush="false" />

</body>


</html>
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

		//alert("로드도미??");
		$.ajax({
			type:"post",
			url:"/board/ajaxBoardList",
			//data:data,
			success : function(data){
				$('div#tBody').html(data);
			},
			error :  function(request,status,error) {
            }
		});

	})
	
	
function goAdd(){
	var con = confirm("게시글을 추가하겠습니까?");
	if(con){
		window.location="/board/goAddPage";
	}
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
			
			<div id="tBody">
				<!-- ajaxSubmt을 이용하여 리스트가 표시되는 부분 -->
			</div>
			
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
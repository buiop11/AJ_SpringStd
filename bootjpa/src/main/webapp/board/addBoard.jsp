<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<!DOCTYPE html>
<html>


<head>
<jsp:include page="/layout/bootstrap_css.jsp" flush="false" />
<script type="text/javascript">

	// 유효성검사 알아서 다해줌 
/* 	function onSubmit(){
		if(addAlienForm.aname.value ==''){
			alert("작성자를 입력해주세요!");
			addAlienForm.aname.focus();
			return false;	
		}
		if(addAlienForm.title.value == ''){
			alert("제목을 입력해주세요!");
			addAlienForm.title.focus();
			return false;
		}
		if(addAlienForm.content.value == ''){
			alert("글 본문을 작성해주세요!");
			addAlienForm.content.focus();
			return false;
		}
	} */

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
						<h2 class="pageheader-title">게시글 작성하기</h2>
						<div class="page-breadcrumb">
							<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
								<li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Forms</a></li>
								<li class="breadcrumb-item active" aria-current="page">Form Validations</li>
							</ol>
							</nav>
						</div>
					</div>
				</div>
			</div>


			<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
				<div class="card">
					<h5 class="card-header">게시글 작성</h5>
					<div class="card-body">
						<form id="validationform" data-parsley-validate="" action="/saveBoard" name="addAlienForm" method="post">
						<!-- novalidate="" /유효성검사안하는거 -->
							<div class="form-group row">
								<label class="col-12 col-sm-3 col-form-label text-sm-right">제목</label>
								<div class="col-12 col-sm-8 col-lg-6">
									<input type="text" name="title" required="" placeholder="제목을 입력하세요." class="form-control">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-12 col-sm-3 col-form-label text-sm-right">내용</label>
								<div class="col-12 col-sm-8 col-lg-6">
									<textarea required="" name="content" placeholder="내용을 입력하세요" class="form-control"></textarea>
								</div>
							</div>
							<div class="form-group row">
								<label class="col-12 col-sm-3 col-form-label text-sm-right">작성자</label>
								<div class="col-sm-4 col-lg-3 mb-3 mb-sm-0">
									<input type="text" name="aname" required="" data-parsley-maxlength="6" placeholder="이름을 입력하세요." class="form-control">
								</div>
							</div>
							<div class="form-group row"> 
							<!-- =============▼ 아래  required="" 다 뺏음 ============= -->
								<label class="col-12 col-sm-3 col-form-label text-sm-right">첨부파일 (하기)★</label>
								<div class="col-12 col-sm-8 col-lg-6">
									<input data-parsley-type="url" type="url" placeholder="URL" class="form-control">
							</div>
							</div>
							<div class="form-group row">
								<label class="col-12 col-sm-3 col-form-label text-sm-right">비밀번호</label>
								<div class="col-sm-4 col-lg-3 mb-3 mb-sm-0">
									<input id="pass2" type="password"  placeholder="Password" class="form-control">
								</div>
								<div class="col-sm-4 col-lg-3">
									<input type="password"  data-parsley-equalto="#pass2" placeholder="Re-Type Password" class="form-control">
								</div>
							</div>
								<div class="form-group row">
								<label class="col-sm-3 col-form-label text-sm-right">비밀글설정</label>
								<div class="col-sm-6">
									<div class="custom-controls-stacked">
										<label class="custom-control custom-checkbox">
											<input id="ck1" name="ck1" type="checkbox" data-parsley-multiple="groups" value="bar" data-parsley-mincheck="2" data-parsley-errors-container="#error-container1" class="custom-control-input">
											<span class="custom-control-label">Option 1</span>
										</label>
										<label class="custom-control custom-checkbox">
											<input id="ck2" name="ck2" type="checkbox" data-parsley-multiple="groups" value="bar2" data-parsley-mincheck="2" data-parsley-errors-container="#error-container1" class="custom-control-input">
											<span class="custom-control-label">Option 2</span>
										</label>
										<label class="custom-control custom-checkbox">
											<input id="ck3" name="ck3" type="checkbox" data-parsley-multiple="groups" value="bar3" data-parsley-mincheck="2" data-parsley-errors-container="#error-container1" class="custom-control-input">
											<span class="custom-control-label">Option 3</span>
										</label>
										<div id="error-container1"></div>
									</div>
								</div>
							</div>
							
							<div class="form-group row text-right">
								<div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
									<button type="submit" class="btn btn-space btn-primary">등록</button>
									<button class="btn btn-space btn-secondary" onclick="history.back()">목록</button></a>
									<!-- 보던목록 페이지로 돌아가야함 / 페이징 처리 붙이고 난 후에 -->
								</div>
							</div>
						</form>
					</div>
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
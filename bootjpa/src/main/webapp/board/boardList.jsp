<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<!DOCTYPE html>
<html>

<head>
<jsp:include page="/layout/bootstrap_css.jsp" flush="false" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="/js/jquery.form.min.js"></script> <!-- 20201229 추가해야함 + static 폴더에도 추가   -->
<script type="text/javascript" src="/js/locationHash.js"></script> <!-- 20201229 추가해야함  -->
<script type="text/javascript">

// 최대한 자바스크립트로 해보자. 
window.addEventListener('DOMContentLoaded', function(){

	<!-- 20201229 추가해야함  -->
	$(function(e){

		alert("????");
	    //ajax submit 설정
	    var options = {
	        type : 'POST',
	        success : renderList,
	        error : error
	    };
	    $('#SearchFrm').ajaxForm(options);
        locationHash.init(search);
        if(window.location.hash == '') { //최초 로드 또는 조회화면에서 목록 버튼을 이용하여 리스트로 이동
            changeLocationHash();
        }else { //조회화면에서 뒤로가기를 이용하여 리스트로 이동 또는 F5외의 수단을 이용하여 페이지를 refresh할때
            search(locationHash.getPageNumByHash());
        }
	}); 

})
	
	// 페이지 넘버 변경시 타는 function
	function changeLocationHash(pageNum) {
        if(typeof pageNum !== 'undefined') {
            $('#SearchFrm input[name=page]').val(pageNum);
        }
        
        locationHash.setHash($('#SearchFrm input[name=page]').val());
    }
	
	function search(pageNum) {
	    if (pageNum) {
	        $('input[name=page]').val(pageNum);
	    }
	    $('#SearchFrm').submit();
	}

	//성공시 탄다
	function renderList(responseText, statusText, xhr, $form) {
	    $('#section_body').html(responseText);
	}

	//에러시 탄다
	function error(responseText, statusText, xhr, $form) {
	    alert('웹진 실행도중 오류가 발생하였습니다. 관리자에게 문의하세요');
	}

	// 내꺼
	function goAdd(){
		var con = confirm("게시글을 추가하겠습니까?");
		if(con){
			window.location="/board/goAddPage";
		}
	}	

	// ============= 으아앙 ㅠㅠㅠㅠ 검색 슈발 
	// ============= 검색 자바 스크립트 처리 못함 ㅠㅠ reviewList / exhibitionList 참고 ============== 
	
	
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
			
			<!-- 페이징 처리를 위해 ajax 값 보낼거  20201228-->
			<%-- <input type="hidden" id="start" value="${start}" />
			<input type="hidden" id="end" value="${end}" /> --%>
			
			<!-- krt 20201229 -->
			<form name="SearchFrm" id="SearchFrm" method="get" action="/board/ajaxBoardList"> 
				<input type="hidden" id="page" name="page" value="${(empty postParam) ? '1' : postParam.page}" />
				<input type="hidden" id="perPageNum" name="perPageNum" value="${(empty postParam) ? '9' : postParam.perPageNum}" />
				<!-- 검색용 추가   -->
				<input type="hidden" id="section" name="section" value="${(empty postParam) ? '' : postParam.section}" />
			
				<div class="boardSearchWrap">
					<div class="uiWrap boardSearch">
						<span class="selectWrap">
							<select id="searchType" name="searchType">
								<option value="SUBJECT" <c:if test="${postParam.searchType eq 'SUBJECT'}">selected</c:if>>제목</option>
								<option value="SUBJECTCON" <c:if test="${postParam.searchType eq 'SUBJECTCON'}">selected</c:if>>제목+내용</option>
								<option value="USER_NAME" <c:if test="${postParam.searchType eq 'USER_NAME'}">selected</c:if>>작성자</option>
							</select>
						</span>
						<span class="inputWrap">
							<input type="text" name="searchWord" id="searchWord" placeholder="검색어를 입력하세요." value="${postParam.searchWord}">
						</span>
						<span class="btnsWrap">
							<button type="button" class="btns mid bgNavy" onclick="changeLocationHash(1);"><span>검색</span></button>
						</span>
					</div>
				</div> 
				<!-- 검색용 추가  끝 -->
			</form>
			
			<div id="section_body">
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
<%-- <jsp:include page="/layout/bootstrap_js.jsp" flush="false" /> --%>
<!-- jquery 3.3.1 이있어서 단체로 안불러오고 3개만 따로 끌어옴 -->
<!-- bootstap bundle js -->
<script src="/bootstrap/concept-master/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
<!-- slimscroll js -->
<script src="/bootstrap/concept-master/assets/vendor/slimscroll/jquery.slimscroll.js"></script>
<!-- main js -->
<script src="/bootstrap/concept-master/assets/libs/js/main-js.js"></script>

</body>


</html>
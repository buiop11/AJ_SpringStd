<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

<link href="/css/base.css" rel="stylesheet" type="text/css" />
<link href="/css/content.css" rel="stylesheet" type="text/css" />
<link href="/css/layout.css" rel="stylesheet" type="text/css" />
<link href="/css/common.css" rel="stylesheet" type="text/css" />
<link href="/css/ui_style.css" rel="stylesheet" type="text/css" />

<meta charset="EUC-KR">
<title>Insert title here</title>

<!-- script- ajax로 리스트 불러오기  -->
<!-- <script type="text/javascript" src="/js/jquery.form.min.js"></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

window.addEventListener('DOMContentLoaded', function(){

		alert("로드도미??");
		$.ajax({
			type:"post",
			url:"/ajaxAlienList",
			//data:data,
			success : function(data){
				$('div#tBody').html(data);
			},
			error :  function(request,status,error) {
            }
		});

	})
	

</script>


</head>


<body>

<article id="content" >
    
    <div class="content_body" style="padding-top:100px;">
        <!-- section -->
        <div class="section">
        
            <!-- section_head -->
            <div class="section_head line">
                <h2 class="section_tit">
                    <span class="ico ico_noticeList">alien 정보</span>
                </h2>
            </div>
            <!--//section_head -->
            
            <!-- section_body -->
            <div class="section_body">
                <!-- boardSearchWrap -->
                <form name="SearchFrm" id="SearchFrm" method="post" action="/customer/ajaxNoticeList" onkeydown="return captureReturnKey(event)">
                    <input type="hidden" name="page" value=""/> <!-- 현재페이지번호 -->
                    <input type="hidden" name="perPageNum" value=""/> <!-- 한페이지에 보여질 게시물 수 -->
                    
                    <div class="boardSearchWrap">
                        <div class="uiWrap boardSearch">
                            <span class="selectWrap">
                                <select name="searchType" id="searchType">
                                    <option value="titleCon" ${(postParam.searchType == 'titleCon') ? 'selected' : ''}>제목+내용</option>
                                    <option value="title" ${(postParam.searchType == 'title') ? 'selected' : ''}>제목</option>
                                    <option value="con" ${(postParam.searchType == 'con') ? 'selected' : ''}>내용</option>
                                    <option value="name" ${(postParam.searchType == 'name') ? 'selected' : ''}>작성자</option>
                                </select>
                            </span>
                            <span class="inputWrap">
                                <input type="text" name="searchWord" id="searchWord" value="${postParam.searchWord}" placeholder="검색어를 입력하세요.">
                            </span>
                            <span class="btnsWrap">
                                <button type="button" class="btns mid bgNavy" onclick="javascript:changeLocationHash(1)"><span>검색</span></button>
                            </span>
                        </div>
                    </div>
                </form>
                
                <form name="viewFrm" id="viewFrm" method="post" action="/customer/noticeView">
                    <input type="hidden" name="page"/>
                    <input type="hidden" name="perPageNum"/>
                    <input type="hidden" name="searchType"/>
                    <input type="hidden" name="searchWord"/>
                </form>
                <!--//boardSearchWrap -->
                
                <div id="tBody">
                     <!-- ajaxSubmt을 이용하여 리스트가 표시되는 부분 -->
                </div>
                
                <span class="btnsWrap"> <!-- 추가로 작성할 수 있는 페이지로 이동  -->
                    <button type="button" class="btns mid bgNavy" onclick="javascript:"><span>추가</span></button>
                </span>
                <!--//boardPagerWrap -->
            </div>
            <!--//section_body -->
        </div>
        <!--//section -->
    </div>
</article>


</body>
</html>
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

<!-- script- ajax�� ����Ʈ �ҷ�����  -->
<!-- <script type="text/javascript" src="/js/jquery.form.min.js"></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

// �ִ��� �ڹٽ�ũ��Ʈ�� �غ���. 
window.addEventListener('DOMContentLoaded', function(){

		//alert("�ε嵵��??");
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
	
	
function goAdd(){
	var con = confirm("�Խñ��� �߰��ϰڽ��ϱ�?");
	if(con){
		window.location="/goAddPage";
	}
}	
	
	

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
                    <span class="ico ico_noticeList">alien ����</span>
                </h2>
            </div>
            <!--//section_head -->
            
            <!-- section_body -->
            <div class="section_body">
                <!-- boardSearchWrap -->
                <form name="SearchFrm" id="SearchFrm" method="post" action="/customer/ajaxNoticeList" onkeydown="return captureReturnKey(event)">
                    <input type="hidden" name="page" value=""/> <!-- ������������ȣ -->
                    <input type="hidden" name="perPageNum" value=""/> <!-- ���������� ������ �Խù� �� -->
                    
                    <div class="boardSearchWrap">
                        <div class="uiWrap boardSearch">
                            <span class="selectWrap">
                                <select name="searchType" id="searchType">
                                    <option value="titleCon" ${(postParam.searchType == 'titleCon') ? 'selected' : ''}>����+����</option>
                                    <option value="title" ${(postParam.searchType == 'title') ? 'selected' : ''}>����</option>
                                    <option value="con" ${(postParam.searchType == 'con') ? 'selected' : ''}>����</option>
                                    <option value="name" ${(postParam.searchType == 'name') ? 'selected' : ''}>�ۼ���</option>
                                </select>
                            </span>
                            <span class="inputWrap">
                                <input type="text" name="searchWord" id="searchWord" value="${postParam.searchWord}" placeholder="�˻�� �Է��ϼ���.">
                            </span>
                            <span class="btnsWrap">
                                <button type="button" class="btns mid bgNavy" onclick="javascript:changeLocationHash(1)"><span>�˻�</span></button>
                            </span>
                        </div>
                    </div>
                </form>
                
                <form name="viewAlien" id="viewFrm" method="post" action="/getAlien">
                    <input type="hidden" name="page"/>
                    <input type="hidden" name="perPageNum"/>
                    <input type="hidden" name="searchType"/>
                    <input type="hidden" name="searchWord"/>
                <!--//boardSearchWrap -->
                </form> 
                <!-- ajax �� ���Ե� ��������, �� �������� ������ ȿ�������ϱ�! (�񵿱���) form�� ����� �θ� ����ɰž�! / ���� �Ǳ������� aid �ϳ��� �ʿ��ϱ� ������ ���� ������ �Ѱܾ��� form�� ����� �ʿ䰡 ����. -->
                
                <div id="tBody">
                     <!-- ajaxSubmt�� �̿��Ͽ� ����Ʈ�� ǥ�õǴ� �κ� -->
                </div>

                <span class="btnsWrap" style="margin-top:30px;"> <!-- �߰��� �ۼ��� �� �ִ� �������� �̵�  -->
                    <button type="button" class="btns mid bgNavy" onclick="javascript:goAdd();"><span>�߰�</span></button>
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
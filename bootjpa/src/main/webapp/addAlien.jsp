<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

   

<link href="/css/base.css" rel="stylesheet" type="text/css" />
<link href="/css/content.css" rel="stylesheet" type="text/css" />
<link href="/css/layout.css" rel="stylesheet" type="text/css" />
<link href="/css/common.css" rel="stylesheet" type="text/css" />
<link href="/css/ui_style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">

	function onSubmit(){

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
		
	}

</script>


<!-- content -->
<article id="content"> <!-- article은 기사의 한 문단으로 생각하면 쉽다.  -->

	<!-- content head -->
	<div class="content_head">
		<strong> 게시글 작성 </strong>
	</div>

	<!-- content body -->
	<div class="content_body">
		
		<!-- 콘텐츠 안에 section 구분   -->
		<!-- sectioin head -->
		<div class="section_head line">
			<h2 class="section_tit">
				<span class="ico ico_reviewList"> 게시글~~ </span>
			</h2>
		</div>
		
		<!-- section body  -->
		<div class="section_body">
			<form onsubmit="return onSubmit();" action="/addAlien" id="addAlienForm" name="addAlienForm" method="post">
			
				<input type="hidden" name="writeDay" value="2020-02-02">
				<input type="hidden" name="readCnt" value="1">
				<!-- <input type="hidden" name="aid" value="107"> -->
			
			
				<!-- form wrap -->
				<div class="formWrap mt40">
					<table class="formWrite_type1">
						<caption>
							<strong>작성페이지</strong> 
						</caption>
					
						<colgroup>
							<col style="width:22.85%;">
						</colgroup>
						
						<tbody>
							<tr>
								<th scope="row">
									<label for="name">이름 </label>
								</th>
								<td>	
									<input type="text" name="aname" id="aname" placeholder="이름을 입력하세여" >
								</td>
							</tr>
							
							<tr>
								<th scope="row">
									<label for="sTitle">제목</label>
								</th>
								<td>
									<span class="inputWrap w100p">
										<input type="text" name="title" id="title" placeholder="제목을 입력하세요" >
									</span>
								</td>
							</tr>
							
							<tr>
								<th class="t">
									<label for="text_content">내용</label>
								</th>
								<td>
									<span class="textareaWrap textarea_type1">
										<textarea name="content" id="content" placeholder="내용을 입력하세요" ></textarea>
									</span>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			
			
			<!-- 데이터 전송 보낼 submit 버튼 필요 -->
			<div>
				<span>
					<input type="submit" value="등록" class="btns big bgPoint bdRedius3 bsRed wFix w150"> 
					<input type="button" value="목록으로" class="btns big bgPoint bdRedius3 bsRed wFix w150">
				</span>
			</div>			
			
			</form>
		
		</div>
		
	
	</div>

	
</article>


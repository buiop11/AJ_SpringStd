<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<link href="/css/base.css" rel="stylesheet" type="text/css" />
<link href="/css/content.css" rel="stylesheet" type="text/css" />
<link href="/css/layout.css" rel="stylesheet" type="text/css" />
<link href="/css/common.css" rel="stylesheet" type="text/css" />
<link href="/css/ui_style.css" rel="stylesheet" type="text/css" />

<script src="//ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="//cdn.rawgit.com/rainabba/jquery-table2excel/1.1.0/dist/jquery.table2excel.min.js"></script>
<script>
function ReportToExcelConverter() { 
	$("#TableToExcel").table2excel({ 
		exclude: ".noExl", 
		name: "Excel Document Name", 
		filename: "mkYearBook" +'.xls', //확장자를 여기서 붙여줘야한다. 
		fileext: ".xls",  // 확장자 xlsx는 지원하지 않는다. 
		exclude_img: true, 
		exclude_links: true, 
		exclude_inputs: true 
		}); 
	};

</script>



<!-- content -->
<article id="content"> <!-- article은 기사의 한 문단으로 생각하면 쉽다.  -->

	<!-- content head -->
	<div class="content_head" style="height:100px;">
		<strong style="font-size:30px;"> 크롤링 / 매경 (매출액)</strong>	
		
		<span class="btnWrap" style="float:right;">
			<input type='button' class='btn btn-inverse' value='excel 다운' style='width:100px;height:36px;font-weight:bold;' onclick="ReportToExcelConverter();" />
		</span>	
		
	</div>
	<!-- content head 끝  -->
	
	<!-- content body  -->
	<div class="content_body">
	
		<table class="boardList" id="TableToExcel">
			<tr>
				<th>순위</th>
				<th>회사명</th>
				<th>2018 매출액</th>
				<th>2017 매출액</th>
				<th>증감율(%)</th>
				<th>형태</th>
			</tr>
			
			<c:forEach var="mk" items="${mk}">
				
				<tr>
					<td>${mk.ranking}</td>
					<td>${mk.companyName}</td>
					<td>${mk.sales2018}</td>
					<td>${mk.sales2017}</td>
					<td>${mk.increase}</td>
					<td>${mk.form}</td>
				</tr>
			
			</c:forEach>
			
		</table>
	
	
	</div>
	<!-- content body 끝  -->


</article>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!-- 페이징 처리해야함!!!  -->
<div class="row">
	<!-- ============================================================== -->
	<!-- basic table  -->
	<!-- ============================================================== -->
	<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
		<div class="card">
			<h5 class="card-header">
				<strong>뉴스&amp;공지사항 목록</strong>
				<p>번호, 제목, 등록일, 조회 정보를 제공하는 목록입니다.</p>
			</h5>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-striped table-bordered first">
						<thead>
							<tr>
								<th>No.</th>
								<th>제목</th>
								<th>작성자</th>
								<th>조회수</th>
								<th>작성일</th>
							</tr>
						</thead>
						<tbody>
							 <!-- emtpy -->
				             <c:if test="${empty boardList}">
				                <tr>
				                    <td colspan="5">
				                        <p><span class="ico_noData">검색 결과가 없습니다.</span></p>
				                    </td>
				                </tr>
				             </c:if>
							 
				             <!-- not empty -->
				            <c:if test="${not empty boardList}">
				                <c:forEach var="row" items="${boardList}">
					                <tr>
					                    <td>${row.aid}</td>
					                    <td>
					                    	<a href="/board/getBoard?aid=${row.aid}">${row.title}</a>
					                    </td>
					                    <td>${row.aname}</td>
					                    <td>${row.readCnt}</td>
					                    <td>${row.writeDay}</td>
					                </tr>
				                </c:forEach> 
				            </c:if>
							 
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!-- ============================================================== -->
	<!-- end basic table  -->
	<!-- ============================================================== -->
</div>

<%-- <br>
<br>
<div>
	메인페이지    인터셉트 찍어보기  스타트타임: ${startTime}  //// 핸들링타임:  ${handlingTime}
</div>
<div>
	로케일!!!! : ${pageContext.response.locale}
</div>
<br>
<br> --%>
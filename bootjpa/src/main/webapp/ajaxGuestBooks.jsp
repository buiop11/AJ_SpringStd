<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<div>
	<c:if test="${empty guestbooks}">
		<div>
			<h2>등록된 방명록이없습니다!</h2>				
		</div>
	</c:if>
	
	<div class="tableWrap p30">	
		<c:if test="${not empty guestbooks}">
			<table class="table_type0">
				<c:forEach var="row" items="${guestbooks}">
						<tr>
							 <th style="width:50px">${row.id}</th>  
							 <td>
							  ${row.name} 
							 <div>${row.content}</div>
							<span style="float:right">날짜: ${row.regdate}</span>  
							<span>[수정 / 삭제 기능 만들기]</span></td>
						</tr>
				</c:forEach>
			</table>
		</c:if>
	</div>
</div>



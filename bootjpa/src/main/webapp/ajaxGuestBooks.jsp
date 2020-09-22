<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<div>
	<c:if test="${empty guestbooks}">
		<div>
			<h2>등록된 방명록이없습니다!</h2>				
		</div>
	</c:if>
	
	<c:if test="${not empty guestbooks}">
		<table>
			<c:forEach var="row" items="${guestbooks}">
					<tr>
						<td>${row.id}</td>  
						<td>${row.name}</td>
						<td>${row.content}</td>
						<td>날짜: ${row.regdate}</td>
					</tr>
			</c:forEach>
		</table>
	</c:if>
</div>



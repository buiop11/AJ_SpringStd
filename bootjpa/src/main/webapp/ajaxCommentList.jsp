<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!-- 댓글 게시판  1. 댓글 있느냐 없느냐, 2.비밀글이냐 아니냐 -->
<div>
	<c:if test="${empty comments}">
		<div>
			<h2>등록된 comments가 없습니다!</h2>				
		</div>
	</c:if>
	
	<c:if test="${not empty comments}">
		<table>
			<c:forEach var="row" items="${comments}">
				<tr>
					<td>${row.writer}</td>
					<td>${row.comment}</td>
					<td>날짜 :: ${row.commentdate}</td>
					<td>순서 :: ${row.depth}</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</div>

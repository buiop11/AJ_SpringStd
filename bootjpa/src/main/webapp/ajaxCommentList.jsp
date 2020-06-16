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
				<c:if test="${row.depth == 1}">
					<tr>
						<td>확인차: ${row.conum}</td>  
						<td>${row.writer}</td>
						<td>${row.comment}</td>
						<td>날짜 :: ${row.commentdate}</td>
						<td id="depth_color">${row.depth} :: ${row.depth2}</td>
						<td><input type="button" value="답글 re::" 
						onclick="javascript:rere('${row.conum}','${row.writer}','${row.comment}','${row.commentdate}');"></td>
					</tr>
				</c:if>
				<c:if test="${row.depth == 2}">
					<tr style="background-color:pink;">
						<td>--></td>
						<td>확인차: ${row.conum}</td>  
						<td>${row.writer}</td>
						<td>${row.comment}</td>
						<td>날짜 :: ${row.commentdate}</td>
						<td id="depth_color">${row.depth} :: ${row.depth2}</td>
					</tr>
				</c:if>
			</c:forEach>
		</table>
	</c:if>
</div>


<!-- 댓글안에다가도 댓글 추가로 등록/삭제 기능이 있어야 한다!  -->
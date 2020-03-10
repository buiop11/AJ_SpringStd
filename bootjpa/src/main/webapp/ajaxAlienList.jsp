<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<link href="/css/base.css" rel="stylesheet" type="text/css" />
<link href="/css/content.css" rel="stylesheet" type="text/css" />
<link href="/css/layout.css" rel="stylesheet" type="text/css" />
<link href="/css/common.css" rel="stylesheet" type="text/css" />
<link href="/css/ui_style.css" rel="stylesheet" type="text/css" />


<!-- boardListWrap -->
<div class="boardListWrap mt40">
    <table class="boardList">
        <caption>
            <strong>뉴스&amp;공지사항 목록</strong>
            <p>번호, 제목, 등록일, 조회 정보를 제공하는 목록입니다.</p>
        </caption>
        <colgroup>
            <col style="width:10%;">
            <col style="">
            <col style="width:11%;">
            <col style="width:11%;">
        </colgroup>
        <thead>
            <tr>
                <th scope="col">번호</th>
                <th scope="col">이름</th>
                <th scope="col">기술</th>
                <th scope="col">조회</th>
            </tr>
        </thead>
        <tbody>
            <!-- emtpy -->
            <c:if test="${empty alienList}">
                <tr class="noData">
                    <td colspan="4">
                        <p><span class="ico_noData">검색 결과가 없습니다.</span></p>
                    </td>
                </tr>
            </c:if>
            
            <!-- not empty -->
            <c:if test="${not empty alienList}">
                <c:forEach var="row" items="${alienList}">
	                <tr class="notice">
	                    <td class="con">
	                    	에어리언 번호 ${row.aid}
	                    </td>
	                    <td class="con">
	                    	<a href="/getAlien">${row.aid} </a>
	                    	에어리언이름 ${row.aid} /  ${row.aname} 
	                    </td>
	                    <td>
	                    	${row.tech}
	                    </td>
	                    <td>
	                    	1234
	                    </td>
	                </tr>
                </c:forEach> 
            </c:if>
        </tbody>
    </table>
</div>
<!--//boardListWrap -->
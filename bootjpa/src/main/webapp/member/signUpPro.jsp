<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<body>
    <c:if test="${result == 0}">
        <script type="text/javascript">
        alert("회원가입 에러!");
            window.history.back();
        </script>
    
    </c:if>
 
    <c:if test="${result != 0}">
        <script type="text/javascript">
            alert("회원가입 완료/ 로그인하러 가자");
            window.location ="/login";
        </script>
    
    </c:if>
 
</body>
</html>
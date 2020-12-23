<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

지금 시간은 :
	<%
		out.print(new java.util.Date());
	%>
	
	<br>-----------------------<br>

	<%! 
	    double  radius = 0; 
	
		void setRadius(double radius) {
			this.radius = radius;
		}
	
		double getPerimeter() {
			return radius * 2 * 3.14;
		}
		
		double getArea() {
			return radius*radius * 3.14;
		}
	%>
	
	반지름 4.5 지정: <% radius = 4.5; %> <br>
	
	원 반지름: <%= radius %> <br>
	원 면적: <%= getArea() %> <br>
	원 둘레: <%= getPerimeter() %> <br>

</body>
</html>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>이 페이지는 index 페이지 입니다.</h3><br>	
<%
	java.util.Date now = new java.util.Date();
%>
<p>요청시간 : <%= now %></p>
</body>
</html>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import='java.util.Date' %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>charset</title>
</head>
<body>
	<p>현재시간 : <%= new Date() %></p>
	<p>trimDirectiveWhitespaces속성은 불필요한 빈 줄이나 빈 칸을 지워줍니다.
	XML문서 생성시 반드시 적용하세요</p>
	<!-- html, xml에서도 사용하는 주석 -->
	<%-- JSP 주석 : client에는 전달되지 않는다. --%>
</body>
</html>
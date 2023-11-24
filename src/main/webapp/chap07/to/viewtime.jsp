<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 시간</title>
</head>
<body>
<!-- cal -->
<%
	Calendar cal = (Calendar)request.getAttribute("cal");
%>

현재 시간 : <%= cal.get(Calendar.HOUR) %>시 <%= cal.get(Calendar.MINUTE) %>분
<%= cal.get(Calendar.SECOND) %>초
</body>
</html>
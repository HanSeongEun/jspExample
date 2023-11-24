<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page isELIgnored="false" %>
	<%
	request.setAttribute("name", "su");
	session.setAttribute("name", "javakim");
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 사용하기</title>
</head>
<body>
	
	<div>name 속성 : ${name }</div>
	<div>session - name 속성 : ${sessionScope.	name }</div>
	<div>요청URI : ${ pageContext.request.requestURI }</div>
	<div>code파라미터 : ${ param.code} </div>
</body>
</html>
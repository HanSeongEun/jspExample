<%@ page contentType="text/html; charset=UTF-8" %>
<%
	String name = "김자바";
	int age = 10;
	
	application.setAttribute("name", name);
	application.setAttribute("age", age);
	application.setAttribute("age", 100);
%>
<!DOCTYPE html>
<html>
<head>
<title>application속성 지정</title>
</head>
<body>
	application 객체의 속성 설정:<br>	
	name : <%= name %><br>	
	age : <%= age %>
</body>
</html>
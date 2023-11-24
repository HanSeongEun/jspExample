<%@page import="java.util.*"%>
<%@page import="el.Member"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% 
	Member m = new Member("김자바", 10);
	request.setAttribute("mem", m);
	
	Map<String, String> pref = new HashMap<>();
	request.setAttribute("map", pref);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c:Set 태그</title>
</head>
<body>
	
	<c:set target="${mem}" property="name" value="javakim"/>
	${mem }<br>
	
	<c:set var="color" value="#{map.color}"/>
	color : ${color }<br>
	
	<c:set target="${map }" property="color" value="red"/>
	color : ${color }<br>
	
	
</body>
</html>
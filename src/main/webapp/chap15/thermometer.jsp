<%@page import="el.Thermometer"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%
Thermometer thermometer = new Thermometer();
request.setAttribute("t", thermometer);
%>

<html>
<head>
<title>Thermometer</title>
</head>
<body>
	${ t.setCelsius('서울', 18.4) }
	서울 온도 : 섭씨 ${t.getCelsius('서울')}도
			/화씨 ${t.getFahrenheit('서울') }
	<br>
	정보 : ${t.info}
</body>
</html>

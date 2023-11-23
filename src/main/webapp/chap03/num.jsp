<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="day1123.method.Calc" %>
<%!public int sumcalc(int i, int j) {
		int sum = 0;
		for (; i <= j; i++) {
			sum += i;
		}
		return sum;
	}
	
		
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 스크립트 연습</title>
</head>
<body>
	<%
	int sum1 = 0;
	for (int i = 1; i <= 10; i++) {
		sum1 += i;
	}
	
	Calc calc = new Calc();
	%>
	<p>	1 ~ 10까지의 합 : <%=sum1%> </p>
	<p>	1 ~ 10까지의 합 : 	<%=1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10%> </p>
	<p>	1 ~ 10까지의 합 : 	<%=sumcalc(1, 10)%> </p>
	<p>	1 ~ 10까지의 합 : 	<%=calc.sumcalc(1, 10)%> </p>
</body>
</html>
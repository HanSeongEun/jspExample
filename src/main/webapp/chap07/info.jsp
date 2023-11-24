<%@ page contentType = "text/html; charset=utf-8" %>
<html>
<head><title>INFO</title></head>
<body>
	<table>
		<tr>
			<th>제품번호</th>
			<th>가격</th>
			<%
				request.setAttribute("type", "A");
			%>
			<jsp:include page="infoSub.jsp"/>
			
			
			<%-- <jsp:include page="infoSub.jsp">
				<jsp:param value="A" name="type"/>
			</jsp:include> --%>
		</tr>
	</table>
	</body>
</html>





<%@ page contentType = "text/html; charset=utf-8" %>
<%
	//String type = request.getParameter("type");
	String type = (String)request.getAttribute("type");
%>

<tr>
	<td><%= type %></td>
	<td>
		<%if(type.equals("A")){ %>
			10000원
		<%}else if(type.equals("B")) {%>
			20000원
		<%} %>
	</td>
</tr>


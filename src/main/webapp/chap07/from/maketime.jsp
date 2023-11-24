<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Calendar"%>
<%
	Calendar cal = Calendar.getInstance();

	request.setAttribute("cal", cal);
%>
<jsp:forward page = "../to/viewtime.jsp"/>
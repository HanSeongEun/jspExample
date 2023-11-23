<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page buffer='20kb' autoFlush="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>auto Flush</title>
</head>
<body>
	<%
		for(int i = 0; i < 1000; i++){
			out.println(i);
		}
	%>
	
</body>
</html>
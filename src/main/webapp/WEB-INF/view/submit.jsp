<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과</title>
</head>
<body>
	<c:if test = "${ SUCCESS != null }">
		아이디${ SUCCESS}로 로그인 되었습니다.
	</c:if>
	<c:if test = "${ FAIL != null }">
		아이디${ FAIL}로 로그인 실패했습니다.
	</c:if>
	
	<button onclick = "location.href = 'logout.do'">로그아웃</button>
	
</body>
</html>
<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>form</title>
</head>
<body>
	<form action="login.jsp" method="post">
		<label for="memberId">아이디 : </label> 
		<input name="memberId" id="memberId"><br> 
		<label for="memberPw">비밀번호 : </label> 
		<input type="password" name="memberPw" id="memberPw"><br>
		<input type="submit" value="로그인">
	</form>
</body>
</html>
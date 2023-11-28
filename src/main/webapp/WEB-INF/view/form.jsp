<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<form action = "submit.do" method = "post">
		<label for = "id">아이디 : </label>
		<input name = "id" id = "id" placeholder = "ID 입력"><br>
		<label for = "passwd">비밀번호 : </label>
		<input type = "password" name = "password" id = "passwd"><br>
		<input type = "submit" value = "전송">
	</form>
</body>
</html>
<%@page import="day1124.jstl.*"%>
<%@page import="java.util.Arrays"%>
<%@page import="el.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
List<String> list = new ArrayList<>();

list.add("apple");
list.add("banana");
list.add("mango");

request.setAttribute("list", list);

List<Member> memberlist = Arrays.asList(
		new Member("홍길동", 20),
		new Member("이순신", 54),
		new Member("유관순", 19),
		new Member("왕건", 42)
		);
request.setAttribute("memberlist", memberlist);

List<User> ulist = new ArrayList<>();
User u1 = new User("kim", "1234", new Address("12345","서울시 종로구"));
User u2 = new User("java", "1234", new Address("13579","서울시 강남구"));
User u3 = new User("spring", "1234", new Address("56743","부산광역시"));

ulist.add(u1);
ulist.add(u2);
ulist.add(u3);

request.setAttribute("ulist", ulist);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<c:forEach var="fruit" items="${list}">
		${fruit }<br>
		</c:forEach>
	</div>

	<hr>
	
	<div>
		<table border="1">
			<tr>
				<th>이름</th>
				<th>나이</th>
			</tr>
				
			<c:forEach var="member" items="${memberlist}">		
				<tr>
					<td>${member.name }</td>
					<td>${member.age }</td>
				</tr>
			</c:forEach>
		</table>
	</div>

	<hr>
	
	<div>
		<table border="1">
			<tr>
				<th>id</th>
				<th>pw</th>
				<th>zipcode</th>
				<th>address</th>
			</tr>
				
			<c:forEach var="user" items="${ulist}">		
				<tr>
					<td>${user.id }</td>
					<td>${user.pw }</td>
					<td>${user.address.zipcode }</td>
					<td>${user.address.address }</td>
				</tr>
			</c:forEach>
		</table>
		
		
	</div>


</body>
</html>
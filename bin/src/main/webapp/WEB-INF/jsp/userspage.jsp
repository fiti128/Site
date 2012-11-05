<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>users</h1>

<table>
	<thead>
		<tr>
			<th>First Name</th>
			<th>Email</th>
			<th>Password</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${users}" var="user">
		<tr>
			<td><c:out value="${user.firstName}" /></td>
			<td><c:out value="${user.email}" /></td>
			<td><c:out value="${user.password}" /></td>
		</tr>
	</c:forEach>
	</tbody>
</table>
<c:url var="home" value="/" />
<a href="${home}">Return home</a>
</body>
</html>
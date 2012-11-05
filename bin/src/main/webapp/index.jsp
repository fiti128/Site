<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<body>
<h2>Hello World!</h2>
<c:url var="mainUrl" value="/main/persons" />
<p>You are allowed to visit main page <a href="${mainUrl}">Main List</a></p><br>
<c:url var="showUsers" value="/home/users" />
<a href="${showUsers}">Show all the users</a><br>
<c:url var="showLogin" value="/home/login.html" />
<a href="${showLogin}">Proceed to login page</a>
</body>
</html>

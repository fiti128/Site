<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="include/resource.jsp"></jsp:include>
<title>Secret page</title>
</head>
<body>
<jsp:include page="include/header.jsp"></jsp:include>
<div class="container-fluid"> 
<div class="row-fluid">
<div class="span3"> 
	<jsp:include page="include/menu.jsp"></jsp:include>
</div>
<div class="span9">
<div class="hero-unit">
	<div class="well">
	<table class="table table-striped">
		<thead>
			<tr>
				<th> Имя </th>
				<th> Права доступа </th>
				<th> Почтовый адрес </th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${users}" var="user">
				<tr>
					<td><c:out value="${user.firstName}" /></td>
					<td><c:forEach items="${user.athorities}" var="role"><c:out value="${role.roleId} " /></c:forEach></td>
					<td><c:out value="${user.email}" /></td>
					<td>
						<c:url var="href" value="edit-user.html" ><c:param name="userId" value="${user.email}" /></c:url>
						<a class="btn btn-mini" href="${href }"><i class="icon-pencil"></i> Edit</a>
					</td>
					<td>
						<c:url var="href" value="delete.html" ><c:param name="userId" value="${user.email}" /></c:url>
						<a class="btn btn-mini btn-danger" href="${href }"><i class="icon-trash icon-white"></i> Delete</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
</div>
</div>
</div>
<hr class="soften">

</div>
<br>
<br>
<br>
<br>
<br>
<br><br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br><br>
<br>
<br>
<br>
<br>
<br>
<jsp:include page="include/footer.jsp"></jsp:include>
</body>
</html>
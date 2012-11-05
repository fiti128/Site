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
	<h1>${deptsEmpty }</h1>
	<legend>Cписок должников</legend>
	<table class="table table-striped">
		<thead>
			<tr>
				<th> Кто </th>
				<th> Детали </th>
				<th> Сумма </th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${depts}" var="dept">
				<tr>
					<td><c:out value="${dept.who}" /></td>
					<td rowspan="1" colspan="1"><c:out value="${dept.details}" /></td>
					<td><c:out value="${dept.sum}" /></td>
					<td>
						<c:url var="href" value="edit-dept.html" ><c:param name="deptId" value="${dept.deptId}" /></c:url>
						<a class="btn btn-mini" href="${href }"><i class="icon-pencil"></i> Редактировать</a>
					</td>
					<td>
						<c:url var="href" value="delete-dept.html" ><c:param name="deptId" value="${dept.deptId}" /></c:url>
						<a class="btn btn-mini btn-danger" href="${href }"><i class="icon-trash icon-white"></i> Удалить</a>
					</td>
				</tr>
			</c:forEach>
				<tr>
					<td colspan="2"><strong>ИТОГО:</strong>
					<td><strong>${summa }</strong></td>
				</tr>
		</tbody>
	</table>
	<a class="btn btn-large" href="add-dept.html"><i class="icon-plus"></i> Добавить</a>

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
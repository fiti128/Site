<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  <div class="row-fluid">
 			 <div class="span6">
 			   <p>
				<img align="left" width="100%" src="http://piluk.by/uploads/posts/1320686271_radost1.jpg">
			   </p> 
              <h2>Обновление </h2>
              <p>С каждым днем работать с нашим сервисом все удобнее и удобнее. Вся наша группа профессионалов благодарит Вас за пользование нашим ресурсом и обещает новые плюшки совсем совсем скоро... </p>
              <p><a class="btn btn-primary" href="#">Читать подробности &raquo;</a></p>
            </div>
            <div class="span6">
            		<jsp:include page="Authenticate.jsp"></jsp:include>
							<p>
							Доступны тестовые аккаунты:
							<br> <span class="label label-info">login:
								guest@gmail.com</span> <span class="label label-info">password: guestPassword</span> Права доступа: user
							<br> <span class="label label-info">login:
								admin@gmail.com</span> <span class="label label-info">password: adminPassword</span> Права доступа: admin
							
							</p>
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
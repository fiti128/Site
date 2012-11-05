<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="include/resource.jsp"></jsp:include>
<title>Регистрация</title>
</head>
<body>
<jsp:include page="include/header.jsp"></jsp:include>
<div class="container-fluid"> 
<div class="row-fluid">
<div class="span3"> 
	<jsp:include page="include/menu.jsp"></jsp:include>
</div>
<div class="span9">
 <form:form class="form-horizontal" action="" method="post" commandName="dept">
 <h2>Управление записями</h2>

<br>
  <div class="well">
   		<legend>Добавление долга</legend>
   		<div class=" pagination-centered">
		   <form:errors class="label" path=""/>
		</div>
   		<div class="row-fluid">
   			<div class="span6">

   				 <fieldset>
          				<div class="control-group">
           					 <form:label path="who" class="control-label" for="who">Кто</form:label>
            				 <div class="controls">
             				 	<form:input path="who" type="text" class="input" title="Кто должен" placeholder="Имя должника" id="who" name="who"/>
             			 	 		<div>
             			 	 			<form:errors class="label" path="who"/>
                			 	   </div>
             			 	 </div>
          				  </div>
          			</fieldset>
          		
   			</div>
   			<div class="span6">
   				         		<fieldset>
          				   <div class="control-group">
           					 <form:label path="sum" class="control-label" for="sum">Введите сумму</form:label>
            				 <div class="controls">
             				 <form:input path="sum" type="number" class="input" title="Введите сумму"
             				 	 placeholder="Введите сумму" id="sum" name="sum"/>
             			 	 	<div>
           			 	 			<form:errors class="label" path="sum"/>
           			 	 		</div>
             			 	 </div>
          				  </div>
          			</fieldset>
          		</div>  
   		</div>
   		<div class="control-group">
            <form:label path="details" class="control-label" for="details">Детали</form:label>
            <div class="controls">
              <form:textarea path="details" class="input-xlarge span20" id="details" name="details" rows="3" title="Любые детали относительно долга"></form:textarea>
                <div>
              		<form:errors class="label" path="details"/>
             	</div>
            </div>

          </div>
  </div>
  
      			<input class="btn btn-primary btn-large" type="submit" value="Добавить">
      			<a href="index.html" class="btn btn-large">Отменить</a>
            


	</form:form>
</div>
</div>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

<hr class="soften">

<jsp:include page="include/footer.jsp"></jsp:include>

</body>
</html>
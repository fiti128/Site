<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

              <form method="post" class="well" action="SecretServlet">
  				<legend>Войти</legend>
 				<div class ="controls">
   					 <input name="loginName" type="text" class="input" placeholder="Имя" value="admin@gmail.com">
 			    </div>
  				 <div class ="controls">
   					 <input name="password" type="password" class="input" placeholder="Пароль" value="adminPassword>">
  				</div>
   				<label class="checkbox">
				 <input name="loginCheckBox" type="checkbox" value="remember">Запомни меня  
  				</label>
  				<div>
  				 <button type="submit" class="btn btn-large">Войти</button>
  				 </div>
  				 <label class="pagination-right">
  				  <a class="pagination-right" href="guest.jsp">Я забыл пароль</a>
  				  </label>
  				 
  			 </form>
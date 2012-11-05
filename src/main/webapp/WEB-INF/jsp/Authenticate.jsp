<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

              <form method="post" class="well" action="j_spring_security_check">
  				<legend><spring:message code="authorization.header"/></legend>
  				<div class="red">${loginError }</div>
 				<div class ="controls">
   					 <input name="loginName" type="text" class="input" placeholder="<spring:message code="authorization.email.placeholder"/>">
 			    </div>
  				 <div class ="controls">
   					 <input name="password" type="password" class="input" placeholder="<spring:message code="authorization.password.placeholer"/>">
  				</div>
  				<label class="checkbox">
				 <input name="_spring_security_remember_me" type="checkbox"><spring:message code="authorization.remember-me"/>  
  				</label>
  				<div>
  				 <button type="submit" class="btn btn-large"><spring:message code="authorization.button.enter"/></button>
  				 </div>
  				 <label class="pagination-right">
  				  <a class="pagination-right" href="guest.jsp"><spring:message code="authorization.link"/></a>
  				  </label>
  				 
  			 </form>
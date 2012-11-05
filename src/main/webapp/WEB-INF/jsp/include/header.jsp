<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
  

<div class="container pagination-centered">
 <h2><spring:message code="header.message.header"/></h2>
 <p><spring:message code="header.message.support"/></p>
 <h3></h3>
</div>
<div class="container-fluid">
	<div class="row-fluid">
	<div class="span3"> 
		<span class="pull-left">
		    <a href="?language=en"><spring:message code="header.language.english"/></a> 
		    | 
		    <a href="?language=ru"><spring:message code="header.language.russian"/></a>
		</span>
	</div>
	<div class="span9">
	<sec:authorize access="isAuthenticated()">
    <c:url var="href" value="info.html"></c:url>
        <div class="dropdown pull-right">
                  <a class="header-dropdown dropdown-toggle accent-color" data-toggle="dropdown" href="#" >
                     <i class="icon-user"></i> <strong>${userName }</strong>
                     <b class="caret"></b>
                  </a>
                  <ul class="dropdown-menu">
                  <li><a href="${href }"><spring:message code="header.dropdown.configure"/></a></li>
                  <li class="divider"></li>
                  <li><a href="logout"><spring:message code="header.dropdown.logout"/></a></li>
               </ul>
            </div>
 </sec:authorize>
	</div>
</div>
</div>

<hr class="soften">
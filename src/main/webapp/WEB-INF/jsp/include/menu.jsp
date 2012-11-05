<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<div class="well sidebar-nav">
		<ul class="nav nav-list">
			<script>menuItem('index.html','','icon-home','<spring:message code="menu.home"/>')</script>
		<sec:authorize access="isAnonymous()">
			<script>menuItem('login.html',null,'icon-arrow-right','<spring:message code="menu.login"/>')</script> 
			<script>menuItem('register.html',null,'icon-pencil','<spring:message code="menu.register"/>')</script>
		</sec:authorize>
		<sec:authorize access="hasRole('admin')">
			<script>menuItem('users.html','edit-user.html','icon-list','<spring:message code="menu.user.list"/>')</script>
		</sec:authorize>
		<sec:authorize access="hasAnyRole('user','admin')">
			<script>menuItem1('deptors.html','edit-dept.html','add-dept.html','icon-briefcase','<spring:message code="menu.dept.list"/>')</script>
		</sec:authorize>
		</ul>

	</div>
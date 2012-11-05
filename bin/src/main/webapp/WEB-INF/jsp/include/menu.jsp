<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="well sidebar-nav">
		<ul class="nav nav-list">
			<li class="${indexActive }"> 
				<a href="index.html">
				<i class="icon-home${indexIconWhite }"></i>
				Главная</a>
			</li>
			<li class="${loginActive }"> 
				<a href="login.html">
				<i class="icon-arrow-right${loginIconWhite }"></i>
				Войти</a>
			</li>
			<li class="${registerActive }"> 
				<a href="register.html">
				<i class="icon-pencil${registerIconWhite }"></i>
				Зарегистрироваться</a>
			</li>
		</ul>
	</div>
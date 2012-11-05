<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar"%>
    <%
    Calendar calendar = Calendar.getInstance(); 
    %>
		<p>
							Доступен гостевой аккаунт:<br> Осталось: 
							<%=(24 - calendar.get(calendar.HOUR_OF_DAY))%>
							Часов,
							<%=(60 - calendar.get(calendar.MINUTE))%>
							Минут<br> <span class="label label-info">login:
								guest</span> <span class="label label-info">password: guest</span>
								
						</p>
						<p>
						<%
							response.setHeader("Refresh","3");
						%>
						</p>
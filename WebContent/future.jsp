<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.shxt.hotelDish.entity.Employee" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>敬请期待</title>
</head>
<style>
	.future{
		background: url(images/future.jpg)fixed no-repeat;
		height: 700px;
	}
</style>
<body>
	<%
	Employee emp = session.getAttribute("EMPLOYEE") == null ? null : (Employee) session.getAttribute("EMPLOYEE");
	if(emp == null){
		response.sendRedirect("login.jsp");
	}
	%>

	<div class="future">
		<div style="height: 400px;"></div>
		<center><font size="7px" color="ghostwhite" face="楷体">新的系统功能还在开发中    敬请期待...</font></center>		
	</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.shxt.hotelDish.service.impl.HotelDishServiceEmployeeImpl" %>
<%@ page import="com.shxt.hotelDish.entity.Employee" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<title>查看个人资料</title>
	<link rel="stylesheet" href="../css/reset.css" />
	<link rel="stylesheet" href="../css/content.css" />
</head>

<%
	HotelDishServiceEmployeeImpl hotelservice = new HotelDishServiceEmployeeImpl();
	Employee emp = hotelservice.queryEmployeeDataById(request);
%>

<body marginwidth="0" marginheight="0">
	<div class="container">
		<div class="public-nav">您当前的位置：<a href="">员工管理</a>><a href="">员工信息操作</a></div>
		<div class="public-content">
			<div class="public-content-header">
				<h3 style="display: inline-block;">员工信息管理</h3>
			</div>
			<div class="clearfix"></div>
			<div class="public-content-cont two-col" align="center">
				
				<table class="public-cont-table col-2">
					<tr>
						
						<th style="width:8%">编号</th>
						<th style="width:8%">姓名</th>
						<th style="width:7%">性别</th>
						<th style="width:7%">民族</th>
						<th style="width:7%">岗位</th>
						<th style="width:18%">身份证</th>
						<th style="width:18%">联系电话</th>						
					</tr>
					<tr>
						<td><%= emp.getId() %></td>
						<td><%= emp.getName() %></td>						
						<td><%= emp.getSex() %></td>
						<td><%= emp.getNation() %></td>
						<td><%= emp.getPost() %></td>
						<td><%= emp.getId_card() %></td>
						<td><%= emp.getTel() %></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
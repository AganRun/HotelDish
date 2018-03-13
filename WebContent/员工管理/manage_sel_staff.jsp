<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.shxt.hotelDish.service.impl.HotelDishServiceEmployeeImpl" %>
<%@ page import="com.shxt.hotelDish.entity.Employee" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>后台欢迎页</title>
	<link rel="stylesheet" href="../css/reset.css" />
	<link rel="stylesheet" href="../css/content.css" />
</head>

<%
	HotelDishServiceEmployeeImpl hotelservice = new HotelDishServiceEmployeeImpl();
	List<Employee> list = hotelservice.sel_employee();
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
						
						<th style="width:10%">编号</th>
						<th style="width:10%">姓名</th>
						<th style="width:7%">性别</th>
						<th style="width:7%">民族</th>
						<th style="width:7%">岗位</th>
						<th style="width:15%">身份证</th>
						<th style="width:15%">联系电话</th>						
						<th style="width:15%">操作</th>
					</tr>
				<%
					for(int i=0;i<list.size();i++){
				%>
					
					<tr>
						<td><%= list.get(i).getId() %></td>
						<td><%= list.get(i).getName() %></td>						
						<td><%= list.get(i).getSex() %></td>
						<td><%= list.get(i).getNation() %></td>
						<td><%= list.get(i).getPost() %></td>
						<td><%= list.get(i).getId_card() %></td>
						<td><%= list.get(i).getTel() %></td>
						<td>
							<div class="table-fun">
								<a href="manage_update.jsp?emp_id=<%= list.get(i).getId() %>">修改</a>
								<a href="manage_delete.jsp?id=<%= list.get(i).getId() %>">删除</a>
							</div>
						</td>
					</tr>
				<% } %>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
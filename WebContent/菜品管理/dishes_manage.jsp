<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.shxt.hotelDish.service.impl.HotelDishServiceImplAll" %>
<%@ page import="com.shxt.hotelDish.entity.Dishes" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>菜品管理</title>
	<link rel="stylesheet" href="../css/reset.css" />
	<link rel="stylesheet" href="../css/content.css" />
</head>

<body marginwidth="0" marginheight="0">
	<div class="container" align="center">
		<div class="public-nav">您当前的位置：<a href="">菜单管理</a>><a href="">菜品操作</a></div>
		<div class="public-content">
			<div class="public-content-header">
				<h3>菜品大全</h3>
			</div>
			
			<div class="public-content-cont">
			
				<table class="public-cont-table">
					<tr>
						<th style="width:10%">编号</th>
						<th style="width:18%">名称</th>
						<th style="width:13%">图片</th>
						<th style="width:10%">价格</th>
						<th style="width:10%">种类</th>
						<th style="width:10%">剩余数量</th>
						<th style="width:15%">操作</th>
					</tr>
		<%
			HotelDishServiceImplAll hotelservice = new HotelDishServiceImplAll();
			List<Dishes> list=hotelservice.selDishes();
			for(int i=0;i<list.size();i++){
		%>	
					<tr>
						<td><%= list.get(i).getId() %></td>
						<td><%= list.get(i).getName() %></td>
						<td ><a href="../<%=list.get(i).getImg() %>"><img src="../<%=list.get(i).getImg() %>" width="130px" ></a></td>
						<td><%= list.get(i).getPrice() %></td>						
						<td><%= list.get(i).getType() %></td>
						<td><%= list.get(i).getLeftNum() %></td>
						<td>
							<div class="table-fun">
								<a href="dishes_update.jsp?id=<%= list.get(i).getId() %>">修改</a>
								<a href="do_dishes_delete.jsp?id=<%= list.get(i).getId() %>">删除</a>
							</div>
						</td>
					</tr>
		<%
			}
		%>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
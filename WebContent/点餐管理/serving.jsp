<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.shxt.hotelDish.entity.OrderList" %>
<%@ page import="com.shxt.hotelDish.service.impl.HotelDishServiceDealImpl" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>已经上菜</title>
	<link rel="stylesheet" href="../css/reset.css" />
	<link rel="stylesheet" href="../css/content.css" />
</head>
<%
	HotelDishServiceDealImpl hotelservice = new HotelDishServiceDealImpl();
	List<OrderList> list = hotelservice.sel_cookedList();
%>
<body marginwidth="0" marginheight="0">
	<div class="container">
		<div class="public-nav">您当前的位置：<a href="">点餐管理</a>><a href="">已上餐</a></div>
		<div class="public-content">
			<div class="public-content-header">
				<h3>已经上餐菜品</h3>
			</div>
			<div class="public-content-cont two-col" align="center">
				
				<table class="public-cont-table">
					<tr>
						<th style="width:8%">订单号</th>
						<th style="width:7%">桌号</th>
						<th style="width:8%">菜品号</th>
						<th style="width:13%">名称</th>
						<th style="width:8%">种类</th>
						<th style="width:8%">数量</th>
						<th style="width:8%">剩余数量</th>
						<th style="width:8%">总价格</th>
						<th style="width:15%">操作</th>
					</tr>
				<%
					for(int i=0;i<list.size();i++){
						if(list.get(i).getDish_id()==0){
							continue;
						}
				%>	
					
					<tr>
						<td><%= list.get(i).getId() %></td>
						<td><%= list.get(i).getTable_no() %></td>
						<td><%= list.get(i).getDish_id() %></td>
						<td><%= list.get(i).getName() %></td>
						<td><%= list.get(i).getType() %></td>
						<td><%= list.get(i).getNum() %></td>
						<td><%= list.get(i).getLeftNum() %></td>
						<td><%= list.get(i).getPriceNum() %></td>	
						<td>
							<div class="table-fun">
								<a href="do_serving.jsp?table_no=<%= list.get(i).getTable_no() %>">结账</a>
								<a href="do_serving_delete.jsp?id=<%= list.get(i).getId() %>">删除</a>
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
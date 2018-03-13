<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@	page import="com.shxt.hotelDish.entity.OrderList" %>
<%@ page import="com.shxt.hotelDish.service.impl.HotelDishServiceImplAll" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>未处理订单</title>
	<link rel="stylesheet" href="../css/reset.css" />
	<link rel="stylesheet" href="../css/content.css" />
</head>
<%
	HotelDishServiceImplAll hotelservice = new HotelDishServiceImplAll();
	List<OrderList> orderlist = hotelservice.do_dishes_sel_orderlist();
%>
<body marginwidth="0" marginheight="0">
	<div class="container">
		<div class="public-nav">您当前的位置：<a href="">点餐管理</a>><a href="">未处理订单</a></div>
		<div class="public-content">
			<div class="public-content-header">
				<h3>未处理订单</h3>
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
					for(int i=0;i<orderlist.size();i++){
						if(orderlist.get(i).getDish_id()==0){
							continue;
						}
				%>	
					
					<tr>
						<td><%= orderlist.get(i).getId() %></td>
						<td><%= orderlist.get(i).getTable_no() %></td>
						<td><%= orderlist.get(i).getDish_id() %></td>
						<td><%= orderlist.get(i).getName() %></td>
						<td><%= orderlist.get(i).getType() %></td>
						<td><%= orderlist.get(i).getNum() %></td>
						<td><%= orderlist.get(i).getLeftNum() %></td>
						<td><%= orderlist.get(i).getPriceNum() %></td>	
						<td>
							<div class="table-fun">
								<a href="do_orderNotCook.jsp?id=<%= orderlist.get(i).getId() %>">上菜</a>
								<a href="do_orderNotCook_delete.jsp?id=<%= orderlist.get(i).getId() %>">删除</a>
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
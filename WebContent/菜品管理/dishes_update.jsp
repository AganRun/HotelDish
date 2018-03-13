<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.shxt.hotelDish.service.impl.HotelDishServiceDealImpl" %>
<%@ page import="com.shxt.hotelDish.entity.Dishes" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>修改菜品信息</title>
	<link rel="stylesheet" href="../css/reset.css" />
	<link rel="stylesheet" href="../css/content.css" />
</head>

<%
	HotelDishServiceDealImpl hotelservice = new HotelDishServiceDealImpl();
	Dishes dishes = hotelservice.dishes_queryById(request);
%>


<body marginwidth="0" marginheight="0">
	<div class="container">
		<div class="public-nav">您当前的位置：<a href="">菜品管理</a>><a href="">菜品信息操作</a></div>
		<div class="public-content">
			<div class="public-content-header">
				<h3 style="display: inline-block;">菜品信息更新</h3>
			</div>
			<div class="public-content-cont">
			<form action="do_dishes_update.jsp" method="post">
				<div class="form-group">
					<label for="">编号</label>
					<input class="form-input-txt" type="text"  value="<%= dishes.getId() %>" disabled/>
					<input type="hidden" name="id" value="<%= dishes.getId()%>">
				</div>
				<div class="form-group">
					<label for="">名称</label>
					<input class="form-input-txt" type="text" name="name" value="<%= dishes.getName() %>" />
				</div>
				<div class="form-group">
					<label for="">价格</label>
					<input class="form-input-txt" type="text" name="price" value="<%= dishes.getPrice() %>" />
				</div>
				<div class="form-group">
					<label for="">种类</label>
					<input class="form-input-txt" type="text" name="type" value="<%= dishes.getType() %>" />
				</div>
				<div class="form-group">
					<label for="">剩余数量</label>
					<input class="form-input-txt" type="text" name="leftNum" value="<%= dishes.getLeftNum() %>" />
				</div>
				<div class="form-group" style="margin-left:150px;">
					<input type="submit" class="sub-btn" value="提  交" />
					<input type="reset" class="sub-btn" value="重  置" />
				</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
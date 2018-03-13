<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.shxt.hotelDish.service.impl.HotelDishServiceEmployeeImpl" %>
<%@ page import="com.shxt.hotelDish.entity.Employee" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<title>修改个人资料</title>
	<link rel="stylesheet" href="../css/reset.css" />
	<link rel="stylesheet" href="../css/content.css" />
</head>

<%
	HotelDishServiceEmployeeImpl hotelservice = new HotelDishServiceEmployeeImpl();
	Employee emp = hotelservice.queryEmployeeDataById(request);
%>

<body marginwidth="0" marginheight="0">
	<div class="container">
		<div class="public-nav">您当前的位置：<a href="">管理首页</a>></div>
		<div class="public-content" >
			<div class="public-content-header">
				<h3>个人信息修改</h3>
			</div>
			<div class="public-content-cont">
			<form action="do_update.jsp" method="post">
				<div class="form-group">
					<label for="">账号</label>
					<input class="form-input-txt" type="text"  value="<%= emp.getId() %>" disabled/>
					<input type="hidden" name="id" value="<%= emp.getId()%>">
				</div>
				<div class="form-group">
					<label for="">姓名</label>
					<input class="form-input-txt" type="text" name="name" value="<%= emp.getName() %>" />
				</div>
				<div class="form-group">
					<label for="">岗位</label>
					<input class="form-input-txt" type="text" name="post" value="<%= emp.getPost() %>" disabled/>
				</div>
				<div class="form-group">
					<label for="">性别</label>
					<input class="form-input-txt" type="text" name="sex" value="<%= emp.getSex() %>" />
				</div>
				<div class="form-group">
					<label for="">民族</label>
					<input class="form-input-txt" type="text" name="nation" value="<%= emp.getNation() %>" />
				</div>
				<div class="form-group">
					<label for="">身份证</label>
					<input class="form-input-txt" type="text" name="id_card" value="<%= emp.getId_card() %>" />
				</div>
				<div class="form-group">
					<label for="">联系电话</label>
					<input class="form-input-txt" type="text" name="tel" value="<%= emp.getTel() %>" />
				</div>
				<div class="form-group" style="margin-left:150px;">
					<input type="submit" class="sub-btn" value="提  交" />
					<input type="reset" class="sub-btn" value="重  置" />
				</div>
				</form>
			</div>
		</div>
	</div>
<script src="../kingediter/kindeditor-all-min.js"></script>
<script>
	 KindEditor.ready(function(K) {
                window.editor = K.create('#editor_id');
        });
</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.shxt.hotelDish.service.impl.HotelDishServiceEmployeeImpl" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加员工页面</title>
</head>
<body>
<%
	HotelDishServiceEmployeeImpl hotelservice = new HotelDishServiceEmployeeImpl();
	if(hotelservice.add_employee(request)){
		out.print("<font size='6' color='orchid' face='楷体'>添加员工成功</font>");
	}else{
		out.print("<font size='6' color='orchid' face='楷体'>添加员工失败</font>");
	}
%>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.shxt.hotelDish.service.impl.HotelDishServiceEmployeeImpl" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改个人资料</title>
</head>

<%
	HotelDishServiceEmployeeImpl hotelservice = new HotelDishServiceEmployeeImpl();
	if(hotelservice.updateEmployeeDate(request)){
		out.print("信息更新成功");
	}else{
		out.print("信息更新失败");
	}
%>


<body>

</body>
</html>
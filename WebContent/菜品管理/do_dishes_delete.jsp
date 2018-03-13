<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.shxt.hotelDish.service.impl.HotelDishServiceDealImpl" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>菜品更新</title>
</head>
<body>

<%
	HotelDishServiceDealImpl hotelservice = new HotelDishServiceDealImpl();
	if(hotelservice.dishes_delete(request)){
		response.sendRedirect("dishes_manage.jsp");
	}else{
		out.print("<font size='6' color='orchid' face='楷体'>删除菜品失败</font>");
	}
%>
</body>
</html>
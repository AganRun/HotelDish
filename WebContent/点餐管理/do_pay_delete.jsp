<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.shxt.hotelDish.service.impl.HotelDishServiceDealImpl" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除已结账订单</title>
</head>
<body>

<%
	HotelDishServiceDealImpl hotelservice = new HotelDishServiceDealImpl();
	if(hotelservice.orderlistDeleteById(request)){
		response.sendRedirect("pay.jsp");
	}else{
		out.print("删除失败");
	}
%>
</body>
</html>
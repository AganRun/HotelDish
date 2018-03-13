<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.shxt.hotelDish.service.impl.HotelDishServiceDealImpl" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>做菜处理</title>
</head>
<body>
	
	<%
		HotelDishServiceDealImpl hotelservice = new HotelDishServiceDealImpl();
		if(hotelservice.cookDishes(request)){
			
			response.sendRedirect("orderNotCook.jsp");
		}else{
			out.print("操作失败");
		}
	%>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.shxt.hotelDish.service.impl.HotelDishServiceEmployeeImpl" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除员工</title>
</head>
<body>

<% 
	HotelDishServiceEmployeeImpl hotelservice = new HotelDishServiceEmployeeImpl();
	if(hotelservice.manage_delete(request)){
		response.sendRedirect("manage_sel_staff.jsp");
	}else{
		out.print("<font size='6' color='orchid' face='楷体'>删除员工失败</font>");
	}
%>

</body>
</html>
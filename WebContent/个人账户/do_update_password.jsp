<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.shxt.hotelDish.service.impl.HotelDishServiceEmployeeImpl" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>更改密码页面</title>
</head>
<body>

<%
	HotelDishServiceEmployeeImpl hotelservice = new HotelDishServiceEmployeeImpl();
	if(hotelservice.do_Update_Password_Check_Oldpassword(request)){
		if(hotelservice.do_update_password_same(request)){
			response.sendRedirect("success.jsp");
		}else{
			request.setAttribute("NOTSAME","notSame");
			request.getRequestDispatcher("passwordError.jsp").forward(request, response);
		}
	}else{
		request.setAttribute("IMSSAGE","notRight");
		request.getRequestDispatcher("passwordError.jsp").forward(request, response);
	}
%>

</body>
</html>
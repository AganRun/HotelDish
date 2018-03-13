<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.shxt.hotelDish.service.impl.HotelDishServiceImplHot" %>
<%@ page import="com.shxt.hotelDish.entity.OrderList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>热菜点餐处理</title>
</head>
<body>
	<% 
		HotelDishServiceImplHot hotelservice=new HotelDishServiceImplHot();
		if(hotelservice.do_dishes_check_table_number(request)){
			List<OrderList> list=hotelservice.do_dishes_getdata(request);
			if(hotelservice.do_dishes_setdata(list)){
				out.print("点餐成功,已加入未处理订单");
			}else{
				out.print("点餐失败,请检查是否选择桌号");
			}
		}else{
			out.print("点餐失败,请检查是否选择桌号");
		}
		
		
	%>

</body>
</html>
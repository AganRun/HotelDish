<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.shxt.hotelDish.entity.Employee" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>敬请期待</title>
</head>
<style>
	.history{
		background: url(images/酒店室内.jpeg)fixed ;
		width: 100%;
		height: 100%;
	}
</style>
<body>
	<%
	Employee emp = session.getAttribute("EMPLOYEE") == null ? null : (Employee) session.getAttribute("EMPLOYEE");
	if(emp == null){
		response.sendRedirect("login.jsp");
	}
	%>

	<div class="history">
		<div style="height: 400px;"></div>
		<div class="history">
			
			<div style="height: 400px;"></div>
			
			<center>
				<font size="5px" color="blueviolet" face="楷体">万豪国际集团是全球首屈一指的酒店管理公司<br /><br /><br>旗下拥有 4,200 家酒店、19 个酒店品牌<br>以及在全球各地的 4,200 家管理和特许经营酒店任职的众多员工<br><br> 公司由 J. Willard 和 Alice Marriott 创办并在 90 多年来由万豪国际酒店家族领导人掌控大局<br>其总部位于美国马里兰州贝塞斯达<br><br><br></font>
				<font size="7px" color="red" face="仿宋">2015 财年的财报收入近 140 亿美元。</font>
			</center>		
			
			<div style="height: 200px"></div>
		</div><div style="height: 200px"></div>
	</div>

</body>
</html>
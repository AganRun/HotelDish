<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.shxt.hotelDish.service.impl.HotelDishServiceImplSoup" %>
<%@ page import="com.shxt.hotelDish.entity.Dishes" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>汤品总览</title>
	<link rel="stylesheet" href="../css/reset.css" />
	<link rel="stylesheet" href="../css/content.css" />
</head>
<body marginwidth="0" marginheight="0">
	<div class="container" align="center">
		<div class="public-nav">您当前的位置：<a href="">菜单大全</a>><a href="">汤品总览</a></div>
		<div class="public-content">
			<div class="public-content-header">
				<h3>汤品大全</h3>
			</div>
			
			<form action="do_dishes_all.jsp"  method="post">
			
			<%if(!request.getParameter("post").equals("厨师")){ %>
				<select name="table_no" class="form-control">
						<option value="0">请选择桌号</option>
						<% 
							for(int i=1;i<31;i++){
						%>
							<option value="<%= i %>"><%= i %></option>
						<%
							}
						%>
			</select><br />
			<% }%>
			
			<div class="public-content-cont">
			
				<table class="public-cont-table">
					<tr>
						<th style="width:10%">编号</th>
						<th style="width:18%">名称</th>
						<th style="width:13%">图片</th>
						<th style="width:10%">价格</th>
						<th style="width:10%">种类</th>
						<th style="width:10%">剩余数量</th>
						<% if(!request.getParameter("post").equals("厨师")){
							
							out.print("<th style='width:15%'>点餐数量</th>");
							} 
						%>
					</tr>
		<%
			HotelDishServiceImplSoup hotelservice = new HotelDishServiceImplSoup();
			List<Dishes> list=hotelservice.selDishes();
			for(int i=0;i<list.size();i++){
		%>	
					<tr>
						<td><%= list.get(i).getId() %></td>
						<td><%= list.get(i).getName() %></td>
						<td ><a href="../<%=list.get(i).getImg() %>"><img src="../<%=list.get(i).getImg() %>" width="130px" ></a></td>
						<td><%= list.get(i).getPrice() %></td>						
						<td><%= list.get(i).getType() %></td>
						<td><%= list.get(i).getLeftNum() %></td>
						<%	 if(!request.getParameter("post").equals("厨师")){	%>
							<td><span id="sub<%=i%>" onclick="sub<%=i%>();"><button type="button">-</button></span>
							<input type="text" id="number+<%=i%>" name="number"  value="0" style="width: 30px"/>
								<span id="add<%=i%>" onclick="add<%=i%>();"><button type="button">+</button></span>
								
								<input type="hidden" name="dishes_id" value="<%= list.get(i).getId() %>">
								<input type="hidden" name="list_size" value="<%= list.size() %>">
							</td>
						<%	}	%>
					</tr>
					<script>
						function add<%=i%>()
						{
						   var num = parseInt(document.getElementById("number+<%=i%>").value);
						   if(num<100)
						   {
						      document.getElementById("number+<%=i%>").value = ++num;
						   }
						}
						function sub<%=i%>()
						{
						   var num = parseInt(document.getElementById("number+<%=i%>").value);
						   if(num>0)
						   {
						      document.getElementById("number+<%=i%>").value = --num;
						   }
						}
					</script>
		<%
			}
		%>
				</table>
				
				<%if(!request.getParameter("post").equals("厨师")){ %>
				<div class="form-group" >
					<input type="submit" class="sub-btn" value="提  交" />&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset" class="sub-btn" value="重  置" />
				</div>
				<% }%>
				</form>
		</div>
	</div>
</body>
</html>
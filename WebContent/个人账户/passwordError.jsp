<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码错误</title>
</head>
<body>
	<div style="margin-left:200px;margin-top:100px;">
		<%
			String notsame=request.getAttribute("NOTSAME")==null? "" : "新密码密码输入不相同";
			String notRight=request.getAttribute("IMSSAGE")==null ? "" : "旧密码输入不正确";
			if(!"".equals(notsame)){
				out.print("<font color='red'>"+notsame+"</font>");
			}
			if(!"".equals(notRight)){
				out.print("<font color='red'>"+notRight+"</font>");
			}
		%>
	</div>
</body>
</html>
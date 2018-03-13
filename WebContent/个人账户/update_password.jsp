<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>密码修改页</title>
	<link rel="stylesheet" href="../css/reset.css" />
	<link rel="stylesheet" href="../css/content.css" />
</head>


<body marginwidth="0" marginheight="0">
	<div class="container">
		<div class="public-nav">个人账户：<a href="">密码修改</a>></div>
		<div class="public-content" >
			<div class="public-content-header">
				<h3>密码信息修改</h3>
			</div>
			<div class="public-content-cont">
			<form action="do_update_password.jsp" method="post">
				
				<%
					int id=request.getParameter("emp_id")== null ? null : Integer.parseInt(request.getParameter("emp_id"));
				%>
				
				<input type="hidden" name="id" value="<%= id%>"/>
				
				<div class="form-group">
					<label for="">请输入旧密码</label>
					<input class="form-input-txt" type="password" name="oldPassword" value="" />
				</div>
				<div class="form-group">
					<label for="">请输入新密码</label>
					<input class="form-input-txt" type="password" name="newPassword" value="" />
				</div>
				<div class="form-group">
					<label for="">请确认新密码</label>
					<input class="form-input-txt" type="password" name="newPasswordTwo" value="" />
				</div>
				
				<div class="form-group" style="margin-left:170px;">
					<input type="submit" class="sub-btn" value="提  交" />
					<input type="reset" class="sub-btn" value="重  置" />
				</div>
				</form>
			</div>
		</div>
	</div>
<script src="../kingediter/kindeditor-all-min.js"></script>
<script>
	 KindEditor.ready(function(K) {
                window.editor = K.create('#editor_id');
        });
</script>
</body>
</html>
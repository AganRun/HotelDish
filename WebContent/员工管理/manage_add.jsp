<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>增加员工</title>
	<link rel="stylesheet" href="../css/reset.css" />
	<link rel="stylesheet" href="../css/content.css" />
</head>
<body marginwidth="0" marginheight="0">
	<div class="container">
		<div class="public-nav">您当前的位置：<a href="">员工管理</a>></div>
		<div class="public-content" >
			<div class="public-content-header">
				<h3>增加员工页面</h3>
			</div>
			<div class="public-content-cont">
			<form action="do_manage_add.jsp" method="post">
				<div class="form-group">
					<label for="">姓名</label>
					<input class="form-input-txt" type="text" name="name" value="" />
				</div>
				<div class="form-group">
					<label for="">岗位</label>
					<input class="form-input-txt" type="text" name="post" value="" />
				</div>
				<div class="form-group">
					<label for="">性别</label>
					<input class="form-input-txt" type="text" name="sex" value="" />
				</div>
				<div class="form-group">
					<label for="">民族</label>
					<input class="form-input-txt" type="text" name="nation" value="" />
				</div>
				<div class="form-group">
					<label for="">身份证</label>
					<input class="form-input-txt" type="text" name="id_card" value="" />
				</div>
				<div class="form-group">
					<label for="">联系电话</label>
					<input class="form-input-txt" type="text" name="tel" value="" />
				</div>
				<div class="form-group" style="margin-left:150px;">
					<input type="submit" class="sub-btn" value="增  加" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
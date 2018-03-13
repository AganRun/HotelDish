<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>增加菜品</title>
	<link rel="stylesheet" href="../css/reset.css" />
	<link rel="stylesheet" href="../css/content.css" />
</head>
<body marginwidth="0" marginheight="0">
	<div class="container">
		<div class="public-nav">您当前的位置：<a href="">菜品管理</a>></div>
		<div class="public-content" >
			<div class="public-content-header">
				<h3>增加菜品页面</h3>
			</div>
			<div class="public-content-cont">
			<form action="${pageContext.request.contextPath }/servlet.action" method="post">
				<div class="form-group">
					<label for="">菜名</label>
					<input class="form-input-txt" type="text" name="name" value="" />
				</div>
				<div class="form-group">
					<label for="">价格</label>
					<input class="form-input-txt" type="text" name="price" value="" />
				</div>
				<div class="form-group">
					<label for="">种类</label>
					<input class="form-input-txt" type="text" name="type" value="" />
				</div>
				<div class="form-group">
					<label for="">剩余数量</label>
					<input class="form-input-txt" type="text" name="leftNum" value="" />
				</div>
				
					<input type="hidden" name="command" value="dishes_add">
					<input class="form-input-txt" type="hidden" name="table_no" value="" />
				
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
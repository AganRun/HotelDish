·	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<meta name="keywords" content="Flat Dark Web Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />

<link href="css/style.css" rel='stylesheet' type='text/css' />

</head>
<%
	String message=request.getAttribute("MESSAGE")==null? "":request.getAttribute("MESSAGE")+"";
%>

<body>
<script>$(document).ready(function(c) {
	$('.close').on('click', function(c){
		$('.login-form').fadeOut('slow', function(c){
	  		$('.login-form').remove();
		});
	});	  
});
</script>
 <!--SIGN UP-->
 <h1>Welcome to Marrio Hotel</h1>
<div class="login-form">
		<div class="head-info">
			<label class="lbl-1"></label>
			<label class="lbl-2"> </label>
			<label class="lbl-3"> </label>
		</div>
			<div class="clear"> </div>
	<div class="avtar">
		<img src="images/avtar.png" />
	</div>
	
			<form action="servlet.action"  method="post">
			<div>
				<%
					if(!"".equals(message)){
						out.print("<font color='red'>"+message+"</font>");
					}
				%>
			</div>
					<input type="text" name="account" class="text" value="账户" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '账户';}" >
						<div class="key">
					<input type="password" name="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
						</div>
					<input type="hidden" name="command" value="login" />
					
					<div class="signin">
						<input type="submit" value="登录" >
					</div>
			</form>
	
</div>
 <div class="copy-rights">
					<p><a>还没有账户？点我注册</a>Marrio Hotel 2016  <a>账户的密码忘记？找我重置</a></p>
			</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.shxt.hotelDish.entity.Employee" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title></title>
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/public.css">
</head>

<script type="text/javascript">
	function address(){
		var account=document.getElementById("address").value;
		
		if(address=="北京"){
			alert("北京酒店欢迎您");
			return false;
		}
		if(address==""){
			alert("密码不能为空");
			return false;
		}
	}
</script>

<body>
<div class="public-header-warrp">
	<div class="public-header">
		<div class="content">
			<div class="public-header-logo"><a href=""><i>LOGO</i><h3>酒店订餐</h3></a></div>
			<div class="public-header-admin fr">
			
			<%
			Employee emp=session.getAttribute("EMPLOYEE")==null?null:(Employee) session.getAttribute("EMPLOYEE");
			%>
			
				<p class="admin-name"><%=emp==null?"":emp.getName() %> &nbsp;&nbsp;您好！</p>
				<div class="public-header-fun fr">
					<a href="" class="public-header-man">管理</a>
					<a href="login.jsp" class="public-header-loginout">退出</a>	
				</div>
			</div>
		</div>
	</div>
</div>

<div class="clearfix"></div>
<!-- 内容展示 -->
<div class="public-ifame mt20">
	<div class="content">
	<!-- 内容模块头 -->
		<div class="public-ifame-header">
			<ul>
				<li class="ifame-item logo">
					<div class="item-warrp">
						<a href="#"><i>LOGO</i>
							<h3 class="logo-title">Marrio Hotel梦幻之旅</h3>
							<p class="logo-des">创建于 2016/8/27 16:05:47</p>
						</a>
					</div>
				</li>
				
				<%
					Date date=new Date();
				%>
				<li class="ifame-item"><div class="item-warrp"><span>登录时间：<%=date %><br>VIP有效期：</span></div></li>
				<li class="ifame-item"><div class="navbar-form navbar-right">
					<form action="index_waiter.jsp" onsubmit=" return address()" method="post">
						<select name="address" id="address" class="form-control">
						<option value="">请选择所在的城市</option>
						<option value="北京">北京</option>
						<option value="">长沙</option>
						<option value="">佛山</option>
						<option>重庆</option>
						<option>南宁</option>
						<option>上海</option>
						<option>三亚</option>
						<option>深圳</option>
						<option>苏州</option>
						<option>天津</option>
						<option>香港</option>
						<option>郑州</option>
						<input type="submit" value="确定">
						</select><br />
					</form>
						<div class="item-warrp" style="border:none"><span>网站浏览量：15451</span></div>
				</div></li>
				<div class="clearfix"></div>
			</ul>
		</div>
		<div class="clearfix"></div>
		<!-- 左侧导航栏 -->
		<div class="public-ifame-leftnav">
			<div class="public-title-warrp">
				<div class="public-ifame-title ">
					<a href="">首页</a>
				</div>
			</div>
			<ul class="left-nav-list">
				<li class="public-ifame-item">
					<a href="javascript:;">菜单大全</a>
					<div class="ifame-item-sub">
						<ul>
							<li><a href="菜单大全/dishes_all.jsp?post=<%= emp.getPost() %>" target="content">总览</a></li>
							<li><a href="菜单大全/dishes_sign.jsp?post=<%= emp.getPost() %>" target="content">招牌</a></li>
							<li><a href="菜单大全/dishes_hot.jsp?post=<%= emp.getPost() %>" target="content">热菜</a></li>
							<li><a href="菜单大全/dishes_cold.jsp?post=<%= emp.getPost() %>" target="content">凉菜</a></li>
							<li><a href="菜单大全/dishes_sweatmeats.jsp?post=<%= emp.getPost() %>" target="content">甜品</a></li>
							<li><a href="菜单大全/dishes_soup.jsp?post=<%= emp.getPost() %>" target="content">汤品</a></li>
							<li><a href="菜单大全/dishes_staple_food.jsp?post=<%= emp.getPost() %>" target="content">主食</a></li>
							<li><a href="菜单大全/dishes_drink.jsp?post=<%= emp.getPost() %>" target="content">饮品</a></li>
						</ul>
					</div>
				</li>
				<li class="public-ifame-item">
					<a href="javascript:;">点餐管理</a>
					<div class="ifame-item-sub">
						<ul>
							<li><a href="点餐管理/serving.jsp" target="content">已上菜</a></li>
							<li><a href="点餐管理/pay.jsp" target="content">已结账</a></li>
						</ul>
					</div>
				</li>
				<li class="public-ifame-item">
					<a href="javascript:;">个人账户</a>
					<div class="ifame-item-sub">
						<ul>
							<li><a href="个人账户/update.jsp?emp_id=<%=emp==null?"":emp.getId() %>" target="content">修改资料</a></li>
							<li><a href="个人账户/update_password.jsp?emp_id=<%=emp==null?"":emp.getId() %>" target="content">更改密码</a></li>
							<li><a href="个人账户/see.jsp?emp_id=<%=emp==null?"":emp.getId() %>" target="content">查看资料</a></li>
						</ul>
					</div>
				</li>
				<li class="public-ifame-item">
					<a href="javascript:;">酒店介绍</a>
					<div class="ifame-item-sub">
						<ul>
							<li><a href="history.jsp" target="content">历史简介</a></li>
							<li><a href="future.jsp" target="content">国际排名</a></li>
							<li><a href="future.jsp" target="content">世界分布</a></li>
							<li><a href="future.jsp" target="content">旗下品牌</a></li>
							<li><a href="future.jsp" target="content">广告语</a></li>
						</ul>
					</div>
				</li>
				<li class="public-ifame-item">
					<a href="javascript:;">酒店介绍</a>
					<div class="ifame-item-sub">
						<ul>
							<li><a href="future.jsp" target="content">历史简介</a></li>
							<li><a href="future.jsp" target="content">国际排名</a></li>
							<li><a href="future.jsp" target="content">世界分布</a></li>
							<li><a href="future.jsp" target="content">旗下品牌</a></li>
							<li><a href="future.jsp" target="content">广告语</a></li>
						</ul>
					</div>
				</li>
				
				<li class="public-ifame-item">
					<a href="javascript:;">优惠活动</a>
					<div class="ifame-item-sub">
						<ul>
							<li><a href="future.jsp" target="content">满额返现</a></li>
							<li><a href="future.jsp" target="content">节日特价</a></li>
							<li><a href="future.jsp" target="content">会员优惠</a></li>
							<li><a href="future.jsp" target="content">活动中心</a></li>
						</ul>
					</div>
				</li>
				<li class="public-ifame-item">
					<a href="javascript:;">监控管理</a>
					<div class="ifame-item-sub">
						<ul>
							<li><a href="future.jsp" target="content">实时监控</a></li>
							<li><a href="future.jsp" target="content">监控回放</a></li>
						</ul>
					</div>
				</li>
				<li class="public-ifame-item">
					<a href="javascript:;">使用帮助</a>
					<div class="ifame-item-sub">
						<ul>
							<li><a href="future.jsp" target="content">个人信息帮助</a></li>
							<li><a href="future.jsp" target="content">点餐帮助</a></li>
							<li><a href="future.jsp" target="content">结账帮助</a></li>
							<li><a href="future.jsp" target="content">服务帮助</a></li>
						</ul>
					</div>
				</li>
				<li class="public-ifame-item">
					<a href="javascript:;">意见反馈</a>
					<div class="ifame-item-sub">
						<ul>
							<li><a href="future.jsp" target="content">系统使用反馈</a></li>
							<li><a href="future.jsp" target="content">菜品口感反馈</a></li>
							<li><a href="future.jsp" target="content">服务反馈</a></li>
							<li><a href="future.jsp" target="content">个人反馈</a></li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
		<!-- 右侧内容展示部分 -->
		<div class="public-ifame-content">
		<iframe name="content" src="main.html" frameborder="0" id="mainframe" scrolling="yes" marginheight="0" marginwidth="0" width="100%" style="height: 700px;"></iframe>
		</div>
	</div>
</div>
<script src="js/jquery.min.js"></script>
<script>
$().ready(function(){
	var item = $(".public-ifame-item");

	for(var i=0; i < item.length; i++){
		$(item[i]).on('click',function(){
			$(".ifame-item-sub").hide();
			if($(this.lastElementChild).css('display') == 'block'){
				$(this.lastElementChild).hide()
				$(".ifame-item-sub li").removeClass("active");
			}else{
				$(this.lastElementChild).show();
				$(".ifame-item-sub li").on('click',function(){
					$(".ifame-item-sub li").removeClass("active");
					$(this).addClass("active");
				});
			}
		});
	}
});
</script>
</body>
</html>
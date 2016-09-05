<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% 
    //System.out.println("首先执行!");//说明按顺序执行
    String frompage= request.getParameter("frompage");
	if(frompage==null) frompage="";
	String loginerror="none";
	if(request.getAttribute("loginerror")!=null&&request.getAttribute("loginerror").equals("true")) {loginerror="block";request.removeAttribute("loginerror");}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<title>电磁数据管理平台</title>
	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="robots" content="">
	<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0">
	<link rel="stylesheet" href="css/style.css" media="all">
	<link rel="stylesheet" href="css/webUIs.css" media="all">
	<!--[if IE]><link rel="stylesheet" href="css/ie.css" media="all" /><![endif]-->
	<script src="js/jquery-1.11.1.min.js"></script>
</head>
<body style="background-color: #3B3E40;" >
<div class="login">
		
	<section >
	<h1><strong>电磁数据</strong>管理平台</h1>
	<div class="wrapper" style="display: inline-block;float: left;"><!-- 最外层部分 -->
        <div class="banner"><!-- 轮播部分 -->
            <ul class="imgList"><!-- 图片部分 -->
                <li class="imgOn"><a href="#"><img src="image/hfss_button.png" width="300px" height="300px" alt=""></a></li>
            <li><a href="#"><img src="image/CST_button.png" width="300px" height="300px" alt=""></a></li>
            <li><a href="#"><img src="image/FEKO_button.png" width="300px" height="300px" alt=""></a></li>
            <li><a href="#"><img src="image/shutdown.png" width="300px" height="300px" alt=""></a></li>
            <li><a href="#"><img src="image/cancel.jpg" width="300px" height="300px" alt=""></a></li>
            </ul>
            <div class="bg"></div> <!-- 图片底部背景层部分-->
            <ul class="infoList"><!-- 图片左下角文字信息部分 -->
                <li class="infoOn"></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
            <ul class="indexList"><!-- 图片右下角序号部分 -->
                <li class="indexOn"></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </div>
	</div>
	<div style="float: right;display: inline;margin-top:80px">
		
		<form name="user_info" method="post" action="AuthorVerify?frompage=<%=frompage%>">
			<input type="text" name="username" value="账号">
			<input name="password" value="password" type="password">
			<p style="display:inline;float:left"><a href="#" onclick="modelWindowShow()">忘记密码?</a></p>
			<p style="display:inline;float:right"><a href="login_back.jsp">Right @SEU</a></p>
			<button type="submit" class="blue">登录</button>
		</form>
		<label id="loginerror" style="font-size:12px;color:red;display:<%=loginerror %>">用户名或者密码错误	</label>

	</div>
	</section>
</div>
<div id="PageCover" style="width: 100%; left: 0px; top: 0px; height: 100%; position: fixed; -webkit-user-select: none; z-index: 99999;background: tan;filter: alpha(Opacity=80);-moz-opacity: 0.5;opacity: 0.5;display:none">
</div>
<div id="ks-component702" role="dialog" aria-labelledby="ks-stdmod-header-ks-component702" style="width: 450px; height: 360px;  left: 40%; top:30%;position: absolute;z-index: 99999;display:none;" aria-hidden="false">
	<section class="widget" style="min-height:300px;height:300px">
		<header>
			<span class="icon">&#9888;</span>
			<hgroup>
				<h1>系统提示</h1>
				<h2>系统运到一些需要您了解的事情</h2>
			</hgroup>
			<aside>
				<span onclick="modelWindowClose()">
					<a href="#">&#10006;</a>
				</span>
			</aside>
		</header>
		<div class="content">
			暂未开放！
		</div>
	</section>
</div>
<script src="js/timerFunction.js"></script>
<script src="js/login.js"></script>
</body>
</html>
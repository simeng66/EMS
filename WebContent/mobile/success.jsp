<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
<%@ taglib prefix="s" uri="/struts-tags"%>  
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title></title>
		<link href="css/mui.min.css" rel="stylesheet" />

		<style>
			ul {
				font-size: 14px;
				color: #8f8f94;
			}
			.mui-btn {
				padding: 10px;
			}
		</style>
	</head>

	<body>
		<header class="mui-bar mui-bar-nav" style="padding-right: 15px;">
			<h1 class="mui-title">缴费成功</h1>
			<button id='setting' class=" mui-pull-right mui-btn-link"></button>
		</header>
		<div class="mui-content">
			<div class="mui-content-padded">
				<p>
					您好 <span id='account'></span>，您已成功缴费。
					<ul>
						<li>缴费金额可能会几分钟后到账，请耐心等待。</li>						
					</ul>
				</p>
				<!--<button  class="mui-btn mui-btn-block mui-btn-primary">设置</button>-->
				<!--
				<button id='exit' class="mui-btn mui-btn-block mui-btn-green">关闭</button>
                <button id='logout' class="mui-btn mui-btn-red mui-btn-block">注销登录</button>
                -->
			</div>
		</div>
		
	</body>

</html>
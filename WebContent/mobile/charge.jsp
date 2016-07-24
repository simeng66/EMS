<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=utf-8"%>  
<%@ taglib prefix="s" uri="/struts-tags"%>  
<!DOCTYPE html>
<html class="ui-page-login">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title></title>
		<link href="css/mui.min.css" rel="stylesheet" />
		<link href="css/style.css" rel="stylesheet" />
		<style>
			.area {
				margin: 20px auto 0px auto;
			}
			.mui-input-group:first-child {
				margin-top: 20px;
			}
			.mui-input-group label {
				width: 22%;
			}
			.mui-input-row label~input,
			.mui-input-row label~select,
			.mui-input-row label~textarea {
				width: 78%;
			}
			.mui-checkbox input[type=checkbox],
			.mui-radio input[type=radio] {
				top: 6px;
			}
			.mui-content-padded {
				margin-top: 25px;
			}
			.mui-btn {
				padding: 10px;
			}
			
		</style>
	</head>

	<body>
		<header class="mui-bar mui-bar-nav">
			<h1 class="mui-title">查询缴费</h1>
		</header>
		<div class="mui-content">
			<form class="mui-input-group" action="mobileFindSushe.action">
				<div class="mui-input-row">
					<label>房间号</label>
					<s:textfield name="sushe.fangjianhao" id='account' type="text" class="mui-input-clear mui-input" placeholder="请输入房间号"></s:textfield>
				</div>			
	            <div class="mui-button-row">
							<button id='login' class="mui-btn mui-btn-block mui-btn-primary" onclick="this.form.submit()">提交</button>
						</div></form>
	             </br></br>			
		</div>
	</body>

</html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="/WEB-INF/error.jsp"%> 
<%@ taglib prefix="s" uri="/struts-tags"%>  
<!DOCTYPE html>
<html class="ui-page-login">
	<head>
		<meta charset="utf-8"/>
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
				width: 30%;
			}
			.mui-input-row label~input,
			.mui-input-row label~select,
			.mui-input-row label~textarea {
				width: 70%;
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
			<h1 class="mui-title">查询结果</h1>
		</header>
		<div class="mui-content">
			<form class="mui-input-group" action="jiaofei.action">
				<div class="mui-input-row">
					<label>房  间  号</label>
					<label style="float:right;" ><s:property value="%{sushe.fangjianhao}"/></label> 
				</div>
				<div class="mui-input-row">
					<label>剩余电量</label>
					<label style="float:right;"><s:property value="%{sushe.yongdian}"/>&nbsp;kwh</label>  
<!-- 					<input id='password' type="password" class="mui-input-clear mui-input" value="%{sushe.yongdianliang}"> -->
				</div>
				<div class="mui-input-row">
					<label>总用电量</label>
					<label style="float:right;"><s:property value="%{sushe.lishiyongdian}"/>&nbsp;kwh</label>
<!-- 					<input id='password_confirm' type="password" class="mui-input-clear mui-input" value="%{sushe.lishiyongdian}"> -->
				</div>
				
				<div class="mui-input-row">
					<label>余       额</label>
					<label style="float:right;"><s:property value="%{sushe.dmoney}"/>&nbsp;元</label> 
<!-- 					<input id='email' type="email" class="mui-input-clear mui-input" value="%{sushe.dmoney}"> -->
				</div>
			<br><br><br>
				<s:hidden name="sushe.fangjianhao" value="%{sushe.fangjianhao}"></s:hidden>  
				<div class="mui-input-row">
					<label>缴费金额</label>
					<input name="sushe.dmoney" id='account' type="text" class="mui-input-clear mui-input" placeholder="&nbsp;&nbsp;请输入需要缴费的金额(单位/元)">
				</div>
				<button id='login' class="mui-btn mui-btn-block mui-btn-primary" onclick="this.form.submit()">立即缴费</button></br>
			</form>
			<br>          											
	</body>

</html>
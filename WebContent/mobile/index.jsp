<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=utf-8"%>  
<%@ taglib prefix="s" uri="/struts-tags"%>  
<!DOCTYPE html>
<html lang="en" class="no-js">
    <head>
        <meta charset="utf-8">
        <title></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel="stylesheet" href="assets/css/reset.css">
        <link rel="stylesheet" href="assets/css/supersized.css">
        <link rel="stylesheet" href="assets/css/style.css">

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

    </head>

    <body style="background-color:#6495ed;">

        <div class="page-container">
            <h1 style="font-family:幼圆">寝室用电系统</h1>
            <form action="charge.jsp" method="post">
                <input type="text" name="s.loginName" class="username" placeholder="用户名">
                <input type="password" name="s.loginPw" class="password" placeholder="密码">
                <button type="submit">提交</button>
                <div class="error"><span>+</span></div>
            </form>
            <div class="connect">
                <p>忘记密码</p>
                <p>
<!--                     <a class="facebook" href=""></a> -->
<!--                     <a class="twitter" href=""></a> -->
                </p>
            </div>
        </div>
    </body>

</html>



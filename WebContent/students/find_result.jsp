<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<meta http-equiv="content-type" content="text/html;charset=UTF-8">
	<link rel="stylesheet" href="/EMS/css/default.css" />
	<script type="text/javascript">  
	        function del(){  
	            if(confirm("你确定要删除这个学生的信息？")){  
	                return true;  
	            }  
	            return false;  
	        }  
	</script>
<style type="text/css">
* {
    background: none repeat scroll 0 0 transparent;
    border: 1;
    margin: 0;
    padding: 0;
    vertical-align: baseline;
	font-family:微软雅黑;
	overflow:hidden;
}
#navi{
	width:100%;
	position:relative;
	word-wrap:break-word;
	border-bottom:1px solid #065FB9;
	margin:0;
	padding:0;
	height:40px;
	line-height:40px;
	vertical-align:middle;
    background-image: -moz-linear-gradient(top,#EBEBEB, #BFBFBF);
    background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #EBEBEB),color-stop(1, 
#BFBFBF));
}
#naviDiv{
	font-size:14px;
	color:#333;
	padding-left:10px;
}
#tips{
	margin-top:10px;
	width:100%;
	height:40px;
}
#buttonGroup{
	padding-left:10px;
	float:left;
	height:35px;
}
.button{
	float:left;
	margin-right:10px;
	padding-left:10px;
	padding-right:10px;
	font-size:14px;
	width:70px;
	height:30px;
	line-height:30px;
	vertical-align:middle;
	text-align:center;
	cursor:pointer;
    border-color: #77D1F6;
    border-width: 1px;
    border-style: solid;
    border-radius: 6px 6px;
    -moz-box-shadow: 2px 2px 4px #282828;
    -webkit-box-shadow: 2px 2px 4px #282828;
    background-image: -moz-linear-gradient(top,#EBEBEB, #BFBFBF);
    background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #EBEBEB),color-stop(1, #BFBFBF));
}
#mainContainer{
	padding-left:10px;
	padding-right:10px;
	text-align:center;
	width:98%;
	font-size:12px;
}
</style>
<body>
<div id="navi">
	<div id='naviDiv'>
		<span><img src="../images/arror.gif" width="7" height="11" border="0" alt=""></span>&nbsp;宿舍管理
	</div>
</div>
<div id="tips">

</div>	
<div id="mainContainer">
	<table class="default" border="1" width="100%">
	    	<col width="10%">
			<col width="10%">
			<col width="10%">
			<col width="13%">
			<col width="14%">
			<col width="10%">
			<col width="13%">
			<col width="10%">
			<col width="10%">
	        <tr class="title">  
	            <td>学号</td>  
	            <td>姓名</td>  
	            <td>卡号</td>
	            <td>登录名</td>
	            <td>登录密码</td>  
	            <td>余额</td>
	            <td>寝室号</td>   
	            <td>删除</td>  
	            <td>更新</td> 
	        </tr>  	          
	            <tr>  
	                <td>  
	                    <s:property value="%{stu.stuXuehao}"/>  
	                </td>  
	                <td>   
	                    <s:property value="%{stu.stuRealname}"/>  
	                </td>  
	                <td>  
	                    <s:property value="%{stu.stuCard}"/>  
	                </td>
	                <td>  
	                    <s:property value="%{stu.loginName}"/>  
	                </td>
	                <td>  
	                    <s:property value="%{stu.loginPw}"/>  
	                </td>    
	                <td>  
	                    <s:property value="%{stu.money}"/>  
	                </td>
	                <td>  
	                    <s:property value="%{stu.qinshihao}"/>  
	                </td>   
	                <td align="center">  
	                    <s:a href="deleteStu.action?stu.stuId=%{#us.stuId}" onclick="return del()">删除</s:a>  
	                </td>  
	                <td align="center">  
	                    <s:a href="findStuById.action?stu.stuId=%{#us.stuId}">修改</s:a>         
	                </td>  
	            </tr>   
	    </table>
</div>
</body>
</html>
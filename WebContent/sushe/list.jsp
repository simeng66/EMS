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
<!-- <div id="tips"> -->
<!-- 	<div id="buttonGroup"> -->
<!-- 		<div class="button" onmouseout="this.style.backgroundColor='';this.style.fontWeight='normal'" onmouseover="this.style.backgroundColor='#77D1F6';this.style.fontWeight='bold'"> -->
<!-- 			<a href="sushe/save.jsp">添加宿舍</a>			 -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- </div>	 -->
<div id="mainContainer">
	<form name="addForm" action="findSushe.action" method="post" style="font-size:15px;float:right;margin-right:10px;">
		<table>
		<tr>
			<td>
				<s:textfield name="sushe.fangjianhao" label="搜索寝室号"></s:textfield>
				<s:submit value="提交"></s:submit>
			</td>
		</tr>  
	    </table> 
	</form>
	<br><br><br><br>
	<table class="default" border="1" width="100%">
	    	<col width="20%">
			<col width="20%">
			<col width="20%">
			<col width="20%">
			<col width="20%">
	        <tr class="title">  
	            <td>房间号</td>  
	            <td>本月用电量</td>  
	            <td>余额</td>
	            <td>历史用电量</td>
	            <td>操作</td>
	        </tr>  
	          
	        <s:iterator value="#request.list" id="sushe">  
	            <tr>  
	                <td>  
	                    <s:property value="#sushe.fangjianhao"/>  
	                </td>  
	                <td>   
	                    <s:property value="#sushe.yongdian"/>  
	                </td>  
	                <td>  
	                    <s:property value="#sushe.dmoney"/>  
	                </td>
	                <td>  
	                    <s:property value="#sushe.lishiyongdian"/>  
	                </td>	            
	                <td align="center">  
	                    <s:a href="deleteSushe.action?sushe.fangjianhao=%{#sushe.fangjianhao}" onclick="return del()">删除</s:a>  
	                </td>  	             
	            </tr>  
	        </s:iterator>  
	    </table>
</div>
</body>
</html>
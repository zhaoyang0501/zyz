<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script language="javaScript" type="text/javascript" src="js/jquery.js" ></script>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<link type="text/css" rel="stylesheet" href="css/pagination_new.css" />
		<title>无锡商院大学生青年志愿者总会</title>
		<link type="text/css" rel="stylesheet" href="pagination_new.css"  />
		<script type="text/javascript">
			$(document).ready(function(){
				$("#_project").addClass("current");
				if("${tip}" != null && "${tip}" != ""){
					alert("${tip}");
				}
			});
		</script>
		<style type="text/css">
			.td_style1{border-bottom: 1px solid #F2AEAE;border-right: 1px solid #F2AEAE;}
			.td_style2{border-top: 1px solid #F2AEAE;}
			.td_style3{border-left: 1px solid #F2AEAE;}
		</style>
</head>
<body>
	<div id="top">
		<div class="banner">
	        <div class="logo">
	        </div>
		</div>
	</div>

	<div id="container">
		<div class="mid">
			<!-- 菜单 -->
			<div class="nav">
				<div class="left"></div>
				<div class="mid">
					<%@include file="./menu.jsp" %>
				</div>
				<div class="right"></div>
			</div>
			<!-- 面包屑 -->
			<div class="address">
				目前位置：<a href="" >首页</a><span>></span><span>活动公示</span>
			</div>
			<!-- 正文 -->
				<div class="readbox">
					<div class="view">
						
							<table cellpadding="0" cellspacing="0" border="1" style="margin-top: 20px;margin-bottom: 20px;margin-left: 110px;">
								<tbody><tr>
									<td rowspan="6" class="td_style1 td_style2 td_style3" width="40" align="center">活<br>动<br>信<br>息</td>
									<td class="td_style1 td_style2" height="30" align="center">活动标题</td>
									<td colspan="3" class="td_style1 td_style2" align="center">	${project.name }</td>
								</tr>
								<tr>
									<td class="td_style1" align="center" width="100" height="30">截止日期</td>
									<td class="td_style1" align="center" width="200">${project.stopDate }</td>
									<td class="td_style1" align="center" width="100">需要人数</td>
									<td class="td_style1" align="center" width="200">${project.needMan }</td>
								</tr>
								<tr>
									<td class="td_style1" align="center" height="30">参加人数</td>
									<td class="td_style1" align="center">15&nbsp;人</td>
									<td class="td_style1" align="center">已参与人数</td>
									<td class="td_style1" align="center">${project.workToActions }</td>
								</tr>
								<tr>
									<td class="td_style1" align="center" height="30">活动地点</td>
									<td class="td_style1" colspan="3">${project.addr }</td>
									
								</tr>
							</tbody></table>
							
							<fieldset style="border: 1px solid #F2AEAE;margin-top: 5px;margin-left: 110px;text-align: center;width: 643px;">
								<legend style="margin-left: 5px;">活动内容</legend>
								<center>
									<div id="Content" style="text-align: left; line-height: 170%; text-indent: 20px; margin: 10px; width: 95%; word-spacing: 1px;">
									${project.context }
									</div>
								</center>
							</fieldset>
							<fieldset style="border: 1px solid #F2AEAE;margin-top: 5px;margin-left: 110px;text-align: center;width: 643px;">
								<legend style="margin-left: 5px;">活动注意事项</legend>
								<center>
									<div id="Content" style="text-align: left; line-height: 170%; text-indent: 20px; margin: 10px; width: 95%; word-spacing: 1px;">
									${project.remark }
									</div>
								</center>
							</fieldset>
							<div style="margin-top: 30px;margin-bottom: 50px;margin-left: 380px;">
								<a href="join?id=${project.id }">立即参与 </a>
							</div>
						
						
					</div>
				</div>
		</div>
		<div class="bot"></div>
	</div>
	<%@include file="./foot.jsp" %>
	</body>
</html>

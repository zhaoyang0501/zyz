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
						<table cellpadding="0" cellspacing="0" style="margin-top: 20px;margin-bottom: 20px;width: 100%">
							<thead>
								<tr style="background-color: #FBE6E5;">
									<th height="30" class="td_style1 td_style2 td_style3">活动标题</th>
									<th  class="td_style1 td_style2">需要人数</th>
									<th  class="td_style1 td_style2">截止日期</th>
									<th  class="td_style1 td_style2">活动地点</th>
									<th  class="td_style1 td_style2">状态</th>
									<th class="td_style1 td_style2">查看</th>
								</tr>
							</thead>
							<tbody id="activity_list">
							<c:forEach items="${projects}" var="bean">
							<tr>
								  <td height="30" class="td_style1 td_style3">${bean.name }</td>
								  <td align="center" class="td_style1">${bean.needMan }</td>
								  <td align="center" class="td_style1">${bean.stopDate }</td>
								  <td align="center" class="td_style1">${bean.addr}</td>
								  <td align="center" class="td_style1">${bean.state}</td>
								  <td align="center" class="td_style1"><a href="projectdetail?id=${bean.id }">查看</a> </td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
		</div>
		<div class="bot"></div>
	</div>
	<%@include file="./foot.jsp" %>
	</body>
</html>

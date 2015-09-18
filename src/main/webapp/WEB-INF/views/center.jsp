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
				$("#_center").addClass("current");
				if("${tip}" != null && "${tip}" != ""){
					alert("${tip}");
				}
			});
		</script>
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
				目前位置：<a href="" >首页</a><span>></span><span>志愿者中心</span>
			</div>
			<!-- 正文 -->
			
			<div class="readbox">
					<div class="title">
						<ul>
							<li class="current">
								<span><a href="javascript:void(0);">志愿者中心</a></span>
							</li>
						</ul>
					</div>
					<div class="view register">
							<form action="mydocenter" id="registerForm" name="registerForm" method="post">
							<input value='${sessionScope.user.id}'  class="size1" type="hidden" id="worker.id" name="worker.id" />
										
							<div class="error">
							</div>
							<div class="class">
								<b>志愿者信息</b>
							</div>
							<div class="form">
								<ul>
									
									<li>
										<div class="name">
											<b>证件类型：</b>
										</div>
										
										 <select class="size4" id="worker.cardtype" name="worker.cardtype"
									style="font-family: SimSun; font-size: 12px;"><option
											value="">----------------请选择----------------</option>
										<option value="身份证">身份证</option>
										<option value="军官证">军官证</option>
										<option value="学生证">学生证</option>
										</select>
										
										
									</li>
									<li>
										<div class="name">
											<b>证件号码：</b>
										</div>
										<input value='${sessionScope.user.cardid}'  class="size1" type="text" id="worker.cardid" name="worker.cardid" />
										
									</li>
									
									<li>
										<div class="name">
											<b>用户名：</b>
										</div>
										<input value='${sessionScope.user.username}'  class="size1" type="text" id="username" name="worker.username" readonly="readonly"/>
									</li>
									
									<li>
										<div class="name">
											<b>姓名：</b>
										</div>
										<input value='${sessionScope.user.name}' class="size1" type="text" id="name" name="worker.name"/>
									</li>
									
									<li>
										<div class="name">
											<b>登录密码：</b>
										</div>
										<input value='${sessionScope.user.password}' class="size1" type="password" id="password" name="worker.password" autocomplete="off" style="font-family: Tahoma;"/>
										<div class="notice">
											密码长度为6－20个字符，字母区分大小写。密码不可以过于简单，可使用英文字母及数字以及特殊字符组合。
										</div>
									</li>
									
									<li>
										<div class="name">
											<b>性别：</b>
										</div>
										<input type="radio" name="worker.sex" checked="checked" value="男"/>
										&nbsp;男&nbsp;&nbsp;
										<input type="radio" name="worker.sex" value="女"/>
										&nbsp;女
									</li>
									<li>
										<div class="name">
											<b class="blank">职业分类：</b>
										</div> <select class="size4" id="job" name="worker.type"
									style="font-family: SimSun; font-size: 12px;"><option
											value="">----------------请选择----------------</option>
										<option value="公务员">公务员</option>
										<option value="教师">教师</option>
										<option value="学生">学生</option>
										<option value="军人">军人</option>
										<option value="工人">工人</option>
										<option value="农民">农民</option>
										<option value="医务人员">医务人员</option>
										<option value="科技人员">科技人员</option>
										<option value="企事业单位行政/管理人员">企事业单位行政/管理人员</option>
										<option value="退休人员">退休人员</option>
										<option value="其它">其它</option></select>
								</li>
									<li>
										<div class="name">
											<b>手机：</b>
										</div>
										<input class="size1" type="text" id="phone" name="worker.tel"  value='${sessionScope.user.tel}'/>
										<div class="notice">
											例如：13912345678。可用于找回您的密码、接收活动短信等。
										</div>
									</li>
									<li>
										<div class="name">
											<b>详细地址：</b>
										</div>
										<input class="size1" type="text" id="addr" name="worker.addr" value='${sessionScope.user.addr}'/>
										
									</li>
									
								</ul>
							</div>
							<input type="submit"  value="保存修改" style="margin: 15px 0px 0px 390px;"/>
						</form>
							
							<div class="class">
								<b>我的参与的活动</b>
							</div>
							<div class="form">
								<table cellpadding="0" cellspacing="0" style="margin-top: 20px;margin-bottom: 20px;width: 100%">
									<thead>
										<tr style="background-color: #FBE6E5;">
											<th height="30" class="td_style1 td_style2 td_style3">项目名称</th>
											<th  class="td_style1 td_style2">项目地址</th>
											<th  class="td_style1 td_style2">截止日期</th>
											<th  class="td_style1 td_style2">活动人数</th>
											<th class="td_style1 td_style2">参与日期</th>
											<th class="td_style1 td_style2">查看</th>
										</tr>
									</thead>
									<tbody id="activity_list">
									<c:forEach items="${workerToActions}" var="bean">
									<tr>
										  <td height="30" class="td_style1 td_style3">${bean.action.name }</td>
										  <td align="center" class="td_style1">${bean.action.addr }</td>
										  <td align="center" class="td_style1">${bean.action.stopDate }</td>
										  <td align="center" class="td_style1">${bean.action.needMan }</td>
										  <td align="center" class="td_style1">${bean.createDate }</td>
										  <td align="center" class="td_style1"><a href="projectdetail?id=${bean.action.id }">查看</a> </td>
										</tr>
									</c:forEach>
									</tbody>
								</table>
							</div>
					</div>
				</div>
			<!-- 正文 -->
			
		</div>
		<div class="bot"></div>
	</div>
	<%@include file="./foot.jsp" %>
	</body>
</html>

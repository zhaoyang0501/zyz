<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script language="javaScript" type="text/javascript" src="js/jquery.js" ></script>
<script language="javaScript" type="text/javascript" src="js/picShow.js" ></script>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<link type="text/css" rel="stylesheet" href="css/pagination_new.css" />
		<title>无锡商院大学生青年志愿者总会</title>
		<link type="text/css" rel="stylesheet" href="pagination_new.css"  />
		<script type="text/javascript">
			$(document).ready(function(){
				$("#_index").addClass("current");
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
			<!-- 正文 -->
			<div class="content">
					<div class="area_left">
				    	<div id="ifocus">
							<div id="ifocus_pic">
								<div id="ifocus_piclist" style="left:0; top:0;">
									<ul>
									<li><a href="#" target='_blank'><img
											src='images/t1.png' width='508' height='287'
											onerror="this.onerror=null;this.src='/wxzyz/app/images/nopic.gif'" /></a></li>
									<li><a
										href="#"
										target='_blank'><img
											src='images/t2.jpg'
											width='508' height='287'
											onerror="this.onerror=null;this.src='/wxzyz/app/images/nopic.gif'" /></a></li>
									<li><a
										href="#"
										target='_blank'><img
											src='images/t3.png'
											width='508' height='287'
											onerror="this.onerror=null;this.src='/wxzyz/app/images/nopic.gif'" /></a></li>
								</ul>
								</div>
								<div id="ifocus_opdiv"></div>
								<div id="ifocus_tx">
									<ul>
										<li class='current'>第四届世界佛教论坛志愿者进行集中面试</li><li class='normal'>无锡举行“文明之旅 志愿同行”优秀志愿者亲子夏令营活动</li><li class='normal'>我市网络文明传播志愿服务工作示范全国</li>
									</ul>
								</div>
							</div>
							<div id="ifocus_btn">
								<ul>
								<li class='current'><img
									src='images/t1.png'
									width='157' height='93'
									onerror="this.onerror=null;this.src='/wxzyz/app/images/nopic.gif'" /><span></span></li>
								<li class='normal'><img
									src='images/t2.jpg'
									width='157' height='93'
									onerror="this.onerror=null;this.src='/wxzyz/app/images/nopic.gif'" /><span></span></li>
								<li class='normal'><img
									src='images/t3.png'
									width='157' height='93'
									onerror="this.onerror=null;this.src='/wxzyz/app/images/nopic.gif'" /><span></span></li>
							</ul>
							</div>
						</div>
				    	
						
						<!-- 工作动态 -->
						<div class="working">
							<div class="title">
								<div class="bt"></div>
							</div>
							<div class="list">
								<ul>
								<c:forEach items="${newss}" var="bean" end="7">
								<li><a
									href="detail?id=${bean.id}"
									target="_blank">${bean.title}</a><span>${bean.createDate}</span></li>
								</c:forEach>
								
							</ul>
							</div>
						</div>
						
						<div class="volunteer">
							<div class="title">
								<div class="bt"></div>
								<a class="more" href="#">[更多]</a>
							</div>
							<ul>
							<li><a
								href="/wxzyz/Docs/news/1/html/1278463/20150730143848650.shtml"
								target="_blank"><img
									src="http://www.wuxizyz.gov.cn/wxzyz/upload/web_1/image/20150730143848650/20150730144240666.png"
									title="诸海燕：热心社区..." alt="诸海燕：热心社区..." width="150" height="113"
									onerror="this.onerror=null;this.src='/wxzyz/app/images/nopic.gif'"></a><a
								href="/wxzyz/Docs/news/1/html/1278463/20150730143848650.shtml"
								target="_blank" class="subject">诸海燕：热心社区...</a></li>
							<li><a
								href="/wxzyz/Docs/news/1/html/1278463/20150713165342386.shtml"
								target="_blank"><img
									src="http://www.wuxizyz.gov.cn/wxzyz/upload/web_1/image/20150713165342386/20150713165519722.png"
									title="82岁的老爷爷感动市民" alt="82岁的老爷爷感动市民" width="150" height="113"
									onerror="this.onerror=null;this.src='/wxzyz/app/images/nopic.gif'"></a><a
								href="/wxzyz/Docs/news/1/html/1278463/20150713165342386.shtml"
								target="_blank" class="subject">82岁的老爷爷感动市民</a></li>
							<li><a
								href="/wxzyz/Docs/news/1/html/1278463/20130527103424253.shtml"
								target="_blank"><img
									src="http://www.wuxizyz.gov.cn/wxzyz/upload/web_1/image/20130527103424253/20130527104017548.jpg"
									title="无锡市惠山区长乐..." alt="无锡市惠山区长乐..." width="150" height="113"
									onerror="this.onerror=null;this.src='/wxzyz/app/images/nopic.gif'"></a><a
								href="/wxzyz/Docs/news/1/html/1278463/20130527103424253.shtml"
								target="_blank" class="subject">无锡市惠山区长乐...</a></li>
							<li><a
								href="/wxzyz/Docs/news/1/html/1278463/20130520104736425.shtml"
								target="_blank"><img
									src="http://www.wuxizyz.gov.cn/wxzyz/upload/web_1/image/20130520104736425/20130520104901794.jpg"
									title="锡山区志愿者雨天..." alt="锡山区志愿者雨天..." width="150" height="113"
									onerror="this.onerror=null;this.src='/wxzyz/app/images/nopic.gif'"></a><a
								href="/wxzyz/Docs/news/1/html/1278463/20130520104736425.shtml"
								target="_blank" class="subject">锡山区志愿者雨天...</a></li>
						</ul>
						</div>
						
						
					</div>
					<div class="area_right">
						
<div class="box">
	<div id="enter" class="title">
		<span class="current" id="zyzLogin">志愿者登录</span>
		
	</div>
	<div class="inner">
		<div class="login" id="zyzLoginDiv">
		
		<c:if test="${sessionScope.user==null}">
			 <form action="dologin" method="post">
			<ul>
				<li style="margin-top:10px; _margin-top:13px; line-height: 35px;_line-height: 33px;">
					<span>登录账号：</span>
					<input type="text" autocomplete="off" name="worker.username">
				</li>
				<li style="margin-top:5px; line-height: 35px;_line-height: 33px;">
					<span>登录密码：</span>
					<input type="password" autocomplete="off" style="font-family: Tahoma;" name="worker.password">
				</li>
				
				<li style="margin-top:5px; line-height: 35px;_line-height: 33px;">
					<input class="submit" type="submit" value="" >
					<br>
				</li>
				<li style="margin-top:10px;margin-left: 15px; line-height: 35px;_line-height: 35px;">
					<a href="register"><img src="images/reg.gif"></a>
				</li>
			</ul>
			</form> 
			</c:if>
			<c:if test="${sessionScope.user!=null }">
			<ul>
				<li style="margin-top:10px; _margin-top:13px; line-height: 35px;_line-height: 33px;">
					<span>欢迎您：来自${sessionScope.user.id}的${sessionScope.user.name}</span>
				</li>
				
				<li style="margin-top:10px;margin-left: 15px; line-height: 35px;_line-height: 35px;">
					<a href="loginout"><img src="images/bbb.gif"></a>
				</li>
			</ul>
			</c:if>
		</div>
	</div>
</div>
<div class="box">
							<div class="title">
								<span class="current">志愿者招募</span>
								<a class="more" href="register">[更多]</a>
							</div>
							<div class="inner">
								<div style="line-height:22px; font-size:14px; padding:5px;">
							&nbsp;&nbsp;&nbsp;&nbsp;亲！您了解志愿者吗？告诉你哦，志愿者就是那些不为物质报酬，基于良知、信念和责任，志愿为社会和他人提供服务帮助的人哦！
亲！你想成为志愿者吗？.......来哦！
								</div>	
							</div>
						</div>


<div class="box">
							<div class="title">
								<span class="current">通知公告</span>
								<a class="more" href="notice">[更多]</a>
							</div>
							<div class="inner">
								<div class="list" style="height:130px;">
								<c:forEach items="${notice}" var="bean" end="3">
								<li><a
									href="detail?id=${bean.id}"
									target="_blank">${bean.title}</a><span>
									<fmt:formatDate value="${bean.createDate}" type="date" dateStyle="medium"/>
									</span></li>
								</c:forEach>
							
							</div>
							</div>
</div>



					</div>
				<div class="friendly">
					<div class="inner">
						<a href="http://wx.wenming.cn/" target="_blank">中国文明网</a>
						<a href="http://wm.jschina.com.cn/" target="_blank">江苏文明网</a>
						<a href="http://wmw.wuxi.gov.cn/" target="_blank">无锡文明网</a>
						<a href="http://www.zgzyz.org.cn/volunteer/index.html" target="_blank">无锡文明网</a>
						<a href="http://www.jsvolunteer.org/jsvolunteer/app/index.jsp" target="_blank">江苏志愿者网</a>
						<a href="http://www.jsvolunteer.org/jsvolunteer/app/index.jsp" target="_blank">太湖青年网</a>
						<a href="http://www.thmz.com/" target="_blank">太湖明珠网</a>
						<a href="http://www.wxrb.com" target="_blank">无锡新传媒</a>
						<a href="http://www.jnwb.net/" target="_blank">无锡新传媒</a>
						<a href="http://help.wst.cn/" target="_blank">二泉公益</a>
					</div>
				</div>
			</div>
			
		</div>
		<div class="bot"></div>
	</div>
	<%@include file="./foot.jsp" %>
	</body>
</html>

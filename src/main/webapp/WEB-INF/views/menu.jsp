<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<ul>
								<li ><a id="_index" href="index">首页</a></li>
								<li ><a id='_news' href="news">新闻动态</a></li>
								<li ><a  id='_notice' href="notice">通知公告</a></li>
								<li ><a id='_introduction' href="introduction">宣传报道</a></li>
								<li ><a id='_project' href="project">项目公示</a></li>
								<li ><a id='_about' href="about">关于我们</a></li>
								<c:if test="${sessionScope.user!=null }">
									<li ><a id='_center' href="center">个人中心</a></li>
								</c:if>
</ul>
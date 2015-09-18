<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<div class="leftbar leftbar-close clearfix">
	<div class="admin-info clearfix">
		<div class="admin-thumb">
			<i class="icon-user"></i>
		</div>
		<div class="admin-meta">
			<ul>
				<li class="admin-username" style="margin-top: 10px;">欢迎你 admin</li>
				<li><a href="${pageContext.request.contextPath}/admin/loginout">
				<i class="icon-lock"></i> 退出</a></li>
			</ul>
		</div>
	</div>

	<div class="left-nav clearfix">
		<div class="left-primary-nav">
			<ul id="myTab">
				<li  class="active"><a href="#dailyreport" class="icon-calendar" data-original-title="日报"></a></li>
			</ul>
		</div>
		<div class="responsive-leftbar">
			<i class="icon-list"></i>
		</div>
		<div class="left-secondary-nav tab-content" >
			<div class="tab-pane active dailyreport" id="dailyreport">
				<ul id="nav" class="accordion-nav" >
				<li><a href="${pageContext.request.contextPath}/admin/action/index"><i class="icon-upload"></i>活动管理 </a></li>
				<li><a href="${pageContext.request.contextPath}/admin/news/index"><i class="icon-upload"></i>文章管理 </a></li>
				<li><a href="${pageContext.request.contextPath}/admin/news/create"><i class="icon-upload"></i>文章发布 </a></li>
				<li><a href="${pageContext.request.contextPath}/admin/worker/index"><i class="icon-upload"></i>志愿者管理 </a></li>
				
				
				</ul>
			</div>
		</div>
	</div>
</div>
<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ch">
<%@ include file="../common/meta.jsp"%>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/ace/admin.action.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/falgun/bootbox.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/falgun/bootstrap-datetimepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/admin/js/falgun/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$(".date").datetimepicker({
			language:  'zh-CN',
	        weekStart: 1,
	        todayBtn:  1,
	        format:'yyyy-mm-dd',
			autoclose: 1,
			todayHighlight: 1,
			startView: 2,
			minView: 2,
			forceParse: 0
	    });
	});
</script>
</head>
<body>
	<div class="layout">
		<!-- top -->
		<%@ include file="../top.jsp"%>
		<!-- 导航 -->
		<%@ include file="../menu.jsp"%>
		
		<input type="hidden" id="hf_id" />

		<div class="main-wrapper">
			<div class="container-fluid">
				<div class="row-fluid ">
					<div class="span12">
						<div class="content-widgets light-gray">
							<div class="widget-head  bondi-blue" >
								<h3>活动管理</h3>
							</div>
							<div class="box well form-inline">
								<span>活动名称：</span>
								<input type="text" id="_name" >
								<a onclick="$.adminAction.initSearchDataTable()"
									class="btn btn-info" data-loading-text="正在加载..."><i class="icon-search"></i>查询</a>
							</div>
							<div class="widget-container">
								
									<a class="btn btn-success" style="float: right; margin: 5px;" onclick="$.adminAction.showActionAddModal()"><i class="icon-plus"></i>新增</a>
								<table class="responsive table table-striped table-bordered"
									id="dt_table_view">
									<thead>
										<tr>
											<th >id</th>
											<th >活动名称</th>
											<th >活动地址</th>
											<th >需要人数</th>
											<th >截止日期</th>
											<th >活动要求</th>
											<th >联系方式</th>
											<th >创建日期</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="../foot.jsp"%>
	</div>

	<!-- 编辑新增弹出框 -->
	<div class="modal hide fade" id="_modal">
		<div class="modal-header blue">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<label id="_modal_header_label"></label>
		</div>
		<div class="modal-body" style="min-height: 500px;">
			<div class="row-fluid">
				<div class="span12">
					<div class="form-container grid-form form-background left-align form-horizontal">
						 <form id='_form'    enctype="multipart/form-data" method="post">
							<input type="hidden" id="id" placeholder="">
							<div class="control-group">
								<label for="title" class="control-label">活动名称：</label>
								<div class="controls">
									<input type="text" id="name" placeholder="">
								</div>
							</div>
							
							<div class="control-group">
								<label for="title" class="control-label">活动地址：</label>
								<div class="controls">
									<input type="text" id="addr" placeholder="">
								</div>
							</div>
							
							<div class="control-group">
								<label for="title" class="control-label">需要人数：</label>
								<div class="controls">
									<input type="text" id="needMan" placeholder="">
								</div>
							</div>
							
							<div class="control-group">
								<label for="title" class="control-label">截止日期：</label>
								<div class="controls">
									<div class="input-append date">
										<input id="stopDate" type="text" value="" readonly="readonly" style="width:80px;">
										<span class="add-on"><i class="icon-th"></i></span>
									</div>
								</div>
							</div>
							<div class="control-group">
								<label for="title" class="control-label">电话：</label>
								<div class="controls">
									<input type="text" id=tel placeholder="">
								</div>
							</div>
							
							
							
							<div class="control-group">
								<label for="title" class="control-label">活动要求：</label>
								<div class="controls">
									<textarea rows="4" cols="" id='remark'></textarea>
								</div>
							</div>
							
								<div class="control-group">
								<label for="title" class="control-label">活动内容：</label>
								<div class="controls">
									<textarea rows="4" cols="" id='context'></textarea>
								</div>
							</div>
							
							
							
							
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="modal-footer center" id="div_footer">
			<a class="btn btn-primary" onclick="$.adminAction.saveAction()">保存</a>
			<a href="#" class="btn" data-dismiss="modal" id="closeViewModal">关闭</a>
		</div>
		
	</div>
</body>
</html>
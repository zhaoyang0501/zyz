<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 7 ]><html class="ie ie7" lang="en"><![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"><![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"><!--<![endif]-->
<head>

<!-- Basic Page Needs
================================================== -->
<meta charset="utf-8">
<title> - Free Theme s& Templates</title>

<!-- Mobile Specific
================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
================================================== -->
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/boxed.css" id="layout">
<link rel="stylesheet" type="text/css" href="css/colors/green.css" id="colors">

<!-- Java Script
================================================== -->
<script src="js/jquery.min.js"></script>
<script src="js/custom.js"></script>
<script src="js/selectnav.js"></script>
<script src="js/flexslider.js"></script>
<script src="js/twitter.js"></script>
<script src="js/tooltip.js"></script>
<script src="js/effects.js"></script>
<script src="js/fancybox.js"></script>
<script src="js/carousel.js"></script>
<script src="js/isotope.js"></script>

<!-- Styles Switcher
================================================== -->
<link rel="stylesheet" type="text/css" href="css/switcher.css">
<script src="js/switcher.js"></script>

</head>
<body>

<!-- Wrapper Start -->
<div id="wrapper">


<!-- Header
================================================== -->

<!-- 960 Container -->
<div class="container ie-dropdown-fix">
<div id="header">
		<!-- Logo -->
		<div class="sixteen columns">
			<div id="logo">
				<a href="#"><img src="images/logo.png" alt="logo" /></a>
				<div id="tagline">你的同学都在这里，快加入我们吧！</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<div class="sixteen columns">
		<div id="navigation">
			<ul id="nav">
				<li><a href="index.html">首页</a></li>
				<li><a href="apply">申请班级</a></li>
			</ul>
		</div> 
		<div class="clear"></div>
	</div>
</div>
<!-- 960 Container / End -->


<!-- Content
================================================== -->
<div class="container">
	<div class="sixteen columns">
		<div id="page-title">
			<h2>注册</h2>
			<div id="bolded-line"></div>
		</div>

	</div>
</div>

<div class="container">
	<!-- Contact Form -->
	<div class="sixteen columns " >
		<!-- Form -->
		<div id="contact-form">
			<form method="post" action="${pageContext.request.contextPath}/goapply">
				<div class="field">
					<label>用户名:</label>
					<input type="text" name="grades.name" class="text">
				</div>
				<div class="field">
					<label>密码:</label>
					<input type="text" name="grades.name" class="text">
				</div>
				
				<div class="field">
					<input  class='button color medium' type="submit"  value="登陆">
				</div>
			</form>
		</div>
</div>
</div>


</div>
<!-- Wrapper / End -->

	<%@include file="./foot.jsp" %>

</body>
</html>
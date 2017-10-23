<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
	<head>
		<base href="<%=basePath%>">

		<title>增加系统功能</title>
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>assets/jslib/bootstrap/css/bootstrap.css">
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>assets/css/theme.css">
		<link rel="stylesheet"
			href="<%=basePath%>assets/jslib/font-awesome/css/font-awesome.css">
		<script src="<%=basePath%>assets/jslib/jquery-1.7.2.min.js"
			type="text/javascript"></script>
	</head>

	<body class="content1">
		<ul class="breadcrumb">
			<li>
				<a href="function/list">系统功能管理</a>
				<span class="divider">/</span>
			</li>
			<li class="active">
				添加系统
			</li>
		</ul>

		<div class="container-fluid">
			<div class="row-fluid">
				<form method="post" action="<%=basePath%>function/addsub">
					<div class="btn-toolbar">
						<input type="submit" class="btn btn-primary" value="保存 ">
						<a href="<%=basePath%>function/list" class="btn">取消</a>

					</div>

					<div class="well">
						<div class="tab-pane active in">
							
							<input type="hidden" name="funpid" value="${param.funid}" />
							
							<label>
								父功能名称：<span>${param.pfunname}</span>
							</label>
						
							
							<label>
								功能名称：
							</label>
							<input type="text" name="funname" maxlength="10">
							<label>
								功能地址：
							</label>
							<input type="text" name="funurl" maxlength="100">
							<label>
								功能状态：
							</label>
							<select name="funstate">
								<option value="1">
									正常
								</option>
								<option value="0">
									锁定
								</option>
							</select>
							<div style="color: red">
								${msg}
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</body>
</html>

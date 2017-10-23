<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<link rel="icon" href="<%=path %>/images/logo.jpg" type="image/x-icon"/> 
<title>鸿金金融</title> 
<link rel="stylesheet" href="/Loan/css/pjcss/public.css">
<link rel="stylesheet" href="/Loan/css/pjcss/account.css">
<link rel="stylesheet" href="/Loan/css/pjcss/datepicker.css">

</head>
<body bgcolor="#FFFFCC">
	<jsp:include flush="true" page="top.jsp"></jsp:include>
		<div class="account cl">
			<div class="account-left">
			<div class="account-left-nav">
				<div class="navbar icon icon-account">我的账户</div>
				<ul class="sub-nav">
					<c:choose>
						<c:when test="${customer.uid == null}">
							<li><a href="<%=path %>/client/login">账户总览</a></li>
						</c:when>
						<c:when test="${customer.uid != null}">
							<li class="active"><a href="<%=path %>/client/left">账户总览</a></li>
						</c:when>
					</c:choose>
					<li><a href="<%=path%>/client/recharge">充值</a></li>
					<li><a href="<%=path%>/client/funds">提现</a></li>
					<li><a href="<%=path%>/client/MoneyRecord?page=1">资金记录</a></li>
				</ul>
				<div class="navbar icon icon-self">我的管理</div>
				<ul class="sub-nav">
					<c:choose>
						<c:when test="${customer.uid == null}">
							<li><a href="<%=path %>/client/login">投资管理</a></li>
						</c:when>
						<c:when test="${customer.uid != null}">
							<li><a href="<%=path%>/client/investment">投资管理</a></li>
						</c:when>
					</c:choose>
					<li><a href="<%=path%>/client/BorrowMoney">借款管理</a></li>
				</ul>
				<div class="navbar icon icon-settings">账户设置</div>
				<ul class="sub-nav">
					<c:choose>
						<c:when test="${customer.uid == null}">
							<li><a href="<%=path %>/client/login">我的银行卡</a></li>
						</c:when>
						<c:when test="${customer.uid != null}">
							<li><a href="<%=path%>/client/BankCard">我的银行卡</a></li>
						</c:when>
					</c:choose>
					<li><a href="<%=path%>/client/security">安全设置</a></li>
				</ul>
			</div>
		</div>
		<!-- begin -->
<div class="account-right"><div class="account-right-nav">
	<div class="sub-a-nav">
		<a href="javascript:void(0);" class="active">我的银行卡</a>
	</div>
	<em></em>
</div>
<div id="myDebitCard" class="account-content">
	
<div id="card1" class="bank-card_1"><div class="bank-top"><div class="bank-cardTitle">邮储银行</div><div class="bank-cardType">储蓄卡</div></div><div class="bank-center"><div class="bank-cardNumber">6217 **** **** 1491</div><div class="bank-userName">*洁龙</div></div></div><div id="card3" class="bank-card_3" onclick="addCard();" style="cursor:pointer;"><div class="bank-addCard"><a href="<%=path%>/client/AddCard">添加银行卡</a></div></div></div>
</div>
		<!-- end -->
	</div>
	<jsp:include flush="true" page="bottom.jsp"></jsp:include>
		<em></em>
	</div>
	<div id="myDebitCard" class="account-content">
		
		<c:forEach var="list" items="${bankList}">
			<div id="card1" class="bank-card_1">
				<div class="bank-top">
					<div id="baccount" class="bank-cardTitle">${list.baccount}</div>
					<div class="bank-cardType">储蓄卡</div>
				</div>
				<div class="bank-center">
					<div id="bcardnumber" class="bank-cardNumber">${list.bcardnumber}</div>
					<div id="username" class="bank-userName">${customer.username}</div>
				</div>
			</div>
		</c:forEach>
		
		<div id="card3" class="bank-card_3" onclick="addCard();" style="cursor:pointer;">
			<div class="bank-addCard"><a href="javascript:;">添加银行卡</a></div>
		</div>
	</div>
</div>
		<!-- end -->
	</div>
	<jsp:include flush="true" page="bottom.jsp"></jsp:include>
		<em></em>
		<jsp:include flush="true" page="bottom.jsp"></jsp:include>
	<script type="text/javascript">
	//添加银行卡
	function addCard(){
		var param={"auth":"{uid:'"+utils.Storage.getItem('uid')+"'}"};
		utils.ajax({
	        url:'../app/addBankInfo.do',
	        data:param,
	        dataType:'json',
	        success: function(data){
	        	if(data.error == '0'){
	        		$('#myDebitCard').empty().html(data.html);
	        	}else if(data.msg=='请先注册汇付'){
	        		utils.alert(data.msg,function(){
	        			window.location.href="registpay.html";
	        		});
	        	}else{
	        	}
	        		utils.alert(data.msg);
	        }
	    })
	}
	</script>
</body></html>
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
<title>账户总览</title>
<link rel="stylesheet" href="/Loan/css/pjcss/public.css">
<link rel="stylesheet" href="/Loan/css/pjcss/account.css">
<link rel="stylesheet" href="/Loan/css/pjcss/datepicker.css">

<script type="text/javascript" src="<%=path %>/js/jquery-1.4.4.min.js"></script>
<script charset="utf-8" async="" src="<%=path %>/js/pjjs/i.js" id="_da"></script>
<script type="text/javascript" src="<%=path %>/js/pjjs/bootstrap-datepicker.js"></script>


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
		<a href="javascript:void(0);" class="active">账户总览</a>
	</div>
	<em></em>
</div>
<div class="account-content" style="display: block;">
	<div class="center-view">
		<div class="center-header">
			<img src="../images/d.jpg" width="120" height="120">
		</div>
		<div class="center-self">
			<p class="name">${customer.username}</p>
			<p class="safety">安全等级： <span id="safeLevel">高</span></p>
			<p class="center-icon">
				<a href="http://120.76.203.19:8090/shzc_test/WEB-PC/account.html#safe" class="icon icon-c-phone"></a>
				<a href="http://120.76.203.19:8090/shzc_test/WEB-PC/account.html#safe" class="icon icon-c-mail"></a>
			</p>
			<!-- <p id="registpay"><a href="javascript:;">登录汇付</a></p> -->
		</div>
		<div class="center-user">
			<p class="amt color"><span id="usableSum">${fund.available}</span>元</p>
			<p class="text">可用余额</p>
			<p class="link">
				<a href="<%=path%>/client/recharge" class="active">充值</a>
				<a href="<%=path%>/client/funds">提现</a>
			</p>
		</div>
		<div class="center-profit">
			<p class="amt"><span id="earnSum">${fund.income}</span>元</p>
			<p class="text">收益总额</p>
		<!-- 	<p class="icon icon-quan">代金券 <b id="voucher">0</b> 张，现金券 <b id="cashMap">0</b> 张</p> -->
		</div>	
	</div>
<%-- 	<div class="center-main">
		<div class="canvas">
			<div id="myChart" style="width:350px;height:350px;" data-highcharts-chart="0"><div class="highcharts-container" id="highcharts-0" style="position: relative; overflow: hidden; width: 350px; height: 350px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><svg version="1.1" style="font-family:&quot;Lucida Grande&quot;, &quot;Lucida Sans Unicode&quot;, Arial, Helvetica, sans-serif;font-size:12px;" xmlns="http://www.w3.org/2000/svg" width="350" height="350"><desc>Created with Highcharts 4.0.3</desc><defs><clippath id="highcharts-1"><rect x="0" y="0" width="330" height="325"></rect></clippath></defs><rect x="0" y="0" width="350" height="350" strokeWidth="0" fill="#FFFFFF" class=" highcharts-background"></rect><path fill="rgba(248,210,128,0.25)" d="M 0 0"></path><g class="highcharts-series-group" zIndex="3"><g class="highcharts-series highcharts-tracker" visibility="visible" zIndex="0.1" transform="translate(10,10) scale(1 1)" style="cursor:pointer;"><path fill="#f8d280" d="M 164.96893983643648 10.000003163061535 A 152.5 152.5 0 1 1 70.0364558934137 281.8238253272013 L 89.57403750878515 257.27441536234267 A 121.125 121.125 0 1 0 164.9753300832024 41.375002512300526 Z" stroke="#FFFFFF" stroke-width="1" stroke-linejoin="round" transform="translate(0,0)"></path><path fill="#6dbfff" d="M 69.91717956974192 281.72880213701427 A 152.5 152.5 0 0 1 64.07705185224589 276.82763680390553 L 84.84070757772645 253.3061311991676 A 121.125 121.125 0 0 0 89.47930082219665 257.1989420252187 Z" stroke="#FFFFFF" stroke-width="1" stroke-linejoin="round" transform="translate(0,0)"></path><path fill="#fb9898" d="M 63.96277469596647 276.72665670876466 A 152.5 152.5 0 0 1 164.78818055944407 10.000147106547672 L 164.83175980500107 41.375116841184166 A 121.125 121.125 0 0 0 84.74994154130452 253.22592651704338 Z" stroke="#FFFFFF" stroke-width="1" stroke-linejoin="round" transform="translate(0,0)"></path><path fill="#86da70" d="M 164.94068049283067 10.000011537062505 A 152.5 152.5 0 0 1 164.78818055944407 10.000147106547672 L 164.83175980500107 41.375116841184166 A 121.125 121.125 0 0 0 164.95288475209256 41.37500916345374 Z" stroke="#FFFFFF" stroke-width="1" stroke-linejoin="round" transform="translate(0,0)"></path></g><g class="highcharts-markers" visibility="visible" zIndex="0.1" transform="translate(10,10) scale(1 1)"></g></g><g class="highcharts-legend" zIndex="7"><g zIndex="1"><g></g></g></g><g class="highcharts-tooltip" zIndex="8" style="cursor:default;padding:0;white-space:nowrap;" transform="translate(121,260)" opacity="0" visibility="hidden"><path fill="none" d="M 3.5 0.5 L 110.5 0.5 C 113.5 0.5 113.5 0.5 113.5 3.5 L 113.5 46.5 C 113.5 49.5 113.5 49.5 110.5 49.5 L 3.5 49.5 C 0.5 49.5 0.5 49.5 0.5 46.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" isShadow="true" stroke="black" stroke-opacity="0.049999999999999996" stroke-width="5" transform="translate(1, 1)" width="113" height="49"></path><path fill="none" d="M 3.5 0.5 L 110.5 0.5 C 113.5 0.5 113.5 0.5 113.5 3.5 L 113.5 46.5 C 113.5 49.5 113.5 49.5 110.5 49.5 L 3.5 49.5 C 0.5 49.5 0.5 49.5 0.5 46.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" isShadow="true" stroke="black" stroke-opacity="0.09999999999999999" stroke-width="3" transform="translate(1, 1)" width="113" height="49"></path><path fill="none" d="M 3.5 0.5 L 110.5 0.5 C 113.5 0.5 113.5 0.5 113.5 3.5 L 113.5 46.5 C 113.5 49.5 113.5 49.5 110.5 49.5 L 3.5 49.5 C 0.5 49.5 0.5 49.5 0.5 46.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" isShadow="true" stroke="black" stroke-opacity="0.15" stroke-width="1" transform="translate(1, 1)" width="113" height="49"></path><path fill="rgba(249, 249, 249, .85)" d="M 3.5 0.5 L 110.5 0.5 C 113.5 0.5 113.5 0.5 113.5 3.5 L 113.5 46.5 C 113.5 49.5 113.5 49.5 110.5 49.5 L 3.5 49.5 C 0.5 49.5 0.5 49.5 0.5 46.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" stroke="#f8d280" stroke-width="1"></path><text x="8" zIndex="1" style="font-size:12px;color:#333333;fill:#333333;" y="21"><tspan style="font-size: 10px">投资总额</tspan><tspan style="fill:" x="8" dy="16">●</tspan><tspan dx="0"> 金额: </tspan><tspan style="font-weight:bold" dx="0">156,995</tspan></text></g></svg></div></div>
			<div class="center-total">
				<p id="allTotal">250538038.79</p>
				<p class="text">总资产</p>
			</div>
		</div>
		<div class="center-data">
			<p class="color color1"></p>
			<p>投资总额：<span id="investSum">156995.00</span></p>
			<p class="color color2"></p>
			<p>冻结金额：<span id="freezeAmount">2095.00</span></p>
			<p class="color color3"></p>
			<p>待收总额：<span id="forPaySum">99436.54</span></p>
			<p class="color color4"></p>
			<p>奖励金额：<span id="otherEarnAmount">26.71</span></p>
		</div>
	</div> --%>
	<div id="huifuHtml"></div>
</div>
<div class="popup regist-box">
	<p class="title left">注册汇付天下</p>
	<a href="javascript:void(0);" class="close icon icon-close"></a>
	<div class="popup-from">
		<button type="button" class="btn" id="person-submit">个人用户注册</button>
		<button type="button" class="btn" id="single-submit">企业用户注册</button>
	</div>
</div></div>
		<!-- end -->
	</div>
	<jsp:include flush="true" page="bottom.jsp"></jsp:include>
	<script type="text/javascript" src="<%=path %>/js/pjjs/jquery.js"></script>
	<script type="text/javascript" src="<%=path %>/js/pjjs/public.js"></script>
	<!-- 客服QQ -->
	<script type="text/javascript" src="<%=path %>/js/pjjs/countUp.js"></script>
	<script type="text/javascript" src="<%=path %>/js/pjjs/about.js"></script>
</body></html>
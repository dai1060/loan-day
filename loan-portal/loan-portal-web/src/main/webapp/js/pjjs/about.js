var contentType = "application/x-www-form-urlencoded; charset=utf-8";
var oPage;
var isClick = false;
$(function(){
		//初始化footer
		utils.initPage();
		hashChange();
});
function animate1() {
	isClick = !isClick;
	if (isClick) {
		$("#animateDiv").animate({height:"175px"},500);
		$("#animateUl").empty();
		$("#animateUl").html(
				'<li class="xxpl"><a href="javaScript:void(0);" onClick="animate1()" class="icon-about about-xxpl">信息披露</a></li>'
				+'<li class="cyjg"><a href="#cyjg" class="icon-about about-cyjg">从业机构信息</a></li>'
				+'<li class="ptyy"><a href="#ptyy" class="icon-about about-ptyy">平台运营信息</a></li>'
				+'<li class="jkxm"><a href="#jkxm" class="icon-about about-jkxm">借款项目信息</a></li>');
		$('.cyjg').show();
		$('.ptyy').show();
		$('.jkxm').show();		
	}
	else {
		$("#animateDiv").animate({height:"45px"},500);
		setTimeout(function() {
			$('.cyjg').hide();
			$('.ptyy').hide();
			$('.jkxm').hide();
		},500)
		location.hash='gdbj';
	}
}

function hashChange(){
	var hash = location.hash;
	if(hash.indexOf('?')>0){
		hash = hash.substring(1,hash.indexOf('?'));
	}else{
		hash = hash.replace('#','');
	}
	$('.sub-nav li').removeClass('active');
	$('a[href="#'+hash+'"]').parent('li').addClass('active');
	switch(hash){
		case 'cyjg':
			initCyjg();
			break;
		case 'jkxm':
			initJkxm();
			break;
		case 'ptyy':
			initYybg();
			break;
		case 'gdbj':
			initGdbj();
			break;
		case 'gsjj':
			initGsjj();
			break;
		case 'ptzz':
			initPtzz();
			break;
		case 'gltd':
			initGltd();
			break;
		case 'gwtd':
			initGwtd();
			break;
		case 'gsdt':
			initGsd();
			break;
		case 'ptgg':
			initPtgg();
			break;
		case 'zxns':
			initZxns();
			break;
		case 'lxwm':
			initLxwm();
			break;
		default : animate1();initCyjg();$('a[href="#cyjg"]').parent('li').addClass('active');
		break;
	};
	$('a[href="#'+hash+'"]').parent('li').addClass('active');
}
//信息披露
function initCyjg(){
	$.ajax({
		url: 'src/template/about/xxpl.html',
		type: "get",
		dataType: "html",
		contentType:contentType,
		success: function (data) {
			$('.about-right').empty();
			$('.about-right').html(data);
			$('#zlxxDiv').hide();
			$('#wzptDiv').hide();
			$('#hzhbDiv').hide();
			$('#zdsxDiv').hide();
			$('#jbxx').click(function(){
	    		if($(this).hasClass('active')){
	    			return;
	    		}
	    		$(this).addClass('active').siblings('a').removeClass('active');
	    		$('.em-line').animate({'left':'0'},500);
	    		$('#jbxxDiv').show();
	    		$('#zlxxDiv').hide();
	    		$('#hzhbDiv').hide();
	    		$('#wzptDiv').hide();
	    		$('#zdsxDiv').hide();
	    	});
	    	$('#zlxx').click(function(){
	    		if($(this).hasClass('active')){
	    			return;
	    		}
	    		$(this).addClass('active').siblings('a').removeClass('active');
	    		$('.em-line').animate({'left':'120px'},500);
	    		$('#zlxxDiv').show();
	    		$('#jbxxDiv').hide();
	    		$('#hzhbDiv').hide();
	    		$('#wzptDiv').hide();
	    		$('#zdsxDiv').hide();
	    	});
	    	$('#wzpt').click(function(){
	    		if($(this).hasClass('active')){
	    			return;
	    		}
	    		$(this).addClass('active').siblings('a').removeClass('active');
	    		$('.em-line').animate({'left':'240px'},500);
	    		$('#wzptDiv').show();
	    		$('#hzhbDiv').hide();
	    		$('#zlxxDiv').hide();
	    		$('#jbxxDiv').hide();
	    		$('#zdsxDiv').hide();
	    	});
	    	$('#hzhb').click(function(){
	    		if($(this).hasClass('active')){
	    			return;
	    		}
	    		$(this).addClass('active').siblings('a').removeClass('active');
	    		$('.em-line').animate({'left':'360px'},500);
	    		$('#hzhbDiv').show();
	    		$('#zlxxDiv').hide();
	    		$('#jbxxDiv').hide();
	    		$('#wzptDiv').hide();
	    		$('#zdsxDiv').hide();
	    	});
	    	$('#zdsx').click(function(){
	    		if($(this).hasClass('active')){
	    			return;
	    		}
	    		$(this).addClass('active').siblings('a').removeClass('active');
	    		$('.em-line').animate({'left':'480px'},500);
	    		$('#zdsxDiv').show();
	    		$('#hzhbDiv').hide();
	    		$('#zlxxDiv').hide();
	    		$('#jbxxDiv').hide();
	    		$('#wzptDiv').hide();
	    	});
		}
	});
}
//平台运营信息
function initYybg(){
	$.ajax({
		url: 'src/template/about/ptyy.html',
		type: "get",
		dataType: "html",
		contentType:contentType,
		success: function (data) {
			$('.about-right').empty();
			$('.about-right').html(data);
			$('#yybgDiv').hide();
			$.ajax({
				url: '../app/informationRevealed.do',
				type: "get",
				dataType: "json",
				contentType:contentType,
				success: function (data) {
					if (data.error == 0) {
						var investAmount = utils.formatCurrency(data.investAmount);
						var str = investAmount.split("");
						var investAmountDIV = "";
						for (var i=0; i<investAmount.length; i++) {
							if (isNaN(str[i])) {
								if (str[i] == ",")
									investAmountDIV += '<div class="marginLeft">,</div>';
								if (str[i] == ".")
									investAmountDIV += '<div class="marginLeft">.</div>';
							} else {
								investAmountDIV += '<div class="item_Div">' + str[i] + '</div>';
								if (str[(i+1)] === "," || str[(i+1)] === ".") {
									
								} else {
									investAmountDIV += '<div class="marginLeft"></div>';
								}
							}
						}
						var options = {
		        				useEasing : true, 
		        				useGrouping : true, 
		        				separator : ',', 
		        				decimal : '.', 
		        				prefix : '', 
		        				suffix : '' 
		  				};
						$(".moneyDiv").html(investAmountDIV);
						var count1 = new CountUp("dealNumber", 0, data.dealNumber, 0, 2.5, options);
						var count2 = new CountUp("repayAmount", 0, data.repayAmount, 2, 2.5, options);
						var count3 = new CountUp("unRepayAmount", 0, data.unRepayAmount, 2, 2.5, options);
						var count4 = new CountUp("hasInterest", 0, data.hasInterest, 2, 2.5, options);
						var count5 = new CountUp("userTotal", 0, data.userTotal, 0, 2.5, options);
						var count6 = new CountUp("investorCount", 0, data.investorCount, 0, 2.5, options);
						var count7 = new CountUp("avgUserInvest", 0, data.avgUserInvest, 2, 2.5, options);
						var count8 = new CountUp("avgInvest", 0, data.avgInvest, 2, 2.5, options);
						count1.start();
						count2.start();
						count3.start();
						count4.start();
						count5.start();
						count6.start();
						count7.start();
						count8.start();
					}
				}
			});
			$('#sssj').click(function(){
				if($(this).hasClass('active')){
					return;
				}
				$(this).addClass('active').siblings('a').removeClass('active');
				$('.em-line').animate({'left':'0'},500);
				$('#sssjDiv').show();
				$('#yybgDiv').hide();
			});
			
			$('#yybg').click(function(){
				if($(this).hasClass('active')){
					return;
				}
				$(this).addClass('active').siblings('a').removeClass('active');
				$('.em-line').animate({'left':'120'},500);
				
				$.ajax({
					url: '../app/yybgInit2.do',
					type: "get",
					dataType: "json",
					contentType:contentType,
					success: function (data) {
						if (data.error == 0) {
							$('#tableDiv').empty();
							var list = "";
							for (var i=0; i<data.yybgList.length; i++) {
								list += '<a href="'+data.yybgList[i].filePath+'" download><img class="yybgImg" alt="" src="'+data.yybgList[i].imgPath+'"></a>';
							}
							$('.tableDiv').html(list);
						}
					}
				});
				
				
				$('#yybgDiv').show();
				$('#sssjDiv').hide();
			});
		}
	});
}
//借款项目信息
function initJkxm(){
	$.ajax({
		url: 'src/template/about/jkxm.html',
		type: "get",
		dataType: "html",
		contentType:contentType,
		success: function (data) {
			$('.about-right').empty();
			$('.about-right').html(data);
			$('#xmjsDiv').hide();
			$('#jkrxxDiv').hide();
			$('#xmxx').click(function(){
				if($(this).hasClass('active')){
					return;
				}
				$(this).addClass('active').siblings('a').removeClass('active');
				$('.em-line').animate({'left':'0'},500);
				$('#xmxxDiv').show();
				$('#xmjsDiv').hide();
				$('#jkrxxDiv').hide();
			});
			$('#xmjs').click(function(){
				if($(this).hasClass('active')){
					return;
				}
				$(this).addClass('active').siblings('a').removeClass('active');
				$('.em-line').animate({'left':'120px'},500);
				$('#xmxxDiv').hide();
				$('#xmjsDiv').show();
				$('#jkrxxDiv').hide();
			});
			$('#jkrxx').click(function(){
				if($(this).hasClass('active')){
					return;
				}
				$(this).addClass('active').siblings('a').removeClass('active');
				$('.em-line').animate({'left':'240px'},500);
				$('#xmxxDiv').hide();
				$('#xmjsDiv').hide();
				$('#jkrxxDiv').show();
			});
			
		}
	});
}
//股东背景
function initGdbj(){
	$.ajax({
	    url: 'src/template/about/gdbj.html',
	    type: "get",
	    dataType: "html",
	    contentType:contentType,
	    success: function (data) {
	    	$('.about-right').empty();
	    	$('.about-right').html(data);
	    	$('#shzc').hide();
	    	$('.title-link a').click(function(){
	    		if($(this).hasClass('active')){
	    			return;
	    		}
	    		var index = $(this).index();
	    		$(this).addClass('active').siblings('a').removeClass('active');
	    		$('.content').hide().eq(index).show();
	    	})
	    }
	});
}
//股东背景
function initGdbj2(){
	$.ajax({
		url: 'src/template/about/gdbj.html',
		type: "get",
		dataType: "html",
		contentType:contentType,
		success: function (data) {
			$('.about-right').empty();
			$('.about-right').html(data);
			$('#shzc').hide();
			$("#gd").addClass('active').siblings('a').removeClass('active');
		}
	});
}
//公司简介
function initGsjj(){
	$.ajax({
	    url: 'src/template/about/gsjj.html',
	    type: "get",
	    dataType: "html",
	    contentType:contentType,
	    success: function (data) {
	    	$('.about-right').empty();
	    	$('.about-right').html(data);
	    }
	});
}
//平台资质
function initPtzz(){
	$.ajax({
	    url: 'src/template/about/ptzz.html',
	    type: "get",
	    dataType: "html",
	    contentType:contentType,
	    success: function (data) {
	    	$('.about-right').empty();
	    	$('.about-right').html(data);
	    	$('#zizhi').hide();
	    	$('.title-link a').click(function(){
	    		if($(this).hasClass('active')){
	    			return;
	    		}
	    		var index = $(this).index();
	    		$(this).addClass('active').siblings('a').removeClass('active');
	    		$('.content').hide().eq(index).show();
	    	})
	    	$('.credit-pic').hover(function() {
	    	  	$(this).children('span').hide().fadeIn(500);
	    	  }, function() {
	    	  	$(this).children('span').hide().fadeOut(500);
	    	  });
	    	
	    	
	    	var zz = [],zzSize = $('#zizhi img').size();
	    	for(var i=0;i<zzSize;i++){
	    		zz.push($('#zizhi img').eq(i).attr('src'));
	    	}
	    	
	    	$('#zizhi .credit-pic').click(function(){
	    		var index = $(this).index();
	    		new picBanner(zz,index);
	    	});
	    	
	    	
	    }
	});
}

function zjPicBanner(index){
	var zj = [],zjSize = $('#zhengjian img').size();
	for(var i=0;i<zjSize;i++){
		zj.push($('#zhengjian img').eq(i).attr('src'));
	}
	new picBanner(zj,index);
}

function picBanner(zj,index){
	this.array = zj;
	this.maxLength = zj.length;
	this.showIndex = index;
	this.init();
}
picBanner.prototype.init = function(){
	var _this = this;
	_this.oBanner = $('<div class="oBanner-box"></div>');
	_this.overlay = $('<div class="overlay-img"></div>').appendTo(_this.oBanner).click(function(){
		_this.oBanner.remove();
	});
	_this.oImgBox = $('<div class="oImg-box"><img id="imgLoad" /></div>');
	_this.nextBox = $('<a href="javascript:;" class="is-next"></a>').appendTo(_this.oBanner).click(function(){
		_this.next();
	});
	_this.prevBox = $('<a href="javascript:;" class="is-prev"></a>').appendTo(_this.oBanner).click(function(){
		_this.prev();
	});
	_this.oImgBox.appendTo(_this.oBanner);
	_this.oBanner.appendTo($('body'));
	_this.showImg();
}
picBanner.prototype.showImg = function(){
	var _this = this;
	$('#imgLoad').attr('src',this.array[this.showIndex]);
	var imgW = $('#imgLoad')[0].offsetWidth;
	var imgH = $('#imgLoad')[0].offsetHeight;
	_this.oImgBox.css({
		'width':imgW,
		'height':imgH,
		'margin-left':-imgW/2+'px',
		'margin-top':-imgH/2+'px'
	});
	$(this).fadeIn();
}
picBanner.prototype.next = function(){
	this.showIndex++;
	if(this.showIndex>=this.maxLength)
		this.showIndex = 0;
	this.showImg();
}
picBanner.prototype.prev = function(){
	this.showIndex--;
	if(this.showIndex<0)
		this.showIndex = this.maxLength-1;
	this.showImg();
}
//顾问团队
function initGwtd(){
	$.ajax({
	    url: 'src/template/about/gwtd.html',
	    type: "get",
	    dataType: "html",
	    contentType:contentType,
	    success: function (data) {
	    	$('.about-right').empty();
	    	$('.about-right').html(data);
	    	$('#shiwu').hide();
	    	$('.title-link a').click(function(){
	    		if($(this).hasClass('active')){
	    			return;
	    		}
	    		var index = $(this).index();
	    		$(this).addClass('active').siblings('a').removeClass('active');
	    		$('.content').hide().eq(index).show();
	    	})
	    }
	});
}
//管理团队
function initGltd(){
	$.ajax({
	    url: 'src/template/about/gltd.html',
	    type: "get",
	    dataType: "html",
	    contentType:contentType,
	    success: function (data) {
	    	$('.about-right').empty();
	    	$('.about-right').html(data);
	    }
	});
}
//公司动态
function initGsd(){
	$.ajax({
	    url: 'src/template/about/gsdt.html',
	    type: "get",
	    dataType: "html",
	    contentType:contentType,
	    success: function (data) {
	    	$('.about-right').empty();
	    	$('.about-right').html(data);
	    	$('#xy').hide();
	    	$('#gd1').hide();
	    	
	    	$('#gsdt').click(function(){
	    		if($(this).hasClass('active')){
	    			return;
	    		}
	    		$(this).addClass('active').siblings('a').removeClass('active');
	    		$('.em-line').animate({'left':'0'},500);
	    		initGsdt();
	    	});
	    	$('#xyxw').click(function(){
	    		if($(this).hasClass('active')){
	    			return;
	    		}
	    		$(this).addClass('active').siblings('a').removeClass('active');
	    		$('.em-line').animate({'left':'120px'},500);
	    		initXyxw();
	    	});
	    	
	    	if(utils.getUrlParam('type')){
	    		initXyxw();
	    		$('#xyxw').addClass('active').siblings('a').removeClass('active');
	    		$('.em-line').animate({'left':'120px'},500);
	    	}else{
	    		initGsdt();
	    		$('#gsdt').addClass('active').siblings('a').removeClass('active');
	    		$('.em-line').animate({'left':'0'},500);
	    	}
	    }
	});
}
//公司动态
function initGsdt(){
	$('#gd1').show();
	$('#xy').hide();
	var dataList = [
	                {
	                	key:'',resolve:function(val,record){
	                		var oDiv = '<img class="news-img" src="'+record.imgPath+'" width="200" height="120" />'+
	                				'<div class="news-content">'+
	                					'<a href="news.html?id='+record.id+'" class="news-title">'+record.title+'</a>'+
	                					'<p class="news-about">'+strChina(record.content)+'</p>'+
	                					'<p class="news-time">'+strTime(record.publishTime)+'</p></div>';
	                		return oDiv;
	                	}
	                }
	                ]
	var oPage = new Page('../app/getMediaReport.do',{},$('#gd1 .listData'),$('#gd1 .paging'),dataList,function(){});
}
//媒体报道
function  initXyxw(){
	$('#gd1').hide();
	$('#xy').show();
	var dataList = [
	                {
	                	key:'',resolve:function(val,record){
	                		var oDiv = '<img class="news-img" src="'+record.imgPath+'" width="200" height="120" />'+
	                				'<div class="news-content">'+
	                					'<a href="news.html?id='+record.id+'&type=1" class="news-title">'+record.title+'</a>'+
	                					'<p class="news-about">'+strChina(record.content)+'</p>'+
	                					'<p class="news-time">'+strTime(record.publishTime)+'</p></div>';
	                		return oDiv;
	                	}
	                }
	                ]
	var oPage = new Page('../app/getIndustryNews.do',{},$('#xy .listData'),$('#xy .paging'),dataList,function(){});
}


//平台公告
function initPtgg(){
	$.ajax({
	    url: 'src/template/about/ptgg.html',
	    type: "get",
	    dataType: "html",
	    contentType:contentType,
	    success: function (data) {
	    	$('.about-right').empty();
	    	$('.about-right').html(data);
	    	var dataList = [
	    	                {
	    	                	key:'',resolve:function(val,record){
	    	                		var oLi = '<a href="news.html?id='+record.id+'&flag=1" target="_blank" class="title">'+record.title+'</a><span class="time">'+strTime(record.publishTime)+'</span>';
	    	                		return oLi;
	    	                	}
	    	                }
	    	                ]
	    	var param = {
	    			announcementType:''
	    	}
	    	var oPage = new Page('../app/queryNewsList.do',param,$('#ptgg .listData'),$('#ptgg .paging'),dataList,function(){});
	    }
	});
}
//招贤纳士
function initZxns(){
	$.ajax({
	    url: 'src/template/about/zxns.html',
	    type: "get",
	    dataType: "html",
	    contentType:contentType,
	    success: function (data) {
	    	$('.about-right').empty();
	    	$('.about-right').html(data);
	    	$('.zx-jobs').click(function(){
	    		$(this).next('.jobs-box').slideToggle();
	  	  	})

	    }
	});
}

//联系我们
function initLxwm(){
	$.ajax({
	    url: 'src/template/about/lxwm.html',
	    type: "get",
	    dataType: "html",
	    contentType:contentType,
	    success: function (data) {
	    	$('.about-right').empty();
	    	$('.about-right').html(data);
	  	  loadScript();
	    }
	});
}
//地图
function initMap() {
	var center = new qq.maps.LatLng(25.835780,114.935317);
    var map = new qq.maps.Map(document.getElementById('map'),{
        center: center,
        zoom: 16
    });
    //创建marker
    var marker = new qq.maps.Marker({
        position: center,
        map: map
    });
}
function loadScript() {
  var script = document.createElement("script");
  script.type = "text/javascript";
  script.src = "http://map.qq.com/api/js?v=2.exp&callback=initMap";
  document.body.appendChild(script);
}
//时间格式化
function strTime(time){
	return time.substring(0,10);
}
//匹配新闻中的中文字符
function strChina(str){
	return str.replace(/<[^>]+>|\n+\s+|&nbsp;/g,"").substring(0,60)+'...';
}

//查看平台服务协议
function AgreeMent(){
	var id = '31';
	$('.AgreeMent .title').text('普金资本服务协议');
	utils.Dialog(true);
	$('.AgreeMent').fadeIn();
	$('.AgreeMent .close').click(function(){
		$('.AgreeMent').hide();
		utils.Dialog();
	});
	$('.AgreeMent .popup-area').empty();
	var param={"info":"{TypeId:'"+id+"'}"};
	utils.ajax({
        url:'../app/querytips.do',
        data:param,
        dataType:'json',
        success: function(data){
        	if(data.error == '0'){
        		$('.AgreeMent .popup-area').html(data.content);
        		
        	}
        }
    })
}

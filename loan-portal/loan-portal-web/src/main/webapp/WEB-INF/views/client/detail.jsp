<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<link rel="icon" href="<%=path %>/images/logo.jpg" type="image/x-icon"/> 
<title>鸿金金融</title> 
<link rel="stylesheet" type="text/css" href="<%=path %>/client/style.css">
<script type="text/javascript" src="<%=path %>/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=path %>/js/all.js"></script>
</head>
<body>
<jsp:include flush="true" page="top.jsp"></jsp:include>
<!-- end  -->
<div class="zxcf_detail_wper">
	  <div class="zxcf_detail px1000">
	  	     <div class="detail_intro clearfix">
	  	     	    <div class="detail_intro_l fl">
	  	     	    	  <div class="detail_introl_tit clearfix">
	  	     	    	  	  <div class="det_introl_tit_l fl">
	  	     	    	  	  	   <span>抵押</span> 购车借款23万第2标13万
	  	     	    	  	  </div>
	  	     	    	  	  <!-- end l -->
	  	     	    	  	  <div class="det_introl_tit_r fr">
	  	     	    	  	  	  保障级别：A级 <img src="<%=path %>/images/det_wenhao.png" alt="">
	  	     	    	  	  </div>
	  	     	    	  </div>
	  	     	    	  <!-- end tit -->
	  	     	    	  <div class="det_intro_text mr20">
	  	     	    	  	    <ul class="det_intro_tul clearfix">
	  	     	    	  	    	<li>
	  	     	    	  	    		 年华收益<br>
	  	     	    	  	    		 <span style="color:#ff7112;">
	  	     	    	  	    		 	 <strong>12</strong>% 年华
	  	     	    	  	    		 </span>
	  	     	    	  	    	</li>
	  	     	    	  	    	<li>
	  	     	    	  	    		 项目期限<br>
	  	     	    	  	    		 <span>
	  	     	    	  	    		 	 <strong>12</strong>个月
	  	     	    	  	    		 </span>
	  	     	    	  	    	</li>
                                    <li>
	  	     	    	  	    		 项目规模<br>
	  	     	    	  	    		 <span >
	  	     	    	  	    		 	 <strong>1000</strong>万
	  	     	    	  	    		 </span>
	  	     	    	  	    	</li>

	  	     	    	  	    </ul>
	  	     	    	  	    <!-- end  -->
	  	     	    	  	    <ul class="det_intro_tul2 clearfix">
	  	     	    	  	    	<li>
	  	     	    	  	    		发布日期：2015-07-08
	  	     	    	  	    	</li>
	  	     	    	  	    	<li>
	  	     	    	  	    	    还款方式：按月付息，到期还本
	  	     	    	  	    	</li>
	  	     	    	  	    	<li>
	  	     	    	  	    		 还款日期：2016-07-11
	  	     	    	  	    	</li>
	  	     	    	  	    	<li>
	  	     	    	  	    		保障机构：北京国能小额贷款股份公司
	  	     	    	  	    	</li>
	  	     	    	  	    </ul>
	  	     	    	  </div>
	  	     	    	  <!-- end text -->
	  	     	    </div>
	  	     	    <div class="detail_intro_r fr">
	  	     	    	  <h2 class="det_intro_h2 clearfix"><span class="fl">投资进度:</span><em class="fr">46.05%</em></h2>
	  	     	    	  <div class="jklb_press_wper">
                                                	 	  <div class="jklb_press">
                                                	 	  	  
                                                	 	  </div>
                          </div>
                          <!--  -->
                          <p class="det_rzye clearfix"><span class="fl">融资余额</span><em class="fr"><strong>1,078,121.00</strong>元</em></p>
                          <p class="det_input">
                          	  <input type="text" id="qian" placeholder="100">
                          	  <input type="hidden" id="uid" value="${customer.uid }">
                          	  <input type="hidden" id="lid" value="${requestScope.lid }">
                          </p>
                          <p class="det_shouyi">每投资1万元收益<strong>183.33元</strong></p>
                          <span id="err" style="color: red"></span>
                          <p><a href="javascript:void(0)" class=" pro_btn det_btn" onclick="touzi()">立即投资</a></p>
	  	     	    </div>
	  	     </div>
	  	     <!-- end block1 -->
	  	     <div class="detail_con mt30">
	  	     	   <h2 class="detail_con_tit clearfix">
	  	     	   	   <span class="det_tit_curspan">项目描述</span>
	  	     	   	   <span>风控信息</span>
	  	     	   	   <span>贷后管理</span>
	  	     	   	   <span>投标记录<i>10</i></span>
	  	     	   </h2>
	  	     	   <div class="det_con_box">
	  	     	   	      <div class="det_con_proone clearfix">
	  	     	   	           <div class="det_l_box fl">

	  	     	   	            <div class="det_proone_l">
	  	     	   	            	   <h2 class="det_proone_tit">借款企业</h2>
	  	     	   	            	   <div class="det_clsj ">
	  	     	   	            	   	   <p>成立时间：<strong>2012-05-02</strong></p>
	  	     	   	            	   <p ><span style="margin-right:150px;">公司地址：<strong>云南省</strong ></span>所属行业：<strong>珠宝行业</strong>
	  	     	   	            	   </p>
	  	     	   	            	   </div>
	  	     	   	            	   <div class="det_clsj ">
	  	     	   	            	     <img src="<%=path %>/images/det_pic01.png" alt="">
	  	     	   	            	   </div>
	  	     	   	            	    <div class="det_clsj ">
	  	     	   	            	     <img src="<%=path %>/images/det_pic02.png" alt="">
	  	     	   	            	   </div>
	  	     	   	            	   <h2 class="det_proone_tit mt30">基本信息</h2>
	  	     	   	            	    <div class="det_clsj ">
	  	     	   	            	         <ul class="det_clsj_ul">
	  	     	   	            	         	<li>融资企业：厦门食品有限公司</li>
	  	     	   	            	         	<li>
	  	     	   	            	         		注册资金：人名币50万元整
	  	     	   	            	         	</li>
	  	     	   	            	         	<li>融资企业：厦门食品有限公司</li>
	  	     	   	            	         	<li>
	  	     	   	            	         		注册资金：人名币50万元整
	  	     	   	            	         	</li>
	  	     	   	            	         	<li>融资企业：厦门食品有限公司</li>
	  	     	   	            	         	<li>
	  	     	   	            	         		注册资金：人名币50万元整
	  	     	   	            	         	</li>
	  	     	   	            	         	<li>融资企业：厦门食品有限公司</li>
	  	     	   	            	         	<li>
	  	     	   	            	         		注册资金：人名币50万元整
	  	     	   	            	         	</li>
	  	     	   	            	         	<li>融资企业：厦门食品有限公司</li>
	  	     	   	            	         	<li>
	  	     	   	            	         		注册资金：人名币50万元整
	  	     	   	            	         	</li>
	  	     	   	            	         	<li>融资企业：厦门食品有限公司</li>
	  	     	   	            	         	<li>
	  	     	   	            	         		注册资金：人名币50万元整
	  	     	   	            	         	</li>

	  	     	   	            	         </ul>
	  	     	   	            	    </div>
	  	     	   	            	     <h2 class="det_proone_tit mt30">企业经营状况</h2>
	  	     	   	            	     <div class="det_clsj">
	  	     	   	            	     	 厦门食品有限公司于1999年6月厦门工商局登记注册，公司的办公地址位于厦门市同安区轻工业园区
	  	     	   	            	     </div>
	  	     	   	            	     <h2 class="det_proone_tit mt30">财务状况</h2>
	  	     	   	            	     <div class="det_clsj">
	  	     	   	            	     	 厦门食品有限公司于1999年6月厦门工商局登记注册，公司的办公地址位于厦门市同安区轻工业园区
	  	     	   	            	     </div>
	  	     	   	            </div>
	  	     	   	            <!-- end 项目描述 -->
	  	     	   	            <div class="det_proone_l" style="display:none;">
	  	     	   	            	 <h2 class="det_proone_tit">项目评估</h2>
	  	     	   	            	 <!--  -->
	  	     	   	            	 <div class="company-msg-option ppd-company-option2 show">
	  	     	   	            	 <div class="project-assess clearfix">
                                <ul class="project-assess-pt1">
                                    <li>
                                        <div class="small-tit">基本信息</div>
                                        <div class="progress-bar">
                                            <div class="progress-bar-in" style="width:93%"></div>
                                        </div>
                                        <div class="progress-bar-txt">93分</div>
                                    </li>
                                    <li>
                                        <div class="small-tit">财务实力</div>
                                        <div class="progress-bar">
                                            <div class="progress-bar-in" style="width:89%"></div>
                                        </div>
                                        <div class="progress-bar-txt">89分</div>
                                    </li>
                                    <li>
                                        <div class="small-tit">经营情况</div>
                                        <div class="progress-bar">
                                            <div class="progress-bar-in" style="width:93%"></div>
                                        </div>
                                        <div class="progress-bar-txt">93分</div>
                                    </li>
                                    <li>
                                        <div class="small-tit">偿还能力</div>
                                        <div class="progress-bar">
                                            <div class="progress-bar-in" style="width:95%"></div>
                                        </div>
                                        <div class="progress-bar-txt">95分</div>
                                    </li>
                                    <li>
                                        <div class="small-tit">实际控制人</div>
                                        <div class="progress-bar">
                                            <div class="progress-bar-in" style="width:89%"></div>
                                        </div>
                                        <div class="progress-bar-txt">89分</div>
                                    </li>
                                </ul>
                                <div class="project-assess-pt2" style=" color: #ff5a00;">
                                    <p class="p1">92<span class="small-txt" style="font-size:12px;">分</span></p>
                                    <p class="p2">综合信用评分</p>
                                </div>
                                <div class="project-assess-pt3" >
                                    <p class="p1">AAA</p>
                                    <p class="p2">综合信用等级</p>                                
                                </div>
                            </div>
                            </div>
                            <!--  -->
                                   <h2 class="det_proone_tit">项目保障</h2>
                                   <!--  -->

                                    <div class="prject-guarantee">
                                <dl class="dl1 clearfix">
                                    <dt>担保方</dt>
                                    <dd><em class="company-logo-sprite" style="background:url(https://dn-licaifan-upload.qbox.me/uploads/admin/e9fb6a4feac008a08ab67dc3dc2244a2.png)"></em><span><a href="/vouch/detail/8" target="_blank">金达融资担保有限责任公司</a></span></dd>
                                </dl>
                                <dl class="dl2 clearfix">
                                    <dt style="height:200px;line-height:20px;">保障措施</dt>
                                    <dd>
                                        <p>1、担保机构提供不可撤销的连带责任担保，对本息100%保障；</p><p>2、担保机构按规定计提30%的担保费作为风险保障金，由理财范与担保公司共同监管；</p><p>3、借款企业提供足值抵押物；</p><p>4、借款企业实际控制人向债权人提供连带保证；</p><p>5、北京***企业提供连带保证。</p><p><br></p>                                    </dd>
                                </dl>
                            </div>
                                   <!--  -->
                                     <h2 class="det_proone_tit">抵押物信息</h2>
                                     <div class="det_dywxx_ul">借款企业提供一处面积为6308.97平方米、评估价值2086.38万元的房产作抵押。</div>
                                     <!-- end 抵押物信息 -->
                                     <h2 class="det_proone_tit">风险控制措施</h2>
                                     <ul class="det_dywxx_ul">
                                     	 <li>1、借款企业提供足值的抵押物；</li>
											<li>2、借款企业法人提供个人连带保证；</li>
											<li>3、北京***企业提供连带保证；</li>
											<li>4、担保公司及理财范平台将执行严格的贷后管理制度。</li>
                                     </ul>
                                     <!-- end 风险控制 -->
                                      <h2 class="det_proone_tit">担保机构意见</h2>
                                     <div class="det_dywxx_ul">借款企业提供一处面积为6308.97平方米、评估价值2086.38万元的房产作抵押。</div>
                                     <!-- end 抵押物信息 -->
	  	     	   	            </div>
	  	     	   	            <!-- end fk -->
	  	     	   	            <div class="det_proone_l" style="display:none;">
	  	     	   	            	 <h2 class="det_proone_tit">放款通知</h2>
	  	     	   	            	 <p class="dhgl_p1"><img src="<%=path %>/images/1.jpg" alt="">融资成功,企业正在还款</p>
	  	     	   	            	 <h2 class="det_proone_tit">还款概况</h2>
	  	     	   	            	 <ul  class="dhgl_ul">
	  	     	   	            	 	 <li>
	  	     	   	            	 	    <img src="<%=path %>/images/2.jpg" alt="">
	  	     	   	            	 	    <span>应付利息</span>
	  	     	   	            	 	    <span>123213.4元（12期）</span>
	  	     	   	            	 	 </li>
	  	     	   	            	 	 <li>
	  	     	   	            	 	    &nbsp;<img src="<%=path %>/images/3.jpg" alt="">
	  	     	   	            	 	    <span>应付利息</span>
	  	     	   	            	 	    <span>123213.4元（12期）</span>
	  	     	   	            	 	 </li>
	  	     	   	            	 	 <li>
	  	     	   	            	 	    &nbsp;<img src="<%=path %>/images/4.jpg" alt="">
	  	     	   	            	 	    <span>应付利息</span>
	  	     	   	            	 	    <span>123213.4元（12期）</span>
	  	     	   	            	 	 </li>
	  	     	   	            	 	 <li>
	  	     	   	            	 	    <img src="images/5.jpg" alt="">
	  	     	   	            	 	    <span>应付利息</span>
	  	     	   	            	 	    <span>123213.4元（12期）</span>
	  	     	   	            	 	 </li>

	  	     	   	            	 </ul>
	  	     	   	            	 <h2 class="det_proone_tit">还款明细</h2>
                                     <div class="pl20 pr20 pt20">
                                       <table class="dhgl_table">
	  	     	   	            	 	 <tr style="border-bottom:none;">
	  	     	   	            	 	 	 <th>还款日期</th>
	  	     	   	            	 	 	 <th>还款类型</th>
	  	     	   	            	 	 	 <th>还款金额</th>
	  	     	   	            	 	 	 <th>还款状态</th>
	  	     	   	            	 	 </tr>
	  	     	   	            	 	 <tr>
	  	     	   	            	 	 	  <td>2015-11</td>
	  	     	   	            	 	 	  <td>利息</td>
	  	     	   	            	 	 	  <td>82333.23元</td>
	  	     	   	            	 	 	  <td>未到期</td>
	  	     	   	            	 	 </tr>
	  	     	   	            	 	 <tr>
	  	     	   	            	 	 	  <td>2015-11</td>
	  	     	   	            	 	 	  <td>利息</td>
	  	     	   	            	 	 	  <td>82333.23元</td>
	  	     	   	            	 	 	  <td>未到期</td>
	  	     	   	            	 	 </tr>
	  	     	   	            	 	 <tr>
	  	     	   	            	 	 	  <td>2015-11</td>
	  	     	   	            	 	 	  <td>利息</td>
	  	     	   	            	 	 	  <td>82333.23元</td>
	  	     	   	            	 	 	  <td>未到期</td>
	  	     	   	            	 	 </tr>
	  	     	   	            	 	 <tr>
	  	     	   	            	 	 	  <td>2015-11</td>
	  	     	   	            	 	 	  <td>利息</td>
	  	     	   	            	 	 	  <td>82333.23元</td>
	  	     	   	            	 	 	  <td>未到期</td>
	  	     	   	            	 	 </tr>
	  	     	   	            	 	 <tr>
	  	     	   	            	 	 	  <td>2015-11</td>
	  	     	   	            	 	 	  <td>利息</td>
	  	     	   	            	 	 	  <td>82333.23元</td>
	  	     	   	            	 	 	  <td>未到期</td>
	  	     	   	            	 	 </tr>
	  	     	   	            	 	 <tr>
	  	     	   	            	 	 	  <td>2015-11</td>
	  	     	   	            	 	 	  <td>利息</td>
	  	     	   	            	 	 	  <td>82333.23元</td>
	  	     	   	            	 	 	  <td>未到期</td>
	  	     	   	            	 	 </tr>
	  	     	   	            	   </table>
	  	     	   	            	 </div>
	  	     	   	            	 
	  	     	   	            </div>
	  	     	   	            <!-- end dhgl -->
	  	     	   	            <div class="det_proone_l" style="display:none;">
	  	     	   	            	  <P class="det_tbjl_tit">
	  	     	   	            	     <span class="mr30"><img src="<%=path %>/images/det_tbjl_pic01.png" alt=""> 
	  	     	   	            	     目前总金额：￥21,122.00</span>
	  	     	   	            	     <span><img src="<%=path %>/images/det_tbjl_pic02.png" alt=""> 
	  	     	   	            	     剩余金额：￥123,123.00</span>
	  	     	   	            	  </P>
	  	     	   	            	  <table class="det_table">
	  	     	   	            	  	  <tr class="det_table_head" style="height:40px;">
	  	     	   	            	  	  	  <td>投资用户</td>
	  	     	   	            	  	  	  <td>投资金额</td>
	  	     	   	            	  	  	  <td class="det_w1160">投资时间</td>
	  	     	   	            	  	  	  <td>状态</td>
	  	     	   	            	  	  </tr>
	  	     	   	            	  	  <tr>
	  	     	   	            	  	  	  <td>0****</td>
	  	     	   	            	  	  	  <td>10000.00元</td>
	  	     	   	            	  	  	  <td>2015-07-08 18:08:05</td>
	  	     	   	            	  	  	  <td>手动投标</td>
	  	     	   	            	  	  </tr>
                                          <tr>
	  	     	   	            	  	  	  <td>0****</td>
	  	     	   	            	  	  	  <td>10000.00元</td>
	  	     	   	            	  	  	  <td>2015-07-08 18:08:05</td>
	  	     	   	            	  	  	  <td>手动投标</td>
	  	     	   	            	  	  </tr>
                                          <tr>
	  	     	   	            	  	  	  <td>0****</td>
	  	     	   	            	  	  	  <td>10000.00元</td>
	  	     	   	            	  	  	  <td>2015-07-08 18:08:05</td>
	  	     	   	            	  	  	  <td>手动投标</td>
	  	     	   	            	  	  </tr>
                                          <tr>
	  	     	   	            	  	  	  <td>0****</td>
	  	     	   	            	  	  	  <td>10000.00元</td>
	  	     	   	            	  	  	  <td>2015-07-08 18:08:05</td>
	  	     	   	            	  	  	  <td>手动投标</td>
	  	     	   	            	  	  </tr>
                                          <tr>
	  	     	   	            	  	  	  <td>0****</td>
	  	     	   	            	  	  	  <td>10000.00元</td>
	  	     	   	            	  	  	  <td>2015-07-08 18:08:05</td>
	  	     	   	            	  	  	  <td>手动投标</td>
	  	     	   	            	  	  </tr>
                                          <tr>
	  	     	   	            	  	  	  <td>0****</td>
	  	     	   	            	  	  	  <td>10000.00元</td>
	  	     	   	            	  	  	  <td>2015-07-08 18:08:05</td>
	  	     	   	            	  	  	  <td>手动投标</td>
	  	     	   	            	  	  </tr>
                                          <tr>
	  	     	   	            	  	  	  <td>0****</td>
	  	     	   	            	  	  	  <td>10000.00元</td>
	  	     	   	            	  	  	  <td>2015-07-08 18:08:05</td>
	  	     	   	            	  	  	  <td>手动投标</td>
	  	     	   	            	  	  </tr>
                                          <tr>
	  	     	   	            	  	  	  <td>0****</td>
	  	     	   	            	  	  	  <td>10000.00元</td>
	  	     	   	            	  	  	  <td>2015-07-08 18:08:05</td>
	  	     	   	            	  	  	  <td>手动投标</td>
	  	     	   	            	  	  </tr>
                                          <tr>
	  	     	   	            	  	  	  <td>0****</td>
	  	     	   	            	  	  	  <td>10000.00元</td>
	  	     	   	            	  	  	  <td>2015-07-08 18:08:05</td>
	  	     	   	            	  	  	  <td>手动投标</td>
	  	     	   	            	  	  </tr>
                                          <tr>
	  	     	   	            	  	  	  <td>0****</td>
	  	     	   	            	  	  	  <td>10000.00元</td>
	  	     	   	            	  	  	  <td>2015-07-08 18:08:05</td>
	  	     	   	            	  	  	  <td>手动投标</td>
	  	     	   	            	  	  </tr>
                                          
	  	     	   	            	  </table>
	  	     	   	            </div>
	  	     	   	            <!-- end tbjl -->
	  	     	   	           </div> 
	  	     	   	            <!-- end l -->

	  	     	   	      	    <div class="det_proone_r fl">
	  	     	   	      	    	   <h3>项目资质审核</h3>
	  	     	   	      	    	   <ul class="det_proone_rul">
	  	     	   	      	    	   	   <li class="clearfix">
	  	     	   	      	    	   	   	  <span class="fl mr15">
	  	     	   	      	    	   	   	  	  <img src="<%=path %>/images/det_dbh01.png" alt=""><br><br>
	  	     	   	      	    	   	   	  	  担保函
	  	     	   	      	    	   	   	  	  
	  	     	   	      	    	   	   	  </span>
	  	     	   	      	    	   	   	   <span class="fl">
	  	     	   	      	    	   	   	  	  <img src="<%=path %>/images/det_dbh02.png" alt=""><br><br>
	  	     	   	      	    	   	   	  	  身份证
	  	     	   	      	    	   	   	  	 
	  	     	   	      	    	   	   	  </span>
	  	     	   	      	    	   	   </li>
	  	     	   	      	    	   	   <li class="clearfix">
	  	     	   	      	    	   	   	  <span class="fl mr15">
	  	     	   	      	    	   	   	  	  <img src="<%=path %>/images/det_dbh01.png" alt=""><br><br>
	  	     	   	      	    	   	   	  	  担保函
	  	     	   	      	    	   	   	  	  
	  	     	   	      	    	   	   	  </span>
	  	     	   	      	    	   	   	   <span class="fl">
	  	     	   	      	    	   	   	  	  <img src="<%=path %>/images/det_dbh02.png" alt=""><br><br>
	  	     	   	      	    	   	   	  	  身份证
	  	     	   	      	    	   	   	  	 
	  	     	   	      	    	   	   	  </span>
	  	     	   	      	    	   	   </li>
	  	     	   	      	    	   </ul>
	  	     	   	      	    </div>
	  	     	   	      	    <!-- end r -->
	  	     	   	      </div>
	  	     	   	      <!-- end 项目描述 -->
	  	     	   	      
	  	     	   </div>
	  	     </div>
	  	     <!-- end block2 -->
	  	     <!-- 用户评论开始 -->
	  	     <div class="det_comment mt30">
	  	     	   <h2 class="det_comment_tit">用户评论</h2>
	  	     	   <div class="det_comment_text clearfix">
	  	     	   	   <div class="comment_l fl pl30">
	  	     	   	   	   <img src="images/comment_pic02.png" alt="">
	  	     	   	   </div>
	  	     	   	   <!-- end l -->
	  	     	   	   <div class="comment_r fl ml20">
	  	     	   	   	   <textarea name="" id="" cols="30" rows="10"></textarea>
	  	     	   	   </div>
	  	     	   	   <!-- end r -->
	  	     	   </div>
	  	     	   <div class="comment_btn clearfix">
	  	     	   	   <a href="#" class="det_btn">提交</a>
	  	     	   </div>
	  	     	   <div class="comment_show">
	  	     	   	     <ul class="comment_show_ul">
	  	     	   	     	 <li class="clearfix">
	  	     	   	     	 <span class="fl mr30">
	  	     	   	     	   <img src="images/comment_pic03.png" alt="">	
	  	     	   	     	 </span>
	  	     	   	     	 <div class="fl ml">
	  	     	   	     	 	  <h3>发布的风向 标</h3>
	  	     	   	     	 	  <p><img src="images/comment_pic04.png" alt=""></p>
	  	     	   	     	 	  <p>前天 13:40</p>
	  	     	   	     	 </div>
	  	     	   	     	 </li>
	  	     	   	     	 <li class="clearfix">
	  	     	   	     	 <span class="fl mr30">
	  	     	   	     	   <img src="images/comment_pic03.png" alt="">	
	  	     	   	     	 </span>
	  	     	   	     	 <div class="fl ml">
	  	     	   	     	 	  <h3>发布的风向 标</h3>
	  	     	   	     	 	  <p><img src="images/comment_pic04.png" alt=""></p>
	  	     	   	     	 	  <p>前天 13:40</p>
	  	     	   	     	 </div>
	  	     	   	     	 </li>
	  	     	   	     </ul>
	  	     	   </div>
	  	     </div>
	  	     <!-- 用户评结束 -->
	  </div>
</div>
<jsp:include flush="true" page="bottom.jsp"></jsp:include>
</body>
<script>
	function touzi(){
		var qian = $("#qian").val();
		var id = $("#uid").val();
		var lid = $("#lid").val();
		var lid1 = lid.substring(1,lid.length-1)
		if(qian==null || qian==""){
			$("#err").html("请输入投资金额！");
		}else if(isNaN(qian)){
			$("#err").html("输入金额有误！");
		}else{
			 $.post("<%=path%>/client/pay1",{'qian':qian,'id':id,'lid':lid1},function(index){ 
			  		if(index.success){
			  			window.location.href="<%=path%>/client/pay?qian="+qian+"&id="+id+"&lid="+lid1;
			  		}else if(index.result=="err1"){
			  			$("#err").html("未添加银行卡！");
			  		}else if(index.result=="err2"){
			  			$("#err").html("该用户已经投过此标了！");
			  		}else {
			  			alert("投标失败")
			  		}
			 },"json") 
		}
	}
</script>
</html>
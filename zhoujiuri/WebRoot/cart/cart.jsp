<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri='/struts-tags' prefix='s'%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>

<script type="text/javascript">
	$(function(){
		$(".change").live("click",function(){
			
			location.href="<s:url value='/cart/CartAction_updateCart'/>?productid=" + $(this).next("span").text()+"&"+"amount=" + $(this).prev("input").val();
		});
	})
</script>

<!-- //引用 -->
<jsp:include page="../cart/reference.jsp"/>

</head>

<!-- //顶部 -->
<jsp:include page="../user/header.jsp"/>

<body>
   <div class="account-in">
   	 <div class="container">
		  <div class="check_box">	 
		
		<!-- //列表 -->
		 
		<div class="col-md-8 cart-items">
			 <h1>我的购物车 </h1>
			 <s:iterator value='#session.cart.values()'>
		 <s:if test="status=='yes'">
			 <div class="cart-header">
				 <a href="<s:url value='/cart/CartAction_deleteCart'/>?productid=<s:property value='id'/>" class="close1"></a>
				   <div class="cart-sec simpleCart_shelfItem">
						<div class="cart-item cyc">
							 <img src="${pageContext.request.contextPath}/user/images/<s:property value='imagepath'/>" class="img-responsive" alt=""/>
						</div>
					   <div class="cart-item-info">
						<h3><a href="<s:url value='/product/ProductAction_showProductById'/>?proid=<s:property value='id'/>"><s:property value='name' /></a>
						<span>产品编号 No: <s:property value='id'/></span></h3>
						<ul class="qty">
						    <li><p>优惠价 : <s:property value='dangdangprice'/></p></li>
						    <li><p><del>原价 : <s:property value='price'/></del></p></li>
							<li><p>数量 : <s:property value='amount'/></p></li>
							<input class="del_num" type="text" size="3" maxlength="4" id="num1" value=""/>
							<a href="javascript:;" class="change">变更</a><span style='display: none'><s:property value='id'/></span>
						</ul>
						<div class="delivery">
							 <p>价格 : ￥<s:property value='dangdangprice*amount'/></p>
							 <span>到货可能推迟2-3天</span>
							 <div class="clearfix"></div>
				        </div>	
					   </div>
					   <div class="clearfix"></div>
				    </div>
			 </div>	
			 </s:if>
		 </s:iterator>	
		 </div>
		 
		 
		 <!-- //总价 -->
		 <div class="col-md-3 cart-total">
			 <a class="continue" href="../main/index.jsp">继续购物</a>
			 <div class="price-details">
				 <h3>价格明细</h3>
				 <span>总金额</span>
				 <span class="total1"><s:property value='totalaccount+totaleconomy'/></span>
				 <span>优惠</span>
				 <span class="total1"><s:property value='totaleconomy'/></span>
				 <span>送货费用</span>
				 <span class="total1">---</span>
				 <div class="clearfix"></div>				 
			 </div>	
			 <ul class="total_price">
			   <li class="last_price"> <h4>总计</h4></li>	
			   <li class="last_price">￥<span><s:property value='totalaccount'/></span></li>
			   <div class="clearfix"> </div>
			 </ul>
			 <div class="clearfix"></div>
			 <a class="order" name='checkout' href='<s:url value='/order/OrderAction_showOrder'/>'>结算</a>
			</div>
			<div class="clearfix"></div>
	     </div>
	  </div>
   </div>

<!-- //底部 -->
<jsp:include page="../user/foot.jsp"/>

</body>
</html>		





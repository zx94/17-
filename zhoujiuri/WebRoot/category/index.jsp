<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri='/struts-tags' prefix='s'%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<body>
	<!-- //头部 -->
	<jsp:include page="../user/header.jsp" />

	<!-- /banner_bottom_agile_info -->
	<div class="page-head_agile_info_w3l">
		<div class="container">
			<h3>
				<s:property value='category.name' />
			</h3>
			<!--/w3_short-->
			<div class="services-breadcrumb">
				<div class="agile_inner_breadcrumb">

					<ul class="w3_short">
						<li><a href="../main/index.jsp">主页</a><i>|</i></li>
						<li><s:property value='category.name' />
						</li>
					</ul>
				</div>
			</div>
			<!--//w3_short-->
		</div>
	</div>

	<!-- banner-bootom-w3-agileits -->
	<div class="banner-bootom-w3-agileits">
		<div class="container">
			<!-- mens -->
			<div class="clearfix"></div>
			<div class="single-pro">
				<s:iterator value='books'>
					<div class="col-md-3 product-men">
						<div class="men-pro-item simpleCart_shelfItem">
							<div class="men-thumb-item">
								<img
									src="${pageContext.request.contextPath}/user/images/<s:property value='imagepath' />"
									alt="" class="pro-image-front"> <img
									src="${pageContext.request.contextPath}/user/images/<s:property value='imagepath' />"
									alt="" class="pro-image-back">
								<div class="men-cart-pro">
									<div class="inner-men-cart-pro">
										<a
											href="<s:url value='/product/ProductAction_showProductById'/>?proid=<s:property value='id'/>"
											class="link-product-add-cart"> 快速查看</a>
									</div>
								</div>
								<span class="product-new-top">New</span>

							</div>
							<div class="item-info-product ">
								<h4>
									<a
										href="<s:url value='/product/ProductAction_showProductById'/>?proid=<s:property value='id'/>"><s:property
											value='name' /> </a>
								</h4>
								<div class="info-product-price">
									<span class="item_price">￥<s:property
											value='dangdangprice' /> </span>
									<del>
										￥
										<s:property value='price' />
									</del>
								</div>
								<div
									class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
									<a title="购买" href="javascript:void(0)" class="buy"
										onclick="location='${pageContext.request.contextPath}/cart/CartAction_addCart?productid=<s:property value="id"/>'">
										<input type="submit" name="submit" value="添加购物车"
										class="button" /> </a>
								</div>
							</div>
						</div>
					</div>
				</s:iterator>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //mens -->

	<!-- //尾部 -->
	<jsp:include page="../user/foot.jsp" />

</body>
</html>


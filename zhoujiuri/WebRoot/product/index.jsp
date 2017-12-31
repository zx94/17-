<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri='/struts-tags' prefix='s'%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<!-- //CSS引用 -->
<jsp:include page="../user/referenceCss.jsp"/>
</head>
<body>
	<!-- //头部 -->
	<jsp:include page="../user/header.jsp" />
	<!-- //banner-top -->
	
	<!--/single_page-->
	<!-- /banner_bottom_agile_info -->
	<div class="page-head_agile_info_w3l">
		<div class="container">
			<h3>
				单品 <span>页面 </span>
			</h3>
			<!--/w3_short-->
			<div class="services-breadcrumb">
				<div class="agile_inner_breadcrumb">

					<ul class="w3_short">
						<li><a href="../main/index.jsp">主页</a><i>|</i>
						</li>
						<li>单品页面</li>
					</ul>
				</div>
			</div>
			<!--//w3_short-->
		</div>
	</div>

	<!-- banner-bootom-w3-agileits -->
	<div class="banner-bootom-w3-agileits">
		<div class="container">
			<div class="col-md-4 single-right-left ">
				<div class="grid images_3_of_2">
					<div class="flexslider">

						<ul class="slides">

							<div class="thumb-image">
								<img
									src="${pageContext.request.contextPath}/user/images/<s:property value='product.imagepath' />"
									data-imagezoom="true" class="img-responsive">
							</div>

						</ul>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<div class="col-md-8 single-right-left simpleCart_shelfItem">
				<h3>
					<s:property value="product.name" />
				</h3>
				<p>
					<span class="item_price">￥<s:property
							value='product.dangdangprice' /> </span>
					<del>
						- ￥
						<s:property value='product.price' />
					</del>
				</p>
				<div class="rating1">
					<span class="starRating"> <input id="rating5" type="radio"
						name="rating" value="5"> <label for="rating5">5</label> <input
						id="rating4" type="radio" name="rating" value="4"> <label
						for="rating4">4</label> <input id="rating3" type="radio"
						name="rating" value="3" checked=""> <label for="rating3">3</label>
						<input id="rating2" type="radio" name="rating" value="2">
						<label for="rating2">2</label> <input id="rating1" type="radio"
						name="rating" value="1"> <label for="rating1">1</label> </span>
				</div>
				<br>

				<div class="occasion-cart">
					<div
						class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
						<form action="#" method="post">
							<fieldset>
								<input type="hidden" name="cmd" value="_cart">
								<input type="hidden" name="add" value="1">
								<input type="hidden" name="business" value=" ">
								<input type="hidden" name="item_name" value="<s:property value='product.name' />">
								<input type="hidden" name="amount" value="<s:property value='product.price' />">
								<input type="hidden" name="discount_amount" value="<s:property value='product.price-product.dangdangprice' />">
								<input type="hidden" name="currency_code" value="CNY">
								<input type="hidden" name="return" value=" ">
								<input type="hidden" name="cancel_return" value=" ">
								<input type="submit" name="submit" value="添加购物车" class="button">
							</fieldset>
						</form>
					</div>
				</div>
				
				<ul
					class="social-nav model-3d-0 footer-social w3_agile_social single_page_w3ls">
					<li class="share">分享:</li>
					<li><a href="#" class="facebook">
							<div class="front">
								<i class="fa fa-weixin" aria-hidden="true"></i>
							</div>
							<div class="back">
								<i class="fa fa-weixin" aria-hidden="true"></i>
							</div>
					</a>
					</li>
					<li><a href="#" class="twitter">
							<div class="front">
								<i class="fa fa-qq" aria-hidden="true"></i>
							</div>
							<div class="back">
								<i class="fa fa-qq" aria-hidden="true"></i>
							</div>
					</a>
					</li>
					<li><a href="#" class="instagram">
							<div class="front">
								<i class="fa fa-weibo" aria-hidden="true"></i>
							</div>
							<div class="back">
								<i class="fa fa-weibo" aria-hidden="true"></i>
							</div>
					</a>
					</li>
					<li><a href="#" class="pinterest">
							<div class="front">
								<i class="fa fa-tencent-weibo" aria-hidden="true"></i>
							</div>
							<div class="back">
								<i class="fa fa-tencent-weibo" aria-hidden="true"></i>
							</div>
					</a>
					</li>
				</ul>

			</div>
			<div class="clearfix"></div>
			
			<!-- //new_arrivals -->

			<div class="w3_agile_latest_arrivals">
				<h3 class="wthree_text_info">
					特色 <span>新品</span>
				</h3>
				
				<div class="col-md-3 product-men single">
					<div class="men-pro-item simpleCart_shelfItem">
						<div class="men-thumb-item">
							<img src="${pageContext.request.contextPath}/user/images/a7.jpg" alt="" class="pro-image-front"> <img
								src="${pageContext.request.contextPath}/user/images/a7.jpg" alt="" class="pro-image-back">
							<div class="men-cart-pro">
								<div class="inner-men-cart-pro">
									<a
							href="<s:url value='/product/ProductAction_showProductById'/>?proid=27"
							class="link-product-add-cart">快速查看
										</a>
								</div>
							</div>
							<span class="product-new-top">New</span>

						</div>
						<div class="item-info-product ">
							<h4>
								<a href="<s:url value='/product/ProductAction_showProductById'/>?proid=27">百威啤酒银标大师798ml</a>
							</h4>
							<div class="info-product-price">
								<span class="item_price">￥179.0</span>
								<del>￥189.0</del>
							</div>
							<div
								class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
								<form action="#" method="post">
									<fieldset>
										<input type="hidden" name="cmd" value="_cart"> <input
											type="hidden" name="add" value="1"> <input
											type="hidden" name="business" value=" "> <input
											type="hidden" name="item_name"
											value="百威啤酒银标大师798ml"> <input
											type="hidden" name="amount" value="189.00"> <input
											type="hidden" name="discount_amount" value="10.00"> <input
											type="hidden" name="currency_code" value="CNY"> <input
											type="hidden" name="return" value=" "> <input
											type="hidden" name="cancel_return" value=" "> <input
											type="submit" name="submit" value="添加购物车"
											class="button">
									</fieldset>
								</form>
							</div>

						</div>
					</div>
				</div>
				<div class="col-md-3 product-men single">
					<div class="men-pro-item simpleCart_shelfItem">
						<div class="men-thumb-item">
							<img src="${pageContext.request.contextPath}/user/images/p7.jpg" alt="" class="pro-image-front"> <img
								src="${pageContext.request.contextPath}/user/images/p7.jpg" alt="" class="pro-image-back">
							<div class="men-cart-pro">
								<div class="inner-men-cart-pro">
									<a href="<s:url value='/product/ProductAction_showProductById'/>?proid=13" class="link-product-add-cart">快速查看</a>
								</div>
							</div>
							<span class="product-new-top">New</span>

						</div>
						<div class="item-info-product ">
							<h4>
								<a href="<s:url value='/product/ProductAction_showProductById'/>?proid=13">奔富Penfolds BIN9</a>
							</h4>
							<div class="info-product-price">
								<span class="item_price">￥208.0</span>
								<del>￥228.0</del>
							</div>
							<div
								class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
								<form action="#" method="post">
									<fieldset>
										<input type="hidden" name="cmd" value="_cart"> <input
											type="hidden" name="add" value="1"> <input
											type="hidden" name="business" value=" "> <input
											type="hidden" name="item_name" value="奔富Penfolds BIN9">
										<input type="hidden" name="amount" value="228.00"> <input
											type="hidden" name="discount_amount" value="20.00"> <input
											type="hidden" name="currency_code" value="CNY"> <input
											type="hidden" name="return" value=" "> <input
											type="hidden" name="cancel_return" value=" "> <input
											type="submit" name="submit" value="添加购物车"
											class="button">
									</fieldset>
								</form>
							</div>

						</div>
					</div>
				</div>
				<div class="col-md-3 product-men single">
					<div class="men-pro-item simpleCart_shelfItem">
						<div class="men-thumb-item">
							<img src="${pageContext.request.contextPath}/user/images/y7.jpg" alt="" class="pro-image-front"> <img
								src="${pageContext.request.contextPath}/user/images/y7.jpg" alt="" class="pro-image-back">
							<div class="men-cart-pro">
								<div class="inner-men-cart-pro">
									<a
							href="<s:url value='/product/ProductAction_showProductById'/>?proid=20"
							class="link-product-add-cart">快速查看</a>
								</div>
							</div>
							<span class="product-new-top">New</span>

						</div>
						<div class="item-info-product ">
							<h4>
								<a href="<s:url value='/product/ProductAction_showProductById'/>?proid=20">Dom Perignon Vintage</a>
							</h4>
							<div class="info-product-price">
								<span class="item_price">￥1120.0</span>
								<del>￥1200.0</del>
							</div>
							<div
								class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
								<form action="#" method="post">
									<fieldset>
										<input type="hidden" name="cmd" value="_cart"> <input
											type="hidden" name="add" value="1"> <input
											type="hidden" name="business" value=" "> <input
											type="hidden" name="item_name" value="Dom Perignon Vintage">
										<input type="hidden" name="amount" value="1200.00"> <input
											type="hidden" name="discount_amount" value="80.00"> <input
											type="hidden" name="currency_code" value="CNY"> <input
											type="hidden" name="return" value=" "> <input
											type="hidden" name="cancel_return" value=" "> <input
											type="submit" name="submit" value="添加购物车"
											class="button">
									</fieldset>
								</form>
							</div>

						</div>
					</div>
				</div>
				<div class="col-md-3 product-men single">
					<div class="men-pro-item simpleCart_shelfItem">
						<div class="men-thumb-item">
							<img src="${pageContext.request.contextPath}/user/images/b6.jpg" alt="" class="pro-image-front"> <img
								src="${pageContext.request.contextPath}/user/images/b6.jpg" alt="" class="pro-image-back">
							<div class="men-cart-pro">
								<div class="inner-men-cart-pro">
									<a
							href="<s:url value='/product/ProductAction_showProductById'/>?proid=6"
							class="link-product-add-cart">快速查看</a>
								</div>
							</div>
							<span class="product-new-top">New</span>

						</div>
						<div class="item-info-product ">
							<h4>
								<a href="<s:url value='/product/ProductAction_showProductById'/>?proid=6">心悠然天汲特酿</a>
							</h4>
							<div class="info-product-price">
								<span class="item_price">￥888.0</span>
								<del>￥1288.0</del>
							</div>
							<div
								class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
								<form action="#" method="post">
									<fieldset>
										<input type="hidden" name="cmd" value="_cart"> <input
											type="hidden" name="add" value="1"> <input
											type="hidden" name="business" value=" "> <input
											type="hidden" name="item_name" value="心悠然天汲特酿">
										<input type="hidden" name="amount" value="1288.00"> <input
											type="hidden" name="discount_amount" value="400.00"> <input
											type="hidden" name="currency_code" value="CNY"> <input
											type="hidden" name="return" value=" "> <input
											type="hidden" name="cancel_return" value=" "> <input
											type="submit" name="submit" value="添加购物车"
											class="button">
									</fieldset>
								</form>
							</div>

						</div>
					</div>
				</div>
				
				<div class="clearfix"></div>
				<!--//slider_owl-->
			</div>
		</div>
	</div>
	<!--//single_page-->

	<!-- //尾部 -->
	<jsp:include page="../user/foot.jsp" />

    <!-- //Js引用-->
    <jsp:include page="../user/referenceJs.jsp" />
</body>
</html>


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
					<span class="share item_price">￥<s:property
							value='product.dangdangprice' /> </span>
					<del>
						- ￥
						<s:property value='product.price' />
					</del>
				</p>
				
				品牌：<s:property value='product.author' /> <br>
				销量：<s:property value='product.sale' /> <br>
				上架时间：<s:property value='product.putaway' /> <br>
				产地：<s:property value='product.publish' /> <br>
				
				<br>

				<div class="occasion-cart">
					<div
						class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
						<a title="购买" href="javascript:void(0)" class="buy"
							onclick="location='${pageContext.request.contextPath}/cart/CartAction_addCart?productid=<s:property value="product.id"/>'">
							<input type="submit" name="submit" value="添加购物车" class="button" />
						</a>
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
							</div> </a>
					</li>
					<li><a href="#" class="twitter">
							<div class="front">
								<i class="fa fa-qq" aria-hidden="true"></i>
							</div>
							<div class="back">
								<i class="fa fa-qq" aria-hidden="true"></i>
							</div> </a>
					</li>
					<li><a href="#" class="instagram">
							<div class="front">
								<i class="fa fa-weibo" aria-hidden="true"></i>
							</div>
							<div class="back">
								<i class="fa fa-weibo" aria-hidden="true"></i>
							</div> </a>
					</li>
					<li><a href="#" class="pinterest">
							<div class="front">
								<i class="fa fa-tencent-weibo" aria-hidden="true"></i>
							</div>
							<div class="back">
								<i class="fa fa-tencent-weibo" aria-hidden="true"></i>
							</div> </a>
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
							<img src="${pageContext.request.contextPath}/user/images/a7.jpg"
								alt="" class="pro-image-front"> <img
								src="${pageContext.request.contextPath}/user/images/a7.jpg"
								alt="" class="pro-image-back">
							<div class="men-cart-pro">
								<div class="inner-men-cart-pro">
									<a
										href="<s:url value='/product/ProductAction_showProductById'/>?proid=27"
										class="link-product-add-cart">快速查看 </a>
								</div>
							</div>
							<span class="product-new-top">New</span>

						</div>
						<div class="item-info-product ">
							<h4>
								<a
									href="<s:url value='/product/ProductAction_showProductById'/>?proid=27">百威啤酒银标大师798ml</a>
							</h4>
							<div class="info-product-price">
								<span class="item_price">￥179.0</span>
								<del>￥189.0</del>
							</div>
							<div
								class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
								<a title="购买" href="javascript:void(0)" class="buy"
									onclick="location='${pageContext.request.contextPath}/cart/CartAction_addCart?productid=27'">
									<input type="submit" name="submit" value="添加购物车" class="button" />
								</a>
							</div>

						</div>
					</div>
				</div>
				<div class="col-md-3 product-men single">
					<div class="men-pro-item simpleCart_shelfItem">
						<div class="men-thumb-item">
							<img src="${pageContext.request.contextPath}/user/images/p7.jpg"
								alt="" class="pro-image-front"> <img
								src="${pageContext.request.contextPath}/user/images/p7.jpg"
								alt="" class="pro-image-back">
							<div class="men-cart-pro">
								<div class="inner-men-cart-pro">
									<a
										href="<s:url value='/product/ProductAction_showProductById'/>?proid=13"
										class="link-product-add-cart">快速查看</a>
								</div>
							</div>
							<span class="product-new-top">New</span>

						</div>
						<div class="item-info-product ">
							<h4>
								<a
									href="<s:url value='/product/ProductAction_showProductById'/>?proid=13">奔富Penfolds
									BIN9</a>
							</h4>
							<div class="info-product-price">
								<span class="item_price">￥208.0</span>
								<del>￥228.0</del>
							</div>
							<div
								class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
								<a title="购买" href="javascript:void(0)" class="buy"
									onclick="location='${pageContext.request.contextPath}/cart/CartAction_addCart?productid=13'">
									<input type="submit" name="submit" value="添加购物车" class="button" />
								</a>
							</div>

						</div>
					</div>
				</div>
				<div class="col-md-3 product-men single">
					<div class="men-pro-item simpleCart_shelfItem">
						<div class="men-thumb-item">
							<img src="${pageContext.request.contextPath}/user/images/y7.jpg"
								alt="" class="pro-image-front"> <img
								src="${pageContext.request.contextPath}/user/images/y7.jpg"
								alt="" class="pro-image-back">
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
								<a
									href="<s:url value='/product/ProductAction_showProductById'/>?proid=20">Dom
									Perignon Vintage</a>
							</h4>
							<div class="info-product-price">
								<span class="item_price">￥1120.0</span>
								<del>￥1200.0</del>
							</div>
							<div
								class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
								<a title="购买" href="javascript:void(0)" class="buy"
									onclick="location='${pageContext.request.contextPath}/cart/CartAction_addCart?productid=20'">
									<input type="submit" name="submit" value="添加购物车" class="button" />
								</a>
							</div>

						</div>
					</div>
				</div>
				<div class="col-md-3 product-men single">
					<div class="men-pro-item simpleCart_shelfItem">
						<div class="men-thumb-item">
							<img src="${pageContext.request.contextPath}/user/images/b6.jpg"
								alt="" class="pro-image-front"> <img
								src="${pageContext.request.contextPath}/user/images/b6.jpg"
								alt="" class="pro-image-back">
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
								<a
									href="<s:url value='/product/ProductAction_showProductById'/>?proid=6">心悠然天汲特酿</a>
							</h4>
							<div class="info-product-price">
								<span class="item_price">￥888.0</span>
								<del>￥1288.0</del>
							</div>
							<div
								class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
								<a title="购买" href="javascript:void(0)" class="buy"
									onclick="location='${pageContext.request.contextPath}/cart/CartAction_addCart?productid=6'">
									<input type="submit" name="submit" value="添加购物车" class="button" />
								</a>
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

</body>
</html>


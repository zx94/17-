<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri='/struts-tags' prefix='s'%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>

<!--/葡萄酒-->
<s:action name="ProductAction_getProductByaddtimeAndsale" namespace='/product'
	executeResult='false' var='addtimeAndsale'></s:action>

	<div class="tab4">
	<s:iterator value='#addtimeAndsale.list'>
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
								class="link-product-add-cart"> 快速查看 </a>
								</div>
							</div> <span class="product-new-top">New</span>
				</div>
				<div class="item-info-product ">
					<h4>
						<a
							href="<s:url value='/product/ProductAction_showProductById'/>?proid=<s:property value='id'/>"
							target="_blank"><s:property value='name' /> </a>
					</h4>
					<div class="info-product-price">
						<span class="item_price">￥<s:property value='price' /> </span>
						<del>
							￥
							<s:property value='dangdangprice' />
						</del>
					</div>
					<div
						class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
						<a title="购买" href="javascript:void(0)" class="buy"
							onclick="location='${pageContext.request.contextPath}/cart/CartAction_addCart?productid=<s:property value="id"/>'">
							<input type="submit" name="submit" value="添加购物车" class="button" />
						</a>
					</div>

				</div>
			</div>
		</div>
</s:iterator>
		<div class="clearfix"></div>
	</div>

<!--//葡萄酒-->
</html>
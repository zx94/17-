<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri='/struts-tags' prefix='s'%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>

<!--/白酒-->
<s:action name="ProductAction_showProductByedit" namespace='/product'
	executeResult='false' var='edit'></s:action>

<div class="tab1">
	<s:iterator value='#edit.list'>
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
					</div>
					<span class="product-new-top">New</span>
				</div>
				<div class="item-info-product ">
					<h4>
						<a
							href="<s:url value='/product/ProductAction_showProductById'/>?proid=<s:property value='id'/>"
							target="_blank"><s:property value='name' /> </a>
					</h4>
					<div class="info-product-price">
						<span class="item_price">￥<s:property value='dangdangprice' />
						</span>
						<del>
							￥
							<s:property value='price' />
						</del>
					</div>

					<div
						class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
						<form action="#" method="post">
							<fieldset>
								<input type="hidden" name="cmd" value="_cart" /> <input
									type="hidden" name="add" value="1" /> <input type="hidden"
									name="business" value=" " /> <input type="hidden"
									name="item_name" value=<s:property value='name' /> /> <input
									type="hidden" name="amount"
									value="<s:property value='price' />" />
									<input type="hidden" name="discount_amount" value="<s:property value='product.price-product.dangdangprice' />"> <input
									type="hidden" name="currency_code" value="CNY" /> <input
									type="hidden" name="return" value=" " /> <input type="hidden"
									name="cancel_return" value=" " /> <input type="submit"
									name="submit" value="添加购物车" class="button" />
							</fieldset>
						</form>
					</div>

				</div>
			</div>
		</div>
	</s:iterator>
	<div class="clearfix"></div>
</div>

<!--//白酒-->
</html>
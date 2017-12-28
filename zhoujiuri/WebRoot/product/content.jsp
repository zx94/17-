<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/product/css/content.css" type="text/css"></link>
<%@ taglib uri='/struts-tags' prefix='s'%>
<div class="content_header">
	<span>hadoop权威指南</span>
	<div class="bottom_line"></div>
	<div class="book_content">
	<div class="image">
			<img alt="" src="../images/<s:property value='product.imagepath'/>"/>
		</div>
		<div class="book_right">
			<div class="name">书  名:<s:property value="product.name"/></div>
			<div class="author">作　　者：<s:property value='product.author'/></div>
			<div class="publisher">出 版 社： <s:property value='product.publish'/></div>
			<ul>
			  <li>出版时间： <s:property value='product.publishtime'/> </li>
			  <li>印刷时间： <s:property value='product.printtime'/> </li>
			  <li>开　　本： <s:property value='product.openbook'/> </li>
			  <li>印　　次：  <s:property value='product.printnumber'/> </li>
			  <li>纸　　张： <s:property value='product.paper'/> </li>
			  <li>ISBN： <s:property value='product.isbn'/> </li>
			  <li>包　　装： <s:property value='product.wrapper'/> </li>
			</ul>
		</div>
		<div class="price">
			定价:￥<s:property value='product.price'/> &nbsp;&nbsp;当当价:￥<b><s:property value='product.dangdangprice'/></b> 节省：￥<s:number name="product.price-product.dangdangprice" />
		</div>
		<a title="购买" href="javascript:void(0)" class="buy" onclick="location='${pageContext.request.contextPath}/cart/CartAction_addCart?productid=<s:property value="product.id"/>'">
			<img  src="${pageContext.request.contextPath}/product/images/booksale.gif">
		</a>
	</div>
</div>

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri='/struts-tags' prefix='s'%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/main/css/header.css" type="text/css"></link>
<!-- 设置头 -->
<div class="header" >
   	<div class="top">
   		<div class="weclome_left">
   			<s:if test="#session.user==null"><span>[<a href="${pageContext.request.contextPath}/login/index.jsp">登录</a>|<a href="/zhoujiuri/register/index.jsp">注册</a>]</span></s:if>
   			<s:else><span>您好<s:property value='#session.user.name'/>，欢迎光临当当网[<a href="<s:url value='/user/UserAction_userExit'/>">退出</a>]</span></s:else>
   		</div>
   		<div class="weclome_right">
   			<div>
   				<a  href="<s:url value='/cart/CartAction_showCart'/>">我的购物车</a> | <a  href="">我的当当</a> | <a href="">帮助</a>
   			</div>
   		</div>
   	</div>
   	<div class="logo">
   		<div >
   			<a href="">
   				<img  src="${pageContext.request.contextPath}/main/images/book_logo.gif" alt="当当网" />
   			</a> 
   		</div>
   	</div>
   	<div class="advertisement"> </div>
</div> 

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri='/struts-tags' prefix='s'%>
<!-- 头部分 -->
<head>
<!-- //CSS引用 -->
<jsp:include page="../user/referenceCss.jsp"/>

</head>
<div class="header" id="home">
	<div class="container">
		<ul>
			<s:if test="#session.user==null">
				<span>
					<li><a href="#" data-toggle="modal" data-target="#myModal"><i
							class="fa fa-unlock-alt" aria-hidden="true"></i> 登录 </a></li>
					<li><a href="#" data-toggle="modal" data-target="#myModal2"><i
							class="fa fa-pencil-square-o" aria-hidden="true"></i> 注册 </a></li> </span>
			</s:if>
			<s:else>
				<span>
					<li>您好<s:property value='#session.user.name' />，欢迎光临!!</li>
					<li><a href="<s:url value='/user/UserAction_userExit'/>">退出</a>
				</li> </span>
			</s:else>
			<li><i class="fa fa-phone" aria-hidden="true"></i> 联系我 :
				01234567898</li>
			<li><i class="fa fa-envelope-o" aria-hidden="true"></i> <a
				href="mailto:364427701@qq.com">364427701@qq.com</a></li>
		</ul>
	</div>
</div>
<!-- //头部份 -->
<!-- 推广 -->
<div class="header-bot">
	<div class="header-bot_inner_wthreeinfo_header_mid">
		<div class="col-md-4 header-middle">
			<form action="#" method="post">
				<input type="search" name="search" placeholder="Search here..."
					required=""> <input type="submit" value=" ">
				<div class="clearfix"></div>
			</form>
		</div>
		<!-- header-bot -->
		<div class="col-md-4 logo_agile">
			<h1>
				<a href="index.html"><span>W</span>eek Jiuri </a>
			</h1>
		</div>
		<!-- header-bot -->
		<div class="col-md-4 agileits-social top_content">
			<ul class="social-nav model-3d-0 footer-social w3_agile_social">
				<li class="share">如果喜欢，请为我推广 :</li>
				<li><a href="#" class="facebook">
						<div class="front">
							<i class="fa fa-weixin" aria-hidden="true"></i>
						</div>
						<div class="back">
							<i class="fa fa-weixin" aria-hidden="true"></i>
						</div> </a></li>
				<li><a href="#" class="twitter">
						<div class="front">
							<i class="fa fa-qq" aria-hidden="true"></i>
						</div>
						<div class="back">
							<i class="fa fa-qq" aria-hidden="true"></i>
						</div> </a></li>
				<li><a href="#" class="instagram">
						<div class="front">
							<i class="fa fa-weibo" aria-hidden="true"></i>
						</div>
						<div class="back">
							<i class="fa fa-weibo" aria-hidden="true"></i>
						</div> </a></li>
				<li><a href="#" class="pinterest">
						<div class="front">
							<i class="fa fa-tencent-weibo" aria-hidden="true"></i>
						</div>
						<div class="back">
							<i class="fa fa-tencent-weibo" aria-hidden="true"></i>
						</div> </a></li>
			</ul>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- 导航 -->
<div class="ban-top">
	<div class="container">
		<div class="top_nav_left">
			<nav class="navbar navbar-default">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse menu--shylock"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav menu__list">
						<li class="active menu__item menu__item--current"><a
							class="menu__link" href="../main/index.jsp">主页 <span
								class="sr-only">(current)</span> </a></li>
						<li class=" menu__item"><a class="menu__link"
							href="<s:url value='/category/CategoryAction_showProductByCategory'/>?pid=1&cid=1&currentPage=1">白酒</a>
						</li>
						<li class=" menu__item"><a class="menu__link"
							href="<s:url value='/category/CategoryAction_showProductByCategory'/>?pid=2&cid=2&currentPage=1">葡萄酒</a>
						</li>
						<li class=" menu__item"><a class="menu__link"
							href="<s:url value='/category/CategoryAction_showProductByCategory'/>?pid=3&cid=3&currentPage=1">洋酒</a>
						</li>
						<li class=" menu__item"><a class="menu__link"
							href="<s:url value='/category/CategoryAction_showProductByCategory'/>?pid=4&cid=4&currentPage=1">啤酒</a>
						</li>
					</ul>
				</div>
			</div>
			</nav>
		</div>
		<div class="top_nav_right">
			<div class="wthreecartaits wthreecartaits2 cart cart box_1">
				<a href="<s:url value='../cart/CartAction_showCart'/>">
					<button class="w3view-cart">
						<i class="fa fa-cart-arrow-down"></i>
					</button> </a>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- 登陆 -->
<jsp:include page="../login/index.jsp" />
<!-- //登陆 -->
<!-- 注册 -->
<jsp:include page="../register/index.jsp" />
<!-- //注册-->

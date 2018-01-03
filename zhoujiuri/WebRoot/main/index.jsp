<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri='/struts-tags' prefix='s'%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>

<body>
	<!-- //头部 -->
	<jsp:include page="../user/header.jsp"/>

	<!-- banner -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1" class=""></li>
			<li data-target="#myCarousel" data-slide-to="2" class=""></li>
			<li data-target="#myCarousel" data-slide-to="3" class=""></li>
			<li data-target="#myCarousel" data-slide-to="4" class=""></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<div class="container">
					<div class="carousel-caption">	
					</div>
				</div>
			</div>
			<div class="item item2">
				<div class="container">
					<div class="carousel-caption">
					</div>
				</div>
			</div>
			<div class="item item3">
				<div class="container">
					<div class="carousel-caption">
					</div>
				</div>
			</div>
			<div class="item item4">
				<div class="container">
					<div class="carousel-caption">
					</div>
				</div>
			</div>
			<div class="item item5">
				<div class="container">
					<div class="carousel-caption">
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span> </a> <a
			class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span> </a>
		<!-- The Modal -->
	</div>
	<!-- //banner -->
	<div class="banner_bottom_agile_info">
		<div class="container">
			<div class="banner_bottom_agile_info_inner_w3ls">
				<div class="col-md-6 wthree_banner_bottom_grid_three_left1 grid">
					<figure class="effect-roxy">
						<img src="../user/images/bottom1.jpg" alt=" " class="img-responsive" />
						<figcaption>
							<h3>
								<span>年度</span>热销
							</h3>
							<p>新产品！！</p>
						</figcaption>
					</figure>
				</div>
				<div class="col-md-6 wthree_banner_bottom_grid_three_left1 grid">
					<figure class="effect-roxy">
						<img src="../user/images/bottom2.jpg" alt=" " class="img-responsive" />
						<figcaption>
							<h3>
								<span>钜惠</span>名品
							</h3>
							<p>新产品！！</p>
						</figcaption>
					</figure>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>

	<!-- banner-bootom-w3-agileits -->
	<div class="banner-bootom-w3-agileits">
		<div class="container">
			<h3 class="wthree_text_info">
				新的 <span>趋势</span>
			</h3>

			<div class="col-md-5 bb-grids bb-left-agileits-w3layouts">
				<a href="<s:url value='/category/CategoryAction_showProductByCategory'/>?pid=2&cid=2&currentPage=1">
					<div class="bb-left-agileits-w3layouts-inner grid">
						<figure class="effect-roxy">
							<img src="../user/images/bb1.jpg" alt=" " class="img-responsive" style="height:850px"/>
							<figcaption>
								<h3>
									<span>S</span>ale
								</h3>
								<p>Upto 55%</p>
							</figcaption>
						</figure>
					</div> </a>
			</div>
			<div class="col-md-7 bb-grids bb-middle-agileits-w3layouts">
				<a href="<s:url value='/category/CategoryAction_showProductByCategory'/>?pid=4&cid=4&currentPage=1">
					<div class="bb-middle-agileits-w3layouts grid">
						<figure class="effect-roxy">
							<img src="../user/images/bottom3.jpg" alt=" " class="img-responsive" style="height:345px"/>
							<figcaption>
								<h3>
									<span>S</span>ale
								</h3>
								<p>Upto 55%</p>
							</figcaption>
						</figure>
					</div> </a> <a href="<s:url value='/category/CategoryAction_showProductByCategory'/>?pid=3&cid=3&currentPage=1">
					<div class="bb-middle-agileits-w3layouts forth grid">
						<figure class="effect-roxy">
							<img src="../user/images/bottom4.jpg" alt=" " class="img-responsive" style="height:490px">
							<figcaption>
								<h3>
									<span>S</span>ale
								</h3>
								<p>Upto 65%</p>
							</figcaption>
						</figure>
					</div> </a>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--/grids-->
	<div class="agile_last_double_sectionw3ls">
		<div class="col-md-6 multi-gd-img multi-gd-text ">
			<a href="<s:url value='/category/CategoryAction_showProductByCategory'/>?pid=4&cid=4&currentPage=1""><img src="../user/images/bot_1.jpg" alt=" ">
				<h4>
					Flat <span>50%</span> offer
				</h4> </a>

		</div>
		<div class="col-md-6 multi-gd-img multi-gd-text ">
			<a href="<s:url value='/category/CategoryAction_showProductByCategory'/>?pid=1&cid=1&currentPage=1""><img src="../user/images/bot_2.jpg" alt=" ">
				<h4>
					Flat <span>50%</span> offer
				</h4> </a>
		</div>
		<div class="clearfix"></div>
	</div>
	<!--/grids-->
	<!-- /new_arrivals -->
	<div class="new_arrivals_agile_w3ls_info">
		<div class="container">
			<h3 class="wthree_text_info">
				送礼 <span>佳品</span>
			</h3>
			<div id="horizontalTab">
				<ul class="resp-tabs-list">
					<li>编辑推荐</li>
					<li>品牌旗舰</li>
					<li>送礼佳品</li>
					<li>秋冬热销</li>
				</ul>
				<div class="resp-tabs-container">
					<!--/编辑推荐-->
					<jsp:include page="showProductByedit.jsp"/>
					<!--/品牌旗舰-->
					<jsp:include page="showProductByaddtime.jsp"/>
					<!--/送礼佳品-->
				    <jsp:include page="showProductBysale.jsp"/>
                    <!--/秋冬热销-->
                    <jsp:include page="showProductByaddtimeAndsale.jsp"/>
				</div>
			</div>
		</div>
	</div>
	<!-- //new_arrivals -->
	<!-- /we-offer -->
	<div class="sale-w3ls">
		<div class="container">
			<h6>
				高达 <span>40%</span> 的优惠
			</h6>

			<a class="hvr-outline-out button2" href="<s:url value='/category/CategoryAction_showProductByCategory'/>?pid=1&cid=1&currentPage=1">开始购物 </a>
		</div>
	</div>
	<!-- //we-offer -->


    <!-- //尾部 -->
    <jsp:include page="../user/foot.jsp" />

</body>
</html>
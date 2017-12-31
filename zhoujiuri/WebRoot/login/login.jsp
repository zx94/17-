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
<head>
<!-- //CSS引用 -->
<jsp:include page="../user/referenceCss.jsp"/>
</head>
<body>

	<div class="modal fade in" id="myModal" tabindex="-1" role="dialog" style="display: block; padding-right: 19px;" aria-hidden="false">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body modal-body-sub_agile">
					<div class="col-md-8 modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">
							登录 <span>Now</span>
						</h3>
						<form action="<s:url value='/user/UserAction_userLogin'/>"
							method="post">
							<div class="styled-input agile-styled-input-top">
								<input type="email" required="" name="user.email"> <label>请输入邮箱:</label>
									<div class="styled-input agile-styled-input-top">
										<input type="password" required="" name="user.password">
											<label>请输入密码:</label> <span></span>
									</div> <span></span>
							</div>
							<input type="submit" value="登录">
						</form>
						<ul
							class="social-nav model-3d-0 footer-social w3_agile_social top_agile_third">
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
						<div class="clearfix"></div>
						<p>
							<a href="#" data-toggle="modal" data-target="#myModal2">
								没有账号?点击注册一个！</a>
						</p>

					</div>
					<div class="col-md-4 modal_body_right modal_body_right2">
						<img src="${pageContext.request.contextPath}/login/images/login.jpg" alt=" ">
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- //JS引用 -->
<jsp:include page="../user/referenceJs.jsp"/>
</body>
</html>

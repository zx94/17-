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
</head>
<body>
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body modal-body-sub_agile">
					<div class="col-md-8 modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">
							注册 <span>Now</span>
						</h3>
						<form action="<s:url value='/user/UserAction_userRegist'/>"
							method="post" name='zhuce'>
							<div class="styled-input agile-styled-input-top">
								<input type="text" required="" name="user.name"> <label>昵称</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="email" required="" name="user.email"> <label>Email</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="password" required="" name="user.password">
								<label>请输入密码：</label> <span></span>
							</div>
							<div class="styled-input">
								<input type="password" required="" name="" id="pwd"> <label>确认密码：</label>
								<span></span>
							</div>
							<input type="submit" value="注册">
						</form>
						<ul
							class="social-nav model-3d-0 footer-social w3_agile_social top_agile_third">
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
						<div class="clearfix"></div>
						<p>
							<a href="#">PS:点击注册后，即为同意本公司协议</a>
						</p>

					</div>
					<div class="col-md-4 modal_body_right modal_body_right1">
						<img src="${pageContext.request.contextPath}/login/images/login.jpg" alt=" ">
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

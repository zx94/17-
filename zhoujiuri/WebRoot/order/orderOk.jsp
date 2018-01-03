<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<!-- //头部 -->
		<link href="../css/login.css" rel="stylesheet" type="text/css" />
		<link href="../css/page_bottom.css" rel="stylesheet" type="text/css" />
	</head>
	<body>

		<div class="login_success">
			<div class="login_bj">
				<div class="succ">
					<img src="../images/login_success.jpg" />
				</div>
				<h5>
					订单已经生成
				</h5>
				<h6>
					您刚刚生成的订单号是：[<b><s:property value='orderid'/></b>],总价为[<b><s:property value='totalaccount'/></b>]
				</h6>
				<ul>
					<li class="nobj">
						您现在可以：
					</li>
					<li>
						<a >在线支付订单</a>
					</li>
					<li>
						<a href="<s:url value='/main/index.jsp'/>">继续浏览并选购商品</a>
					</li>
				</ul>
			</div>
		</div>
<!-- //头部 -->
	</body>
</html>


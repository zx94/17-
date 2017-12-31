<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- //顶部 -->
    <jsp:include page="../user/header.jsp"/>
	
	<!-- Style CSS -->
	<link rel="stylesheet" href="css/style.css" type="text/css">

</head>

<body>
	
	<section class="shopping-cart">
		<!-- .shopping-cart -->
		<div class="container">
			<div class="col-md-12">
				<h2>确认订单</h2>
				<table>
					<tr>
						<th></th>
						<th>产品名称</th>
						<th>品牌</th>
						<th>价格</th>
						<th>数量</th>
						<th>总价</th>
					</tr>
					<s:iterator value="#session.cart.values()" var="item" status="status">
				<s:if test="status=='yes'">
					<tr>
						<td><center><img src="${pageContext.request.contextPath}/user/images/<s:property value='imagepath'/>" alt="13" style="height:90px"></center></td>
						<td><s:property value='name' /></td>
						<td><s:property value='author' /></td>
						<td><strong><s:property value='dangdangprice'/></strong></td>
						<td><s:property value='amount'/></td>
						<td><strong><s:property value='amount*dangdangprice'/></strong></td>
					</tr>
					</s:if>
					</s:iterator>
				</table>
				<div class="col-sm-6 col-md-6">
					<a href="${pageContext.request.contextPath}/main/index.jsp" class="button red">取消</a>
				</div>
				<div class="col-sm-6 col-md-6 text-right">
				<s:if test="#session.user==null">
					<input id="btnClientRegister" class="button" name="submit" type="button" value="下一步"  onclick="location='${pageContext.request.contextPath}/login/login.jsp'"/>
				</s:if>
				<s:else>
					<input id="btnClientRegister" class="button" name="submit" type="button" value="下一步"  onclick="location='${pageContext.request.contextPath}/address/AddressAction_showAddress'"/>
				</s:else>
				</div>
			</div>
		</div>
		<!-- /.shopping-cart -->
	</section>
	
	
	    <!-- //底部 -->
      <jsp:include page="../user/foot.jsp"/>
	
</body>

</html>


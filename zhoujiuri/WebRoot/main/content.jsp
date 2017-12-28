<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri='/struts-tags' prefix='s'%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/main/css/content.css"
	type="text/css"></link>
<div class="content">
	<div class="content_left">
		<div class="category">
			<h2>分类浏览</h2>

			<div class="category_item">
				<s:action name="CategoryAction_showAll" namespace="/category" executeResult="false" var='ca'></s:action>
				<s:iterator value='#ca.list'>
					<s:set var='pid' value='id' scope='request' />
					<h3>
						<a
							href="<s:url value='/category/CategoryAction_showProductByCategory'/>?pid=<s:property value='id'/>&currentPage=1">[<s:property value='name' />]</a>
					</h3>
					<s:iterator value='children'>
					<ul>
						<a href="<s:url value='/category/CategoryAction_showProductByCategory'/>?pid=<s:property value='#request.pid'/>&cid=<s:property value='id'/>&currentPage=1"><s:property
										value='name' />
						</a>
					</ul>
					</s:iterator>
				</s:iterator>

				<div class="bottom_line"></div>
			</div>
		</div>
	</div>
	<div class="content_center">
		<div class="center_category">
			<h2>
				编辑推荐<a herf="">更多>></a>
			</h2>
			<s:action name="ProductAction_showProductByedit" namespace='/product' executeResult='false' var='edit'></s:action>
				<s:iterator value='#edit.list'>
				<div class="center_item_tj">
					<div class="center_item_tj_img">
						<img alt="" src="${pageContext.request.contextPath}/main/images/1.jpg" />
					</div>
					<div class="center_item_tj_content">
						<h3>
							<a
								href="<s:url value='/product/ProductAction_showProductById'/>?proid=<s:property value='id'/>"
								target="_blank"><s:property value='name' />
							</a>
						</h3>
						<h4>
							<span>作者：<s:property value='author' /> 著</span> <br /> <span>出版社：<s:property
									value='publish' />&nbsp;&nbsp;出版时间：<s:property
									value='publishtime' />
							</span>
						</h4>
						<h6>
							定价：￥
							<s:property value='price' />
							&nbsp;&nbsp;当当价：￥
							<s:property value='dangdangprice' />
						</h6>

						<div class="bottom_line"></div>
					</div>
				</div>
			</s:iterator>
		</div>
		<div class="center_category">
			<h2>
				热销图书<a herf="">更多>></a>
			</h2>
			<s:action name="ProductAction_showProductBysale" namespace='/product' executeResult='false' var='sale'></s:action>
			<s:iterator value='#sale.list'>
			<div class="center_item_zxsj">
				<div class="center_item_zxsj_img">
						<img alt="" src="${pageContext.request.contextPath}/main/images/2.jpg" />
					</div>
					<div class="center_item_zxsj_content">
						<p>
							<a href="<s:url value='/product/ProductAction_showProductById'/>?proid=<s:property value='id'/>"><s:property value='name' />
							</a>
						</p>
						<p>
							定价：<s:property value='price' />
						</p>
						<p>
							当当价：￥<s:property value='dangdangprice' />
						</p>
					</div>
				</div>
				</s:iterator>
		</div>
		<div class="center_category">
			<h2>
				最新上架<a herf="">更多>></a>
			</h2>
			<s:action name="ProductAction_showProductByaddtime" namespace='/product' executeResult='false' var='addtime'></s:action>
			<s:iterator value='#addtime.list'>
				<div class="center_item_zxsj">
					<div class="center_item_zxsj_img">
						<img alt=""
							src="${pageContext.request.contextPath}/main/images/3.jpg" />
					</div>
					<div class="center_item_zxsj_content">

						<p>
							<a
								href="<s:url value='/product/ProductAction_showProductById'/>?proid=<s:property value='id'/>"><s:property
									value='name' />
							</a>
						</p>
						<p>
							定价：
							<s:property value='price' />
						</p>
						<p>
							当当价：￥
							<s:property value='dangdangprice' />
						</p>
					</div>
				</div>
			</s:iterator>
			</div>
		</div>
		<div class="content_right">
			<div class="category">
				<h2>新书热卖榜</h2>
				<s:action name="ProductAction_getProductByaddtimeAndsale"
					namespace='/product' executeResult='false' var='addtimeAndsale'></s:action>
				<s:iterator value='#addtimeAndsale.list'>
					<li><a
						href="<s:url value='/product/ProductAction_showProductById'/>?proid=<s:property value='id'/>"><s:property
								value='name' />
					</a>
					</li>
				</s:iterator>
			</div>
		</div>
	</div>
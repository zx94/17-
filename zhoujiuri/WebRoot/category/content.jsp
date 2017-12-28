<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri='/struts-tags' prefix='s'%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/category/css/content.css" type="text/css"></link>
<div class="content">
	<div class="location">您现在的位置:<a href='<s:url value='/main/index.jsp'/>'>当当图书 </a>>>
	<s:if test='cid==null'>
		<font color='red'><s:property value='category.name'/></font>
	</s:if>
	<s:else>
		<a href="<s:url value='/category/CategoryAction_showProductByCategory'/>?pid=<s:property value='pid'/>&currentPage=<s:property value='currentPage'/>"><s:property value='category.name'/></a>>>
		<s:iterator value='category.children'>
			<s:if test='id==cid'>
			<font color='red'><s:property value='name'/></font>
			</s:if>
		</s:iterator>
	</s:else>
	</div>
    <div class="content_left">
 		<div class="category">
 			<h2>分类浏览</h2>
 			<div class="second_fenlei">
				<s:if test="cid==null"><font color='red'>全部分类(<s:property value='category.amount'/>)</font></s:if>
				<s:else><a href="<s:url value='/category/CategoryAction_showProductByCategory'/>?pid=<s:property value='pid'/>&currentPage=<s:property value='currentPage'/>">全部分类(<s:property value='category.amount'/>)</a></s:else>
			</div>
			<s:iterator value='category.children'>
 			<div class="second_fenlei">
 				<s:if test="id==cid"><font color='red'><s:property value='name'/>(<s:property value='amount'/>)</font></s:if>
				<s:else><a href="<s:url value='/category/CategoryAction_showProductByCategory'/>?pid=<s:property value='pid'/>&cid=<s:property value='id'/>&currentPage=<s:property value='currentPage'/>"><s:property value='name'/>(<s:property value='amount'/>)</a></s:else>
			</div>
			</s:iterator>
 		</div>
	</div>
	<div class="content_center">
		<div class="content_header">
			<span>排序方式</span>
			 <form>
				<table>
					<tr>
					    <td>
							<select>
								<option>按上架时间排序</option>
							</select>
						</td>
						<td>
							<s:if test="cid==null"><a href='<s:url value='/category/CategoryAction_showProductByCategory'/>?pid=<s:property value='pid'/>&currentPage=<s:property value="currentPage<=1?1:currentPage-1"/>'>>></a></s:if>
							<s:else><a href='<s:url value='/category/CategoryAction_showProductByCategory'/>?pid=<s:property value='pid'/>&cid=<s:property value='cid'/>&currentPage=<s:property value="currentPage<=1?1:currentPage-1"/>'>>></a></s:else>
						</td>
						<td>
							<span>第<s:property value='currentPage'/>页/共<s:property value='pageCount'/>页</span>
						</td>
						<td>
							<s:if test="cid==null"><a href='<s:url value='/category/CategoryAction_showProductByCategory'/>?pid=<s:property value='pid'/>&currentPage=<s:property value="currentPage>=pageCount?pageCount:currentPage+1"/>'>>></a></s:if>
							<s:else><a href='<s:url value='/category/CategoryAction_showProductByCategory'/>?pid=<s:property value='pid'/>&cid=<s:property value='cid'/>&currentPage=<s:property value="currentPage>=pageCount?pageCount:currentPage+1"/>'>>></a></s:else>
						</td>
					</tr>
			</table>
		   </form>
	    </div>
	    <div class="content_list">
	    		<s:iterator value='books'>
			 	 <div class="content_list_item">
		 			<div class="content_list_item_img">
		 				<img alt="图片" src="${pageContext.request.contextPath}/category/images/1.jpg"/>
		 			</div>
		 			<div class="content_list_item_content">
			 			<h3>
							<a href="<s:url value='/product/ProductAction_showProductById'/>?proid=<s:property value='id'/>" target="_blank"><s:property value='name'/></a>
						</h3>
						<h4>
							<span>作者：<s:property value='author'/>  著</span>
							<br/>
							<span>出版社：<s:property value='publish'/>&nbsp;&nbsp;出版时间：<s:property value='publishtime'/></span>
						</h4>
						<h6>
							定价：<span class="del">￥<s:property value='price'/></span>&nbsp;&nbsp;当当价：￥<s:property value='dangdangprice'/> &nbsp;&nbsp; 节省: ￥<s:number name="price-dangdangprice" />
							&nbsp;&nbsp; 
								<img align="top" src="${pageContext.request.contextPath}/category/images/gouwu.gif" class='go'/>
								<span style='display:none'><s:property value="id"/></span>
							
						</h6>
						<div class="bottom_line"></div>
		 	         </div>
			 	</div>
			 	
			 </s:iterator>	    
	    </div>
	</div>
 </div>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.4.min.js"></script> 
 <script type="text/javascript">
	$(document).ready(function(){
		 var imag=$(".go");
		 for(var i=0;i<imag.length;i++){
			$(imag.get(i)).click(function(){
				var j=$(this);
				var xhr=new XMLHttpRequest();
				xhr.open("post","${pageContext.request.contextPath}/cart/CartAction_addCart");
				xhr.setRequestHeader("content-type", "application/x-www-form-urlencoded");
				xhr.send("productid="+$(this).next().text());
				$(this).attr("src","${pageContext.request.contextPath}/category/images/load.gif");
				xhr.onreadystatechange=function(){
					if(xhr.readyState==4&&xhr.status==200){
						var ret=xhr.responseText;
						if(ret=="ok"){
							j.attr("src","${pageContext.request.contextPath}/category/images/label3.gif");
						}else{
							j.attr("src","${pageContext.request.contextPath}/category/images/error.jpg");
						}
						window.setTimeout(function(){
							j.attr("src","${pageContext.request.contextPath}/category/images/gouwu.gif");
						
						}, 3000);
					}
				}
			});
		}
	});
</script> 
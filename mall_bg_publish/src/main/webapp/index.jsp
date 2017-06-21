<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index.jsp</title>
</head>
<body>
	<a href="${pageContext.request.contextPath}/goto_product_publish.do" target="_blank">商品信息发布</a><br>
	<a href="${pageContext.request.contextPath}/goto_class_attr.do" target="_blank">分类属性信息发布</a><br>
	<a href="${pageContext.request.contextPath}/goto_sku_publish.do" target="_blank">商品sku库存信息发布</a><br>
	<a>商品信息维护</a><br>
	<a>分类属性信息维护</a><br>
	<a>订单信息维护</a><br>
	<a>物流信息维护</a><br>
</body>
</html>
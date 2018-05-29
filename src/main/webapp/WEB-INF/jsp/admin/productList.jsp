<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>Mini Mall</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link type="text/css" rel="stylesheet" href="<c:url value='/css/common.css' />" />
<style type="text/css">
.block-center {
	width: 1024px;		
	margin: auto;
	display: block;
}
header {
	min-height: 60px;
}
nav {
	min-height: 30px;
}
#gnb {
	padding: 0;
	margin: 0;
}
#gnb li {
	display: inline;
	margin-right: 10px;
}
</style>
</head>
<body>
	<div class="w3-border-bottom">
		<c:import url="/admin/header.do" />
	</div>
	<div class="w3-border-bottom w3-border-blue">
		<c:import url="/admin/nav.do?menu=2" />
	</div>
	<div>
		<section class="block-center w3-container">
		<table class="w3-table-all">
			<tr>
				<th>idx</th>
				<th>상품명</th>
				<th>가격</th>
				<th>상품설명</th>
			</tr>
			<c:forEach var="productVO" items="${productVOs}">
			<tr>
				<td>${productVO.idx}</td>
				<td>${productVO.name}</td>
				<td>${productVO.price}</td>
				<td>${productVO.description}</td>
			</tr>
			</c:forEach>			
		</table>
		<p><a href="productAdd.do">상품등록</a></p>
		</section>
	</div>
	<c:import url="/admin/footer.do" />	
</body>
</html>

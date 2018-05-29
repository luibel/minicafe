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
		<c:import url="/admin/nav.do?menu=0" />
	</div>
	<div>
		<section class="block-center w3-container">
			<p>Hello Admin Main!!!</p>
		</section>
	</div>
	<c:import url="/admin/footer.do" />	
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
input {
	display: block;
	margin: 10px;
}
</style>
</head>
<body>
<hr>
<h1>상품등록</h1>
<hr>
<form action="actionProductAdd.do" method="post" enctype="multipart/form-data">
	<input type="text" name="name" placeholder="상품이름">
	<input type="text" name="price" placeholder="가격">
	<input type="text" name="description" placeholder="상품설명">
	<input type="file" name="imageFile">
	
	<input type="submit" value="등록하기">
</form>
</body>
</html>
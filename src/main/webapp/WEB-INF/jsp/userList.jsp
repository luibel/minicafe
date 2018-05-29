<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>Mini Mall</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">





<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link type="text/css" rel="stylesheet" href="<c:url value='/css/common.css' />" />
<style type="text/css">
</style>
</head>
<body>
<p>Hello UserList !!!</p>
<hr>
<!-- <p><a href="userInfo.do?id=gdhong&password=1234&name=홍길동&email=gdhong@email.com&phone=01012340001&address=Korea">홍길동</a></p>
<p><a href="userInfo.do?id=gdkim&password=1234&name=김길동&email=gdkim@email.com&phone=01012340002&address=Korea">김길동</a></p>
<p><a href="userInfo.do?id=gdlee&password=1234&name=이길동&email=gdlee@email.com&phone=01012340003&address=Korea">이길동</a></p>
<p><a href="userInfo.do?id=gdsong&password=1234&name=송길동&email=gdsong@email.com&phone=01012340004&address=Korea">송길동</a></p>
<hr> -->

<form action="removeUser.do" method="post">
<table class="w3-table-all">
	<tr>
		<td>NO</td><th>아이디</th><th>비밀번호</th><th>이름</th><th>이메일</th><th>폰번</th><th>주소</th>
	</tr>
	
	<c:forEach var="userVO" items="${userVOs}">
	<tr>
		<td><input type="checkbox" name="idxes" value="${userVO.idx}"></td>	
		<td>${userVO.id}</td>
		<td>${userVO.password}</td>
		<td>${userVO.name}</td>
		<td>${userVO.email}</td>	
		<td>${userVO.phone}</td>	
		<td>${userVO.address}</td>					
	</tr>
	</c:forEach>
</table>
<hr>
<input type="submit" value="삭제">
</form>




<%-- <c:forEach var="user" items="${users}">
	<tr>
		<td><a href="userInfo.do?id=${user.id}&password=${user.password}&name=${user.name}&email=${user.email}&phone=${user.phone}&address=${user.address}">${user.id}</a></td>
		<td>${user.password}</td>
		<td>${user.name}</td>
		<td>${user.email}</td>
		<td>${user.phone}</td>
		<td>${user.address}</td>		
	</tr>
</c:forEach>
</table> --%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>Hello UserInfo!!!</p>
<hr>

<p>id : ${userInfoDTO.id}</p>
<c:if test="${userInfoDTO.id == ''}">
<p>아이디는 필수 입력 항목입니다.</p>
</c:if>

<p>password : ${userInfoDTO.password}</p>
<c:if test="${userInfoDTO.password == ''}">
<p>비밀번호는 필수 입력 항목입니다.</p>
</c:if>

<c:if test="${userInfoDTO.name != ''}">
<p>name : ${userInfoDTO.name}</p>
</c:if>
<c:if test="${userInfoDTO.name == ''}">
<p>이름은 선택 입력 항목입니다.</p>
</c:if>

<c:if test="${userInfoDTO.email != ''}">
<p>email : ${userInfoDTO.email}</p>
</c:if>
<c:if test="${userInfoDTO.email == ''}">
<p>이메일은 선택 입력 항목입니다.</p>
</c:if>

<c:if test="${userInfoDTO.phone != ''}">
<p>phone : ${userInfoDTO.phone}</p>
</c:if>
<c:if test="${userInfoDTO.phone == ''}">
<p>폰번호는 선택 입력 항목입니다.</p>
</c:if>

<c:if test="${userInfoDTO.address != ''}">
<p>address : ${userInfoDTO.address}</p>
</c:if>
<c:if test="${userInfoDTO.address == ''}">
<p>주소는 선택 입력 항목입니다.</p>
</c:if>


</body>
</html>
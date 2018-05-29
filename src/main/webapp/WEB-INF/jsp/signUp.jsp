<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	input {
		display: block;
		margin: 5px;
	}
</style>

</head>
<body>
<p>Hello SignU!!!</p>
<hr>
<form:form commandName="actionSignUpDTO" action="actionSignUp.do" method="post">
	<input type="text" name="username" placeholder="아이디를 입력하세요." required>
	<form:errors path="username" />
	
	<input type="text" name="password" placeholder="비밀번호를 입력하세요.">
	<form:errors path="password" />
	
	<input type="text" name="name" placeholder="이름를 입력하세요.">
	<input type="text" name="email" placeholder="이메일를 입력하세요.">
	<form:errors path="email" />
	
	<input type="text" name="phone" placeholder="폰번호를 입력하세요.">
	<input type="text" name="address" placeholder="주소를 입력하세요.">
	<input type="submit" value="가입하기">	
</form:form>


</html>
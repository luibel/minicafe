<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<p>Hello SignIn!!!</p>

<p>로그인 화면</p>
<form name="f" action="login" method="POST">
	<input type="text" name="username" placeholder="아이디를 입력하세요.">
	<input type="text" name="password" placeholder="비밀번호를 입력하세요.">
	<input type="submit" value="로그인">	
</form>
</body>
</html>
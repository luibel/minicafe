<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
input, label {
	display: block;
	margin: 10px;
}
</style>
</head>
<body>
<form action="actionFileUpload.do" method="post" enctype="multipart/form-data">
    <h2>업로드</h2>
    <hr>
    <label for="username"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="username">
    
    <label for="email"><b>이메일</b></label>
    <input type="text" placeholder="이메일을 입력하세요." name="email">
    
    
    <label for="file"><b>file</b></label>
    <input type="file" placeholder="Enter File" name="file">
 
    <hr>
    <input type="submit" value="OK">    
</form>

</body>
</html>
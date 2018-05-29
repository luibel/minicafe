<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<nav class="block-center w3-bar">
			<a href="main.do" class="w3-bar-item w3-button w3-padding-large <c:if test="${menu == 0}">w3-blue</c:if>"><b>메인</b></a>
			<a href="userList.do" class="w3-bar-item w3-button w3-padding-large <c:if test="${menu == 1}">w3-blue</c:if>"><b>회원목록</b></a>
			<a href="productList.do" class="w3-bar-item w3-button w3-padding-large <c:if test="${menu == 2}">w3-blue</c:if>"><b>상품목록</b></a>
			<a href="#" class="w3-bar-item w3-button w3-padding-large <c:if test="${menu == 3}">w3-blue</c:if>"><b>결제관리</b></a>
			<a href="#" class="w3-bar-item w3-button w3-padding-large <c:if test="${menu == 4}">w3-blue</c:if>"><b>배송관리</b></a>
			<a href="#" class="w3-bar-item w3-button w3-padding-large <c:if test="${menu == 5}">w3-blue</c:if>"><b>통계</b></a>
		</nav>

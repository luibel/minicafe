<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<nav class="block-center w3-bar">
			<a href="main.do" class="w3-bar-item w3-button w3-padding-large <c:if test="${menu == 0}">w3-red</c:if>"><b>메인</b></a>
			<a href="#" class="w3-bar-item w3-button w3-padding-large <c:if test="${menu == 1}">w3-red</c:if>"><b>내정보</b></a>
			<a href="#" class="w3-bar-item w3-button w3-padding-large <c:if test="${menu == 2}">w3-red</c:if>"><b>주문목록</b></a>
			<a href="cart.do" class="w3-bar-item w3-button w3-padding-large <c:if test="${menu == 3}">w3-red</c:if>"><b>장바구니</b></a>
			<a href="#" class="w3-bar-item w3-button w3-padding-large <c:if test="${menu == 4}">w3-red</c:if>"><b>배송조회</b></a>			
		</nav>

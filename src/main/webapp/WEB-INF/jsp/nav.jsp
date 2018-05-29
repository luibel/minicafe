<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

		<nav class="block-center w3-bar">
			<a href="main.do" class="w3-bar-item w3-padding-large <c:if test="${menu == 0}">w3-green</c:if>">홈</a> 
			<a href="best.do" class="w3-bar-item w3-padding-large <c:if test="${menu == 1}">w3-green</c:if>">베스트</a>
			<a href="shirt.do" class="w3-bar-item w3-padding-large <c:if test="${menu == 2}">w3-green</c:if>">티셔츠</a>  
			<a href="#" class="w3-bar-item w3-padding-large">바지</a> 
			<a href="#" class="w3-bar-item w3-padding-large">잡화</a>
		</nav>


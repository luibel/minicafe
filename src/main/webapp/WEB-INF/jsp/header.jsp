<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>


		<header class="block-center w3-display-container w3-small">
			<div id="logo" class="w3-display-left w3-xlarge">미니몰</div>
			<ul id="gnb" class="w3-display-right">		
			<sec:authorize access="isAnonymous()">		
				<li><a href="signIn.do">로그인</a></li>
			</sec:authorize>  			
			<sec:authorize access="isAuthenticated()">				
				<li><a href="logout">로그아웃</a></li>
			</sec:authorize>				
				<li><a href="signUp.do">가입하기</a></li>
				<li><a href="#">장바구니</a></li>
				<li><a href="member/main.do">마이페이지</a></li>
			<sec:authorize access="hasRole('ROLE_ADMIN')">				
				<li><a href="admin/main.do">관리자</a></li>
			</sec:authorize>				
				
			</ul>
		</header>


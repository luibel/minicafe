<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
		<header class="block-center w3-display-container">
			<div class="w3-display-left w3-xlarge">MY PAGE</div>
			<ul id="gnb" class="w3-display-right w3-small">												
<%-- 				<li>
					<form action="<c:url value='/logout' />" method="post" id="logout" style="display: none;">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />						
					</form> <a href="#" onclick="document.getElementById('logout').submit();">로그아웃</a>
				</li> --%>				
				<li><a href="../logout">로그아웃</a></li>
				<li><a href="../">미니몰홈</a></li>
			</ul>
		</header>

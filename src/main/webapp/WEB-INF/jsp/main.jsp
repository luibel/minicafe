<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>미니몰</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link type="text/css" rel="stylesheet" href="css/common.css" />

<style type="text/css">
.block-center {
	width: 1024px;
	margin: auto;
	display: block;
}
header {
	min-height: 60px;	
}
nav {
	min-height: 30px;
}

#gnb li {
	display: inline;
	margin-right: 10px;
}
#banner {
	width: 1024px;
}
#product-list li {
	width: 24%;
	display: inline-block;
}
#product-list img {
	width: 100%;
}
</style>
</head>
<body>
	<div class="w3-border-bottom">
		<c:import url="/header.do" />
	</div>
	<div class="w3-border-bottom w3-border-green">
		<c:import url="/nav.do?menu=0" />
	</div>
	<div>
	<div>
		<section class="block-center">
			<img id="banner" alt="" src="image/jane2.png">
			<p class="w3-text-gray">8 items</p>
			<ul id="product-list" class="w3-grayscale">
				<li>
					<img alt="" src="image/jeans1.jpg">
					<p>Ripped Skinny Jeans<br>
					<b>25,000원</b>
					</p>
				</li>
				<li>
					<img alt="" src="image/jeans1.jpg">
					<p>Ripped Skinny Jeans<br>
					<b>25,000원</b>
					</p>
				</li>
				<li>
					<img alt="" src="image/jeans1.jpg">
					<p>Ripped Skinny Jeans<br>
					<b>25,000원</b>
					</p>
				</li>
				<li>
					<img alt="" src="image/jeans1.jpg">
					<p>Ripped Skinny Jeans<br>
					<b>25,000원</b>
					</p>
				</li>
				<li>
					<img alt="" src="image/jeans1.jpg">
					<p>Ripped Skinny Jeans<br>
					<b>25,000원</b>
					</p>
				</li>
				<li>
					<img alt="" src="image/jeans1.jpg">
					<p>Ripped Skinny Jeans<br>
					<b>25,000원</b>
					</p>
				</li>
				<li>
					<img alt="" src="image/jeans1.jpg">
					<p>Ripped Skinny Jeans<br>
					<b>25,000원</b>
					</p>
				</li>
				<li>
					<img alt="" src="image/jeans1.jpg">
					<p>Ripped Skinny Jeans<br>
					<b>25,000원</b>
					</p>
				</li>												
			</ul>
		</section>
	</div>
	</div>
	
	<c:import url="/footer.do" />
	
</body>
</html>
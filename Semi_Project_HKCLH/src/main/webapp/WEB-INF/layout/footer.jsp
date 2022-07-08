<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fragbit</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap"
	rel="stylesheet">
<style type="text/css">
/* 움직이는 영업시간*/
.runtime {
	position: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
	height: 70px;
	background: #fff;
	text-align: center;
	line-height: 70px;
	font-size: 12px;
	color: #222;
	z-index: 100;
	letter-spacing: 1px;
}
/*영업끝
/*footer style*/
.footer {
	height: 100px;
}

#wrap {
	height: 230px;
	min-height: 200px;
	position: relative;
	width: 100%;
	background-color: black;
	text-align: center;
}

#wrap section a {
	font-size: 3rem;
	font-family: fantasy;
}

#wrap a {
	color: white;
	text-align: center;
	font-size: 1.4rem;
	text-decoration: none;
	font-family: 'jua';
}

footer p {
	color: white;
	font-family: 'Noto+Sans+KR';
	font-size: 1.2rem;
}

footer p1 {
	font-size: 0.6rem;
}

footer {
	width: 100%;
	height: 130px;
	bottom: 0px;
	position: absolute;
}

section {
	padding-bottom: 0px;
	height: 300px;
	position: relative;
	right: 12px;
}

.navbar_icons {
	position: relative;
	right: 13px;
}
/*footer end*/
</style>
</head>
<body>
	<!--영업시간-->
	<div class="runtime">
		<span><i class="xi-call"></i> <strong> 고객센터 :
				02-3486-9600</strong> / </span> <span>/ 월~금 10:00~17:00 (점심시간 13시~14시)</span>
	</div>
	<!--영업끝-->
	<!--footer-->
	<div id="wrap">
		<section>
			<br> <a href="">FragBit</a>
		</section>
		<footer>
			<ul class="navbar_icons">
				<a href="http://twitter.com"> <i class="fab fa-twitter"></i>
					&nbsp;
				</a>
				<a href="http://www.facebook.com"> <i
					class="fab fa-facebook-square"></i> &nbsp;
				</a>
				<a href="http://instagram.com"> <i class="fab fa-instagram"></i>
				</a>

			</ul>
			<nav>

				<a href="/cart/about">BRAND</a>&nbsp;&nbsp; <a href="">AGREEMENT</a>&nbsp;&nbsp;
				<a href="">PRIVACY POLICY</a>&nbsp;&nbsp; <a href="">GUIDE</a>
			</nav>
			<p>
				COMPANY: FragBit | OWNER : 이경주 | ADRESS : 서울 강남구 강남대로94길 20, 삼오빌딩 9층
				<br> 고객 문의 이메일: help@fragbit.com | 고객 센터: 02-3486-9600 <br>
				<p1>COPYRIGHT @ 2022 FRAGBIT Inc. ALL RIGHTS RESERVED.</p1>
			</p>
		</footer>
	</div>
	<!--fotter end-->
</body>
</html>
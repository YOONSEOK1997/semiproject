<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
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
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=
Noto+Sans+KR&family=Radio+Canada:wght@300&family=
Roboto:wght@100&family=
Signika+Negative:wght@300&display=swap"
	rel="stylesheet">
</head>
<style>
/*body start*/
#bg {
	left: 0;
	top: 0;
	width: auto;
	height: auto;
	min-width: 100%;
	min-height: 100%;
	z-index: 0px;
	margin: 0px;
}

div.imgtitle {
	position: absolute;
	top: 200px;
	left: 550px;
	color: white;
	font-size: 5rem;
	font-family: 'sans-serif';
	font-weight: bold;
}

div.imgpre-title {
	position: absolute;
	top: 300px;
	left: 380px;
	color: white;
	font-size: 2.6rem;
	font-family: 'Malgun Gothic';
}

.-button { -
	-swiper-theme-color: #007aff; -
	-swiper-navigation-size: 44px;
	font: 0.75em Verdana, Dotum, AppleGothic, sans-serif;
	font-family: "Helvetica Neue", "Helvetica", "Noto Sans KR",
		"Malgun Gothic", sans-serif !important;
	color: #000;
	text-decoration: none;
	user-select: none;
	position: absolute;
	left: 49%;
	top: 100px;
	transform: translateX(-50%);
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	width: 285px;
	height: 60px;
	box-sizing: border-box;
	cursor: pointer;
	transition: all .2s;
	background-color: rgba(255, 255, 255, 0.1);
	border: 1px solid #000 !important;
}

.-button:hover {
	background-color: #000 !important;
	border: 1px solid #000 !important;
	text-decoration: none;
}

div.mainbottomimg {
	margin-top: -15px;
}
/*body end*/
</style>


<body>
	<!--중앙-->


<div class="topimage">
		<img src="${root}/image/mainimage2.jpg" style="width: 100%";>
	</div>
	<div class="imgtitle">
		<p>Discovery Set</p>
	</div>
	<div class="imgpre-title">
		<p>오늘, 나와 어울리는 향기를 위한 나만의 디스커버리 세트</p>
		<a href="" class="-button" style="border-color: rgb(255, 255, 255);">
			<div class="-text" style="color: rgb(255, 255, 255);">바로가기</div>
		</a>

	</div>
	<div class="video">
		<video src="${root}/image/mainvideo.mp4" autoplay loop muted
			poster="homepage.jpg" id="bg" style="width: 100%;"></video>
	</div>
	<div class="mainbottomimg">
		<img src="${root}/image/mainimage1.jpeg" style="width: 100%";>
	</div>

	<!--중앙끝-->
</body>
</html>
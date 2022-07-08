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
	href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Suravaram&family=Lobster&family=Nanum+Pen+Script&display=swap"
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
#bg2{
	left: 0;
	top: 0;
	width: auto;
	height: auto;
	min-width: 100%;
	min-height: 100%;
	z-index: 0px;
	position: relative;
	margin-top: -5px;
}

div.imgtitle {
	position: absolute;
	top: 25%;
	left: 38%;
	color: white;
	font-size: 7rem;
	font-weight: bold;
	font-family: 'Suravaram';
	
}

div.imgpre-title {
	position: absolute;
	top: 34%;
	left: 41%;
	color: white;
	font-size: 5rem;
	font-family: 'Suravaram';
	text-align:center;
}

.-button { -
	-swiper-theme-color: #007aff; -
	-swiper-navigation-size: 44px;
	font: 0.45em Verdana, Dotum, AppleGothic, sans-serif;
	font-family: "Helvetica Neue", "Helvetica", "Noto Sans KR",
		"Malgun Gothic", sans-serif !important;
	color: #000;
	text-decoration: none;
	user-select: none;
	position: relative;
	left: 61%;
	top: 110px;
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

.-button2 { -
	-swiper-theme-color: #007aff; -
	-swiper-navigation-size: 44px;
	font: 0.8em Verdana, Dotum, AppleGothic, sans-serif;
	font-family: "Helvetica Neue", "Helvetica", "Noto Sans KR",
		"Malgun Gothic", sans-serif !important;
	color: white;
	text-decoration: none;
	user-select: none;
	position: absolute;
	left: 50%;
	top: 3075px;
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

.-button2:hover {
	background-color: black !important;
	border: 1px solid #000 !important;
	text-decoration: none;
	text-decoration-color: white;
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
		<p>Better but different</p>
	</div>
	<div class="imgpre-title">
		<p></p>
		<a href="/product/fragrance" class="-button" style="border-color: rgb(255, 255, 255);">
			<div class="-text" style="color: rgb(255, 255, 255);">바로가기</div>
		</a>

	</div>
	<div class="video">
		<video src="${root}/image/mainvideo.mp4" autoplay loop muted
			poster="homepage.jpg" id="bg" style="width: 100%;"></video>
	</div>
	<div class="video2">
		<video src="${root}/image/brand story.mp4" autoplay loop muted
			poster="homepage.jpg" id="bg2" style="width: 100%;"></video>
	</div>
	
	<!--  -->
	<div class="bottomimage">
		<img src="${root}/image/mainimage3.png" style="width: 100%; height:100%;">


		<!-- <a href="/cart/about" class="-button2" style="border-color: rgb(255, 255, 255);">
			<div class="-text2" style="color: gold;">브랜드 스토리 보기</div>
		</a> -->
		</div>
	<!--중앙끝-->
</body>
</html>
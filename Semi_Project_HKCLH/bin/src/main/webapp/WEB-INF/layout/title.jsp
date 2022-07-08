<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fragbit</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=
Noto+Sans+KR&family=Radio+Canada:wght@300&family=
Roboto:wght@100&family=
Signika+Negative:wght@300&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap"
	rel="stylesheet">
	
<style type="text/css">

/*헤더*/
.navbar {
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: black;
	padding: 18px 12px;
	z-index: 4;
}

nav.navbar {
	position: relative;
	margin-bottom: 0px;
	text-decoration: none;
	border-radius: 0px;
}

.header {
	position: sticky;
	top: 0px;
}

.navbar_logo {
	color: white;
	text-align: center;
	position: relative;
	right: 200px;
	font-family: fantasy;
}

.navbar_logo :hover {
	text-decoration: none;
	color: white;
}

div.iconmenu {
	position: relative;
	right: 0px;
}

div.iconmenu a:hover {
	color: black;
}

.navbar_menu {
	display: flex;
	list-style: none;
	padding-left: 100px;
	position: relative;
	right: 220px;
	top: 5px;
}

ul, ol, li {
	list-style: none;
	margin: 0;
	padding: 0;
}

.navbar_menu li {
	padding: 16px 26px;
	display: block;
}

.navbar a {
	text-decoration: none;
	color: white;
	text-align: center;
	font-size: 4.5rem;
	margin-right: 10px;
}

.fa-bars:before {
	content: "\f0c9";
	font-size: 1.4rem;
	position: absolute;
	top: 12px;
	right: 3px;
}

.navbar_menu li a {
	text-align: center;
	text-decoration: none;
	font-size: 1.4rem;
	font-family: sans-serif;
}

.navbar_menu li a:hover {
	color: gold;
}

ul.navbar_menu>li ul.sub {
	display: flex;
	position: relative;
	top: 39px;
	right: 20px;
	padding: 0px 0px;
	opacity: 0;
	height: 0px;
	width: 0px;
}

ul.navbar_menu> li:hover ul.sub { /*범인*/
	display: block;
	opacity: 1;
	height: 0px;
}

ul.sub a:hover {
	font-weight: bold;
	color: gold;
	font-size: 1.5rem;
}



ul.navbar_menu>li:hover ul.sub a { /*서브메뉴색깔*/
	
}

ul.sub a {
	font-family: 'Radio+Canada:wght@300';
	color: white;
	position: relative;
	right: 10px;
}

ul.sub li {
	background-color: rgba(255, 255, 255, 0.1);
	width: 120px;
}
/*오른쪽 메뉴*/
.navbar_menu2 {
	display: flex;
	list-style: none;
	padding-left: 0px;
	position: absolute;
	right: 50px;
}

.navbar_menu2 li {
	padding: 8px 12px;
	display: block;
}

.navbar_menu2 li a {
	text-align: center;
	text-decoration: none;
	font-size: 0.9rem;
	font-family: sans-serif;
}

.navbar_menu2 li a:hover {
	color: gold;
}
/*header style end*/

/*오른쪽메뉴끝*/
</style>

<script type="text/javascript">
</script>
</head>
<c:set var="root" value="<%=request.getContextPath() %>"></c:set>
<body>
	<!--헤드-->
	<div class="header" id="header">
		<nav class="navbar">
			<ul class="navbar_menu">

				<li><a href="/cart/about">BRAND </a></li>

				<li><a href="">SHOP</a>

					<ul class="sub">
						<li><a href="#">FRAGRANCE</a></li>
						<li><a href="#">MySet</a></li>
						<li><a href="#">GOODS</a></li>
					</ul></li>


				<li><a href="">COMMUNITY</a>
					<ul class="sub">
						<li><a href="#">Q&amp;A</a></li>
						<li><a href="#">REVIEW</a></li>
						<li><a href="/notice/list">FAQ</a></li>
					</ul></li>
			</ul>

		<!--  <script type="text/javascript">
       	$("li.main").mouseover(function(){
       		
       		console.log(1);
       		$(this).next().next().toggle();
       	})
       </script> -->


			<div class="navbar_logo">

				<a href="/">FragBit</a>
			</div>
			<div class="iconmenu">
			
				<c:if test="${sessionScope.loginok==null}">
					<a href="/login/loginform"> <img src="${root}/image/login.png"
						id="loginicon" style="width: 30px">
					</a>
				</c:if>
				<c:if test="${sessionScope.loginok!=null}">
					<a href="/login/logout"> <img src="${root}/image/logout.png" id="logouticon"
						style="width: 30px">
					</a>
				</c:if>
				
				<c:if test="${sessionScope.loginok==null}">
				<a href="/login/loginform"> <img src="${root}/image/cart.png"
						id="carticon" style="width: 30px">
					</a>
				</c:if>
				<c:if test="${sessionScope.loginok!=null}">
				<a href="/cart/list?mid=${sessionScope.mId}"> <img src="${root}/image/cart.png"
					id="carticon" style="width: 30px"></a>
				</c:if>
			</div>
	</div>
	</nav>
	</div>
	<!--헤드 끝-->
</body>
</html>
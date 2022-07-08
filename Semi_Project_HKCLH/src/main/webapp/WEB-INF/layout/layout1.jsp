<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fragbit</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://kit.fontawesome.com/2d323a629b.js" crooslogin="annoymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=
Noto+Sans+KR&family=Radio+Canada:wght@300&family=
Roboto:wght@100&family=
Signika+Negative:wght@300&display=swap"
	rel="stylesheet">
</head>

<style type="text/css">
    html, body{
        margin:0;
        padding:0;
        background-color:white;
        font-family:  "Noto Sans KR", "sans-serif !important;"
    } 
    
    /* 반응형 (미완성) 완성할진몰루*/
@media screen and (max-width: 1004px) {
    .navbar {
        flex-direction: column;
        align-items: flex-start;
        padding: 8px 24px;
        list-style : none;
        /*상단고정*/
        position: sticky;
        top: 0;
        z-index:4;
        
    }
    .navbar_menu{
        flex-direction: column;
        align-items: center;
        width: 100;
        float:left;
    }
    .navbar_menu li{
        width: 100;
        text-align: center;
        list-style: none;
    }
    .navbar_icons{
        justify-content: center;
        width:100%;
    }
     all div{
   display: none}
}
 


</style>
<body>



<div class="layout">
	<div class="title">
		<tiles:insertAttribute name="title"/>
		
	</div>
 	<div class="main">
		<tiles:insertAttribute name="main"/>
	</div> 
	 <div class="footer">
		<tiles:insertAttribute name="footer"/>
	</div> 
	
</div>
</body>
</html>










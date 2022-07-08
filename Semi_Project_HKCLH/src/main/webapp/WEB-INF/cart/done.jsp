<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Complete</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>   
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100;300;400;500&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/resources/css/done.css">

<style type="text/css">
body{
	font-family: 'Noto Sans KR', sans-serif;
}
.doneimg{
	position: relative;
	margin-left: 135px;
	
	
	
}
.a{
	font-size: 25px;
	position: relative;
	margin-left: 100px;
}

.homebtn {
		position: relative;
		left: 20px;
        line-height:40px; 
        background-color:black;  
        text-align:center; 
        cursor: pointer;  
        color:white;
        transition:all 0.9s, color 0.3;  
        font-size: 25px;
    }
.homebtn:hover{
		color:black; 
		background-color: white; 
        border:1.5px black solid;
        font-size: 20px;
        }

</style>
</head>


<script type="text/javascript">


function a(){
const ran1 = Math.floor(Math.random() * 4000000);
const ran2 = Math.floor(Math.random() * 4000000);
$('.a').text("주문번호 : "+ran1+"-"+ran2);
}
</script>
<body onload="a()">
<br><br> <br>

<br><br>
<div class="content" style="width: 500px; margin-left: 570px;" >
<img class="doneimg" style="width: 250px; height: 250px;" src="../save/결제완료.PNG"><br><br>
<div class="cart-title" style="width: 550px;"> 결제가 완료되었습니다. </div>
<br>
<div class="a"></div>
<br><br><br>
<button class="homebtn" style="width: 500px; height: 50px;" onclick="location.href='../../'">홈으로</button>
</div>
<br><br><br><br><br><br><br>


</body>
</html>
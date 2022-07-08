<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NoCart</title>
    
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
   
  <style>
	div.container{
		font-size: 15px;
		font-family: 'Noto Sans KR';
	}
	
	div.text-nocart{
	margin:auto;
	}
	
	div.btnclose-nocart{
		width:110px; height: 35px;
		background-color: black;
		color:white;
		margin:auto;
		text-align: center;
		font-weight: bold;
	}
    
</style>
</head>
<body onload="Value()">

	<div class="container">  
	<br><br><br>
        <div class="text-nocart" style="margin-left: 10%; font-size: 19px;">장바구니에 선택된 상품이 없습니다.</div><br>
          <div class="btnclose-nocart" onclick="window.close()">닫기</div>	
    </div>

</body>
</html>
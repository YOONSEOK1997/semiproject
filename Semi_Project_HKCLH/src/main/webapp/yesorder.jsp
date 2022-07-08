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
	.te{
		position: relative;
		top: 6px;
	}
    
</style>

<script type="text/javascript">
function orderok() {
	opener.location.href="../orderinfo/buy?mid=${mId}";
	window.close();
}
</script>
</head>
<body onload="Value()">

	<div class="container">  
	<br><br><br>
        <div class="text-nocart" style="margin-left: 10%; font-size: 18px;">해당 상품을 바로구매하시겠습니까?</div><br>
          <div class="btnclose-nocart" onclick="orderok()"><span class="te">이동</span></div>	
    </div>

</body>
</html>
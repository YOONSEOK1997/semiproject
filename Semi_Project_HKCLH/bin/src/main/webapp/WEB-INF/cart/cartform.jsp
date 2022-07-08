<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CART</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>   
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100;300;400;500&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/resources/css/cart.css">
</head>

<body>

<div class="content">
<br><br><br><br><br>
<div class="title">Cart</div>
   
<%--    <!-- 장바구니 0 일때 출력 -->
   <c:choose>
   	<c:when test="${map.count ==0 }">장바구니가 비었습니다.</c:when>
   	<c:otherwise>장바구니 목록 출력</c:otherwise>
   </c:choose> --%>
   
   <!-- 카트 첫 행 -->
   <table class="cartt" style="width:1000px;">
	<tr style="background-color:white">
	<th style="width:80px;"><input type="checkbox" id="allcheck" >전체선택</th>
<%-- 	<th style="width:80px;"><button type="button" id="seldelete" class="seldelete" num="${dto.num}">선택삭제</th> --%>
	
	<th style="width:80px;">제품정보</th>
	<th style="width:80px;">수량</th>
	<th style="width:80px;">배송비</th>
	<th style="width:80px;">금액</th>
	</tr>
	
	
	<!-- 상품 목록(이미지 추가하기) -->
	<c:forEach var="cList2" items="${cList}" varStatus="i">
		<tr>
			<td>
				<input type="hidden" class="individual_pprice_input" value="${cList2.pprice}">
				<input type="hidden" class="individual_cquantity_input" value="${cList2.cquantity}">
				<input type="hidden" class="individual_totalPrice_input" value="${cList2.cquantity*(cList2.pprice+cList2.addprice)}">
			</td>
		</tr>
	
		<tr>
			<td><input type="checkbox" class="del" num="${cList2.pnum }">${cList2.pnum }</td>
		<!-- 상품 이미지 넣기 <td>${cList2.pphoto }</td> -->
			<td>${cList2.pphoto }${cList2.pname }</td>
			<td>${cList2.cquantity }</td>
			<td><span class="delivery_fee"><fmt:formatNumber value="0" pattern="#,### 원" /></span></td>
			<td><span class="sum_price"><fmt:formatNumber value="${cList2.SUM_PRICE}" pattern="#,### 원" /></span></td>
		</tr>
	</c:forEach>
</table>

<br><br><br><br><br><br><br>

<table class="a" style="width:1000px;">
	<tr>
		<th style="width:100px;">총 상품가격</th>
		<th/>
		<th style="width:100px;">추가금액</th>
		<th/>
		<th style="width:100px;">배송비</th>
		<th/>
		<th style="width:100px;">총 결제금액</th>
	</tr>
	
	<tr>
		<td>1</td>
		<td><img src="${root}/image/-.PNG" id="m" style="width:50px"></td>
		<td>0원</td>
		<td><img src="${root}/image/+.PNG" id="p" style="width:50px"></td>
		<td>3</td>
		<td><img src="${root}/image/=.PNG" id="e" style="width:50px"></td>
		<td>4</td>
	</tr>
</table>

<br><br><br><br>

<div class="buybtn" onclick="location.href='buy'">주문하기</div>
<br><br>
</div>

</body>
</html>
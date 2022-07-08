<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 

<%@ taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix= "fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>   
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<style type="text/css">

</style>
</head>
<body>
 
	<h3>총 ${totalCount}개의 상품</h3>
	
	<table class="table table-bordered" style="width: 800px;">
		<tr>
			<th>상품IDX</th>
			<th>상품</th>
			<th>가격</th>
			<th>메뉴1</th>
			<th>메뉴2</th>
			<th>평점</th>
			<th>리뷰개수</th>
			<th>입고일</th>		
		</tr>
		
		<c:forEach var="dto" items="${list}">
			<tr>
				<td>
					${dto.pnum}
				</td>
				<c:set var="no" value="${no+1}"/>
				<td>
					<!--사진, 상품명 클릭시 상세페이지 -->
					<a href="detail?pnum=${dto.pnum}">
						<!-- 사진이 들어있는 경우 출력하기 -->
						<c:if test="${dto.pphoto!='' }">
							<img src="../save/${dto.pphoto}"  width="80" height="80" border="1">
							&nbsp;&nbsp;
						</c:if>
						${dto.pname}
					</a>
					
				</td>
				<td><fmt:formatNumber value="${dto.pprice}" type="number" maxFractionDigits="3"/>원</td>
				<td>${dto.pcate1}</td>
				<td>${dto.pcate2}</td>
				<td>${dto.prate}</td>
				<td>${dto.pratecnt}</td>
				<td>${dto.pdate}</td>
				
			</tr>
		</c:forEach>
	
	</table>
	<!-- 등록 (관리자만) -->   
         <button type="button" class="btn btn-info" id="formbtn"
         onclick="location.href='form'">
         상품등록</button>
	
</body>
</html>
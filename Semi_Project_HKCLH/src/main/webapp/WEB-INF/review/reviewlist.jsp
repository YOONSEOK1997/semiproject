<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100;300;400;500&display=swap" rel="stylesheet">
<style type="text/css">


#review_table{
	font-family: 'Noto Sans KR';
	width: 1000px;
	height: 250px;
	border-bottom: solid;
}

#review{

	position: relative;
	left: 400px

}

.review_label{
	font-family: 'Noto Sans KR';
	position: absolute;
	top: 140px;
  	left: 150px;
  	margin-bottom: 30px;
}

label{
	font-size: 15px;
}

div #review_cate{
	font-family: 'Noto Sans KR';
	font-size : 20px;
	width: 260px;
	height: 50px;
	position: relative;
	top: 100px;
	left: 100px;
	border-top: 3px solid #000000;
}

#review_cate label{

	cursor: pointer;
	background-color: #000000;
	color: white;
	font-weight: 400;
}

a:visited{
	color: white;
}

a:link{
	color: white;
}

.clickable {cursor: pointer;}
.hover {text-decoration: underline;}

button{
position: relative;
left: 100px;
font-family: 'Noto Sans KR';
font-weight: 400;

}

</style>

</head>


	<!-- 최신순 정렬 -->
	<script type = "text/javascript">
	
	$(document).ready(function() {
		   var reSortColors = function($table) {
		   //그냥지정했던 짝,홀에따른 클래스부여를
		   //함수로 만들어놓았다.
		     $('tbody tr:odd', $table)
		       .removeClass('even').addClass('odd');
		     $('tbody tr:even', $table)
		       .removeClass('odd').addClass('even');
		   };
		   
		   $('table.sortable').each(function() {
		     var $table = $(this);
		     reSortColors($table);
			 //여기서먼저적용
		     $('th', $table).each(function(column) {
		       var $header = $(this);
		       if ($header.is('.sorting')) {
		         $header.addClass('clickable').hover(function() {
		           $header.addClass('hover');
		         }, function() {
		           $header.removeClass('hover');
		         }).click(function() {
		           var rows = $table.find('tbody > tr').get();
		           rows.sort(function(a, b) {
		             var keyA = $(a).children('td').eq(column).text()
		               .toUpperCase();
		             var keyB = $(b).children('td').eq(column).text()
		               .toUpperCase();
		             if (keyA < keyB) return -1;
		             if (keyA > keyB) return 1;
		             return 0;
		           });
		           $.each(rows, function(index, row) {
		             $table.children('tbody').append(row);
		           });	   
		           reSortColors($table);
		           //또 완료되었을따 다시 적용
		            });} });});});

	</script>
<body>
<br><br>
<label style="font-size: 40px;" class="review_label">Review</label>
<div id="review_cate">
<br>&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;<!-- 리뷰 정렬 카테고리 -->
	<label id="latest">최신순</label>
	<b>/</b>
	<label id="pnumreviewlist"><a href="/review/pnumlist">상품별 리뷰보기</a></label>

</div><br><br>
	<c:forEach var="dto" items="${list}" varStatus="i">
	<div id="review">
		<table class="table table-borderless" id="review_table">
			<thead>
				<tr style="height: 30px;">
					<td colspan="4"> <!-- 별점 value 따라서 별 show -->
					<c:if test="${dto.rrate == '1'}">
						<label id="star">★ 별로에요</label>
					</c:if>
					
					<c:if test="${dto.rrate == '2'}">
						<label id="star">★★ 그냥 그래요</label>
					</c:if>
					
					<c:if test="${dto.rrate == '3'}">
						<label id="star">★★★ 보통이에요</label>
					</c:if>
					
					<c:if test="${dto.rrate == '4'}">
						<label id="star">★★★★ 맘에 들어요</label>
					</c:if>
					
					<c:if test="${dto.rrate == '5'}">
						<label id="star">★★★★★ 아주 좋아요</label>
					</c:if>
					
					</td>
					<td colspan="2" rowspan="3"><b>${dto.mid}</b>&nbsp;님이 작성한 리뷰입니다.<br>
					<br><b>작성일:</b> <fmt:formatDate value="${dto.rdate}" pattern="yyyy/MM/dd HH:mm"/></td>
				</tr>
				<tr>
					<td colspan="2">
						<img src="${root}/save/${dto.pphoto}" style="width:100px;">
						</td>
					<td colspan="2">구매상품 : ${dto.pname}</td>
				</tr>
				<tr>
				<c:choose>
					<c:when test = "${dto.rphoto!=''}">
					<td colspan="4"><img src="../save/${dto.rphoto}" width="80" height="80" border="1">
					
					리뷰내용 : ${dto.rcontent}</td></c:when>
					
					<c:otherwise>
					<td>리뷰내용 : ${dto.rcontent}</td></c:otherwise>
				</c:choose>
				</tr>
			</thead>
		</table>
	</div>
	</c:forEach>
	
	<c:if test="${sessionScope.mId!=null}">
	<tr>
		<td colspan="2" align="center" style="height: 100px; margin-top: 30px;"  >
			<button class="btn-lg btn-success" onclick="location.href='form'" 
			style="background-color:black; color: white; border: 1px solid black"><b> <span class="glyphicon glyphicon-pencil"></span>리뷰 작성</b></button>
		</td>
		</tr>
	</c:if>
		<br><br>
	
</body>
</html>
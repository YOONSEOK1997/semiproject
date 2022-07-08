<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>   
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100;300;400;500&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/resources/css/list.css">


<style type="text/css">

  #faq-title {
  	font-family: 'Noto Sans KR';
    font-size: 35px;
    position: absolute;
  	top: 140px;
  	left: 150px;
  }
  
 .answer {
    display: none;
    padding-bottom: 30px;
    font-family: 'Noto Sans KR';
    font-weight: 300;
    font-size: 17px;
  }
  
  .faq-content {
    border-bottom: 1px solid #e0e0e0;
  }
  
  .question {
	font-weight: 400;
  	font-family: 'Noto Sans KR';
    font-size: 15px;
    padding: 30px 0;
    cursor: pointer;
    border: none;
    outline: none;
    background: none;
    width: 100%;
    text-align: left;
  }

  [id$="-toggle"] {
    margin-right: 15px;
  }
  div.notice{
  width: 400px;
  position:relative;
  left: 150px;
  top: 100px;
  }
  span{
  	color: black;
  }
  span:hover{
    color: #2962ff;
  
  }
  
  table th,table td{
  	text-align: center;
  }
  .navbar_menu li a:not([href]):not([tabindex]) {
    color: white;
    text-decoration: none;
    font-family: 'fantasy';
}
.navbar_menu li a:hover:not([href]):not([tabindex]) {
	color: gold;
}
  
</style>
<script type="text/javascript">
	$(function(){
		$("div.mypage").click(function(){
			   location.href = "/mypage?mId=${sessionScope.mId}";
		});
		$("div.review").click(function(){
			   location.href = "/mypage/review?mid=${sessionScope.mId}";
		});
		$("div.qna").click(function(){
			   location.href = "/mypage/qna?mId=${sessionScope.mId}";
		});
		$("div.alter").click(function(){
			   location.href = "/mypage/alter";
		});
		$("div.delete").click(function(){
			   location.href = "/mypage/delete";
		});
	})
</script>
</head>
<body>
<c:set var="root" value="<%=request.getContextPath() %>"></c:set>

<input type="hidden" value="${mId}">
<div class="notice">
<a>
<div class="faq-content mypage" >
  <button class="question" id="que-1"><span id="que-1-toggle">+</span>
  <span >
  마이 페이지</span></button>
</div></a>

<div class="faq-content list">
 <button class="question" id="que-3"><span id="que-3-toggle">+</span><span style="font-weight: bold; font-size: 20px;">
 주문 내역</span></button>
</div>


<div class="faq-content review">
  <button class="question" id="que-4"><span id="que-4-toggle">+</span><span>내 리뷰</span></button>
</div>

<div class="faq-content qna">
  <button class="question" id="que-5"><span id="que-5-toggle">+</span><span>1:1 문의</span></button>
</div>

<div class="faq-content alter">
  <button class="question" id="que-6"><span id="que-6-toggle">+</span><span>회원 정보 수정</span></button>
</div>

<div class="faq-content delete">
  <button class="question" id="que-6"><span id="que-6-toggle">+</span><span>회원 탈퇴</span></button>
</div>

<div class="container" style="position: absolute; left: 400px; top:-20px; border: 0px solid black;">
<h3 style=" text-align: center;"><b>주문 내역</b></h3>
	<br>
    <div id="wrapper">
    
       <!-- 카트 테이블 첫 행 -->
   <table class="cart-table" style="width:800;">
   <thead>
   	<tr>
		<th class="th_width_1" style="text-align: center;">주문 번호</th>
		<th class="th_width_2">제품정보</th>
		<th class="th_width_3">옵션</th>
		<th class="th_width_4" style="font-weight: 400;">금액</th>	
		<th class="th_width_5">날짜</th>
		
	</tr>
   </thead>
   <tbody>
	<c:forEach var="dto" items="${list}" varStatus="i">
	<tr>

		
		<td style="text-align: center;">${dto.payid}</td>
		<!-- 이미지&제품정보 -->
		<!-- <td><img src="${root}/save/${dto.pphoto}" style="width:150px; margin-top: 20px; margin-bottom: 20px;">
		&nbsp;&nbsp;<span style="font-size: 1.2em; font-weight: bold;">${dto.pname}</span>${dto.pyquantity}/${dto.oid }ml<br>
		<br></td>--><td>
<table class="but-sangpum-text"><tr style="margin-bottom: 15px;"><td rowspan="5" style="border-top:0px; border-bottom:0px;">
				<img src="${root}/save/${dto.pphoto}" style=" box-shadow:5px 5px 5px gray;  width:180px; margin-top: 20px; margin-bottom: 20px; margin-right: 20px;">
		            

		            </td>
                <td style="color:black; font-size:25px; height:0px; border-top: 0px;  text-align: left; border-bottom:0px; font-weight: bold; position: static; top: -5px;" colspan="5">${dto.pname}</td>
                    
                </tr>
                <tr>
                    <td colspan="5" style="text-align: left; height:0px; color: gray; border-bottom:0px; border-top: 0px;">Tag : ${dto.ptag}</td>
                </tr>
                <tr>
                    <td colspan="5" style="text-align: left; height:0px; color: gray; border-bottom:0px; border-top: 0px;">- ${dto.pcate1}</td>
                    
                </tr>
                <tr>
                    <td colspan="5" style="text-align: left; height:0px; color: gray; border-bottom:0px; border-top: 0px;">- ${dto.pcate2}</td>
                </tr>
                <tr style="position:relative; margin-bottom: 15px;">
                    <td colspan="5" style="text-align: left; height:0px; color: gray; border-bottom:0px; border-top: 0px; position:relative; margin-bottom: 15px;">[조건] / 기본배송 </td>
                </tr>
            </table>
            </td>
		<!-- 수량선택 -->	
		<td style="font-family: 'Noto Sans KR'; font-size: 20px;">${dto.oid }ml / ${dto.pyquantity}개</td>
		<td style="font-family: 'Noto Sans KR'; font-size: 20px;">${dto.oprice*dto.pyquantity} 원</td>
		<td style="font-family: 'Noto Sans KR'; font-size: 20px;"><fmt:formatDate value="${dto.pydate}" pattern="yyyy-MM-dd"/></td>
		</tr>
		<tr></tr><tr></tr>
	</c:forEach>
	</tbody>
</table>

</div>

</div>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br>
</div>
</body>
</html>
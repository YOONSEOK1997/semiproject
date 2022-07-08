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
<link
href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Gowun+Dodum&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap"
rel="stylesheet">
<style type="text/css">
body {
font-size: 1.5rem;
font-family: 'Gowun Dodum';
}

table.notice{
font-family: 'Gowun Dodum';
width: 1000px;
}

table.h3{
font-family: 'Gowun Dodum';
margin-left: 200px;
}

table{
margin-left: 200px;
font-family: 'Gowun Dodum';
border-collapse: collapse;

}

 .answer {
    display: none;
    padding-bottom: 30px;
  }
  #faq-title {
    font-size: 25px;
  }
  .faq-content {
    border-bottom: 1px solid #e0e0e0;
  }
  .question {
    font-size: 19px;
    padding: 30px 0;
    cursor: pointer;
    border: none;
    outline: none;
    background: none;
    width: 100%;
    text-align: left;
  }
  .question:hover {
    color: #2962ff;
  }
  [id$="-toggle"] {
    margin-right: 15px;
  }
</style>

</head>
<body><br>
<h3><b>공지사항</b></h3>
<div class="table">
<hr>

<table class="table table-bordered notice">
	<tr bgcolor="#FFFFFF" align="center";>
		<th width="100">번호</th>
		<th width="350">제목</th>
		<th width="800">내용</th>
		<th width="400">작성일</th>
	</tr>
	<c:forEach var="dto" items="${list}" varStatus="i">
		<tr>
			<td>${dto.nnum}</td>
			<td>${dto.ntitle}</td>
			<td>${dto.ncontent}</td>
			<!-- <c:if test="${dto.nphoto!='' }">
				<img src="../${dto.nphoto}" width="80" height="80" border="1">
				&nbsp;&nbsp;
			</c:if> -->
			<td><fmt:formatDate value="${dto.ndate}"
			pattern="yyyy-MM-dd HH:mm:ss"/></td>
		</tr>
	</c:forEach>
</table>

		 <button type="button" class="btn btn-success"
		 style="width: 100px;" onclick="location.href='form'">
		 	<span class="glyphicon glyphicon-heart">공지쓰기</span>
		 </button>
		 </div>
		 
		 
		 
		 
		 <span id="faq-title">공지사항</span>
<div class="faq-content">
  <button class="question" id="que-1"><span id="que-1-toggle">+</span><span>배송기간 안내 (주문 후 3~4일 예상)</span></button>
  <div class="answer" id="ans-1">BitFrag는 월/수/금 출고가 진행되고 있으며,<br>

그럴 경우 주문 후 3~4일 내에 제품을 받아보실 수 있으실 것으로 예상됩니다.<br>

공휴일이나 파펨 내부사정으로 인한 약간의 변동이 있을 수 있음을 미리 알려드립니다. </div>
</div>
<div class="faq-content">
  <button class="question" id="que-2"><span id="que-2-toggle">+</span><span>교환 및 반품 규정</span></button>
  <div class="answer" id="ans-2">캐스케이딩 스타일 시트(Cascading Style Sheets)입니다.</div>
</div>
<div class="faq-content">
  <button class="question" id="que-3"><span id="que-3-toggle">+</span><span>제주도 추가 배송비 무료 안내</span></button>
  <div class="answer" id="ans-3">자바스크립트는 객체(Object)를 기초로 하는 스크립트 프로그래밍 언어입니다.</div>
</div>

<script>
  const items = document.querySelectorAll('.question');

  function openCloseAnswer() {
    const answerId = this.id.replace('que', 'ans');

    if(document.getElementById(answerId).style.display === 'block') {
      document.getElementById(answerId).style.display = 'none';
      document.getElementById(this.id + '-toggle').textContent = '+';
    } else {
      document.getElementById(answerId).style.display = 'block';
      document.getElementById(this.id + '-toggle').textContent = '-';
    }
  }

  items.forEach(item => item.addEventListener('click', openCloseAnswer));
</script>
		 </body>
		 </html>
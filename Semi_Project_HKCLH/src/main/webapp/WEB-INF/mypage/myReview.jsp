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
	<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100;300;400;500&display=swap" rel="stylesheet">
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


  
</style>
<script type="text/javascript">


	$(function(){
		$("div.mypage").click(function(){
			   location.href = "/mypage?mId=${sessionScope.mId}";
		});
		$("div.list").click(function(){
			   location.href = "/mypage/list?mId=${sessionScope.mId}";
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

	
<input type="hidden" id="mId" name="mid" value="${mId}">
<div class="notice">
<a>

<div class="faq-content mypage">
  <button class="question" id="que-1"><span id="que-1-toggle">+</span>
  <span >
  마이 페이지</span></button>
</div></a>

<div class="faq-content list">
 <button class="question" id="que-3"><span id="que-3-toggle">+</span><span>주문 내역</span></button>
</div>


<div class="faq-content review">
  <button class="question" id="que-4"><span id="que-4-toggle">+</span><span style="font-weight: bold; font-size: 20px;">
  내 리뷰</span></button>
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

<div class="container" style="position: absolute; left: 300px; top:-20px; border: 0px solid black;">
<label style="font-size: 40px;" class="review_label">Review</label>
<div id="review_cate">
<br>&nbsp; &nbsp; <!-- 리뷰 정렬 카테고리 -->
	<!-- <label id="latest">최신순</label>
	<b>/</b>
	<label id="high_rrate">별점순</label>
	<b>/</b>
	<label id="pnumreviewlist"><a href="/review/pnumlist">상품별 리뷰보기</a></label>-->

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
						<a href="/product/detail?pnum=${dto.pnum }">
						<img src="${root}/save/${dto.pphoto}" style="width:100px;"></a>
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

</div>




<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br>
</div>


</body>
</html>
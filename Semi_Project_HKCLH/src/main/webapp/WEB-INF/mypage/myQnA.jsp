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

<script type="text/javascript">
        function showHideRow(row) {
            $("#" + row).toggle();
        }
    </script>
    
  
<style type = "text/css">

 .navbar_menu li a:not([href]):not([tabindex]) {
    color: white;
    text-decoration: none;
}
.navbar_menu li a:hover:not([href]):not([tabindex]) {
	color: gold;
}

}
        #wrapper {
            margin: 0 auto;
            padding: 0px;
            text-align: center;
            width: 995px;
            
        }  
  
        #table_detail {
        	font-family: 'Noto Sans KR';
        	font-weight: 500;
        	font-size: 17px;
            width: 1000px;
            text-align: left;
            border-collapse: collapse;
            color: #2E2E2E;
            border: #A4A4A4;
            height: 300px;
        }
  
        #table_detail tr:hover {
            background-color: #F2F2F2;
        }
  
        #table_detail .hidden_row {
            display: none;
             
        }
        
        tr{
        line-height: 65px;
        }
        
        #table_detail th{
        text-align: center;
        border-bottom: solid #444444;
        font-size: 20px;}
        
        .hidden_row{
        background-color: #F2F2F2;
        font-family: 'Noto Sans KR';
        font-weight: 400;
    
        }
        
        h2 b {
        	font-family: 'Noto Sans KR';
        	font-size: 35px;	
        }
  		
  		#qna_board ,#table_detail{
  			position: relative;
  			left: 200px;
  			font-family: 'Noto Sans KR';
  			font-size: 20px;
  			border-collapse: collapse;

  		}     
  
	   #qna_board th{
        border-bottom: solid #444444;
        border-top: transparent;
        text-align: center;
        font-family: 'Noto Sans KR';
        font-size: 20px;
        }
        
        .addqna{
        
        position: relative;
        left: 200px;
        
        }
        
        

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
  
</style>
<script type="text/javascript">
	$(function(){
		$("div.mypage").click(function(){
			   location.href = "/mypage?mId=${sessionScope.mId}";
		});
		$("div.list").click(function(){
			   location.href = "/mypage/list?mId=${sessionScope.mId}";
		});
		$("div.review").click(function(){
			   location.href = "/mypage/review?mid=${sessionScope.mId}";
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

<input type="hidden" name="mId" value="${mId}">
<div class="notice">
<a>
<div class="faq-content mypage" >
  <button class="question" id="que-1"><span id="que-1-toggle">+</span>
  <span >
  마이 페이지</span></button>
</div></a>

<div class="faq-content list">
 <button class="question" id="que-3"><span id="que-3-toggle">+</span><span>주문 내역</span></button>
</div>


<div class="faq-content review">
  <button class="question" id="que-4"><span id="que-4-toggle">+</span><span>내 리뷰</span></button>
</div>

<div class="faq-content qna">
  <button class="question" id="que-5"><span id="que-5-toggle">+</span><span style="font-weight: bold; font-size: 20px;">
  1:1 문의</span></button>
</div>

<div class="faq-content alter">
  <button class="question" id="que-6"><span id="que-6-toggle">+</span><span>회원 정보 수정</span></button>
</div>

<div class="faq-content delete">
  <button class="question" id="que-6"><span id="que-6-toggle">+</span><span>회원 탈퇴</span></button>
</div>

<div class="container" style="position: absolute; left: 200px; top:-20px; border: 0px solid black;">
	<br>
    <div id="wrapper">
<h3 style=" position:relative; left:180px; text-align: center; margin-bottom: 20px;"><b>나의 Q&A</b></h3>
        <table id="table_detail" 
            align=center cellpadding=10>
  			
			<tr>
                <th>번 호</th>
                <th>카테고리</th>
                <th>제 목</th>
                <th>작성자</th>
                <th>문의상태</th>
                <th>작성일</th>
            </tr>
            
  			<c:forEach var="dto" items="${list }" varStatus="i">
  			
  			<tr onclick="showHideRow('hidden_row${dto.qnum}');" style="text-align: center;">
                <td>${dto.qnum }</td>
                <td>${dto.qcate }</td>
                <td>${dto.qtitle }</td>
                <td>${mId }</td>
  				<td>${dto.qstate }</td>
  				<td>${dto.qdate }</td>          
            </tr>
  			<tr id="hidden_row${dto.qnum }" class="hidden_row">
				<td colspan="6" style="text-align: center;">${dto.qcontent }</td>
            </tr>
  			</c:forEach>



        </table>
</div>
</div>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br>
</div>


<br><br>



</body>
  <script type="text/javascript">

/* 클릭시 스크롤 이동 */
$(document).ready(function($) {
    $(".scroll_move").click(function(event){
            event.preventDefault();
            $('html,body').animate({scrollTop:$(this.hash).offset().top}, 600);
    });
    
/* scroll top button */
	// 1. 특정 위치에서 부터 버튼 나타고, 사라지게(fade)
    $(window).scroll(function () {
		if ($(this).scrollTop() > 400) {
			$('.go-top').fadeIn(200);
		} else {
			$('.go-top').fadeOut(200);
		}
	});

	// 2. 버튼 클릭하면 원하는 위치로 이동
	$('.go-top').click(function (event) {
		event.preventDefault();
		$('html, body').animate({ scrollTop: 0 }, 300);
	});
	
});
</script>
</html>
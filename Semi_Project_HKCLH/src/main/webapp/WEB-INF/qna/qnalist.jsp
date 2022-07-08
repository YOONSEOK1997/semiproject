<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>

<head>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js">
	
</script>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100;300;400;500&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>

	
<script type="text/javascript">
        function showHideRow(row) {
            $("#" + row).toggle();
        }
    </script>
    
  
    <style type = "text/css">
        body {
            margin: 0 auto;
            padding: 0px;
            text-align: center;
            width: 100%;
            
        }
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
        font-weight: 300;
    
        }
        
        h2 b {
        	font-family: 'Noto Sans KR';
        	font-size: 35px;	
        }
  		
  		#qna_board {
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
        
        
  
    </style>
</head>

<body>
<br><br>
<h2><b>자주묻는질문</b></h2>
	<br>
    <div id="wrapper">
        <table id="table_detail" 
            align=center cellpadding=10>
  			
            <tr>
                <th>제목</th>
                <th>작성일</th>
            </tr>
     
  
            <tr onclick="showHideRow('hidden_row1');">
                <td>계절별 향수를 알고싶어요</td>
                <td>2022-05-24 12:15</td>
          
            </tr>
           
            <tr id="hidden_row1" class="hidden_row">
                <td colspan=4>
                    <br>각 제품 상세페이지에 해당 제품을 즐기기 좋은 계절이 표기되어 있습니다.<br>

					상세 페이지를 참고해 주셔도 좋고 아래의 내용을 참고로 고르셔도 좋습니다.<br><br>

 					<b>봄</b> : 백색향, 물기 머금은 장미, 은은한 비누, 로맨틱로즈, 너티크림 초코라떼, 여름의 오렌지길 <br>

  				  #부드러운 #비누향 #사랑스러운 #깔끔한 #장미 # 가벼운 #포근한 #꽃잎 

    			#깔끔한 #청순한 #달콤한 #달달한 #커피 #초콜릿 #초여름 #투명한 #푸르른<br>

<br>

	<b>여름</b> : 연둣빛 풀꽃, 물속으로 다이빙, 봄비에 꽃망울, 풀잎 위 아침이슬, 오렌지빛 꽃물, 놀이동산 데이트, 회색빛 시간, 초록빛 기억 <br>

        #청량한 #투명한 #풀숲  #시원한  #샤프한  #물  #내추럴  #프리지아  #산뜻한  

        #풀잎  #오렌지  #새콤한 #순수한 #풀꽃 #데일리 #소나무  #시원한  #차분한

        #들꽃 #가벼운<br>

 <br>

<b>가을</b> : 달빛 가득 돌담길, 밤바다 드라이브, 우아한 코트  <br>

        #나무껍질  #차분한  #지적인  #열정적인  #시원한  #물  #우아한  

        #자스민  #달콤한<br>

 <br>     

<b>겨울</b>:  투명한 바람, 바삭한 가을바람, 상큼달달 과즙, 어른의 솜사탕, 포근한 겨울밤, 평온한 인센스, 서랍 깊은 곳에 잠들어 있는 손편지의 추억<br>

        #차분한  #깔끔한  #겨울숲  #지적인  #나무  #섬세한  #달콤한  #귀여운  #과일  

        #달달한  #바닐라  #어른이  #부드러운  #바닐라  #포근한  #다정한  #빈티지우드  

        #고풍스러운

<br><br>
                </td>
            </tr>
  
            <tr onclick="showHideRow('hidden_row2');">
                <td>향 테스트를 해보고 싶어요</td>
                <td>2022-05-24 14:20</td>
               
            </tr>
            <tr id="hidden_row2" class="hidden_row">
                <td colspan=4>
                  직접 시향하지 않아도 취향 맞춤 향을 추천해주는 퍼퓸텔러를 통해 소용량인 데일리키트 구매를 추천해 드립니다.
                </td>
            </tr>
  
            <tr onclick="showHideRow('hidden_row3');">
                <td>직접 가서 시향할 수 있는 오프라인 매장은 없나요?</td>
                <td>2022-05-24 14:22</td>
               
            </tr>
            <tr id="hidden_row3" class="hidden_row">
                <td colspan=4>
                   오프라인 매장은 운영하고 있지 않습니다.<br>
				My Set를 통해 나에게 맞는 향을 추천받고 소용량의 데일리키트로 먼저 체험해보시길 권장드립니다.<br>
                </td>
            </tr>
  
            <tr onclick="showHideRow('hidden_row4');">
                <td>문의사항이 있을 경우에는 어느 채널을 통해 문의해야 하나요?</td>
                <td>2022-05-25 11:25</td>
            
            </tr>
            <tr id="hidden_row4" class="hidden_row">
                <td colspan=4>
                   각종 문의를 하실 수 있는 파펨의 채널은 다음과 같습니다.<br>
				<br>- <b>Paffem web site 1:1 문의 게시판</b><br>

				- <b>파펨 고객센터 메일: help@paffem.com</b> <br>

				- <b>파펨 1:1 대화 : 홈페이지 우측 하단 1:1  클릭</b> <br>

				- <b>고객센터 전화 : 070-4948-8028</b> <br>
                </td>
            </tr>
  
            <tr onclick="showHideRow('hidden_row5');">
                <td>FragBit의 이전 향수를 구입하고 싶어요</td>
                <td>2022-05-25 13:11</td>
                
            </tr>
            <tr id="hidden_row5" class="hidden_row">
                <td colspan=4>
                    파펨의 향수가 2019년 8월 리뉴얼되어 이전 상품은 더 이상 공식 판매하고 있지 않습니다. <br>

일부 판매되던 향수의 경우도 유통기한 마감으로 인해 더 이상 판매되지 않고 있으니 양해 부탁드립니다.<br>



감사합니다.
                </td>
            </tr>
        </table>
</div>


    <br><br>                    <!-- QnA 테이블  -->
	<h2><b>QnA</b></h2>
	<br>
	<div class="qnaboard" id="qnaboard";>
		<table class="table table-borderless qna" id="qna_board" style="width: 1400px;">
			
			<tr>
				<th style="width: 50px;">번호</th>
				<th style="width: 100px;">카테고리</th>
				<th style="width: 400px;">제목</th>
				<th style="width: 100px;">작성자</th>
				<th style="width: 100px;">문의상태</th>
				<th style="width: 150px;">작성일</th>
			</tr>
			</div>
				<c:if test="${totalCount==0}">
				<tr>
					<td colspan="6" align="center">
						<b>등록된 글이 없습니다</b>
					</td>
				</tr>
			</c:if>
			<c:if test="${totalCount>0}">
				<c:forEach var="dto" items="${list}">
					<tr>
						
						<td>${no}</td>
						<c:set var="no" value="${no-1}"/>
						<td>${dto.qcate}</td>
						<!-- 제목 -->
						<td>
							<!-- 답글인 경우만 해당 -->
							<c:if test="${dto.relevel>0}">
								<!-- level 1당 빈칸 3칸 -->
								<c:forEach begin="1" end="${dto.relevel}">
								 	&nbsp;&nbsp;
								</c:forEach>
								<img src="../save/re.png">
							</c:if>
							
							
							<!-- 제목 출력 -->
							<a href="content?qnum=${dto.qnum}&currentPage=${currentPage}">
								${dto.qtitle}
							</a>
							<!-- 사진이 포함되어 있는 경우 아이콘 표시 -->
							<c:if test="${dto.qimg!='no'}">
								<span class="glyphicon glyphicon-picture"
							style="color: gray; font-size: 0.8em;"></span>
							</c:if>
						</td>
						<td>
						<c:choose>
						<c:when test = "${dto.mid=='fragbit'}">
							<img src = "../save/fragbit.png" width="23";>&nbsp;${dto.mid}
						</c:when>
						<c:otherwise>
						${dto.mid}
						</c:otherwise>
						</c:choose>
						</td>		
						
						<td>
						${dto.qstate}
						<c:set var="dto.qstate" value="답변완료"/>
						</td>
						<td><fmt:formatDate value="${dto.qdate}"
							pattern="yyyy-MM-dd"/></td>
					</tr>
				</c:forEach>
			</c:if>
		
		</table>
		<div class="paging" style="margin-left: 300px;">
			<ul class="pagination">
			
			<!-- 이전 -->
            <c:if test="${startPage>1}">
               <li><a href="list?currentPage=${startPage-1}">이전</a></li>
            </c:if>

				<c:forEach var="pp" begin="${startPage}" end="${endPage}">
					<c:if test="${pp==currentPage}">
						<li class="active"><a href="list?currentPage=${pp}">${pp}</a></li>
					</c:if>
					<c:if test="${pp!=currentPage}">
						<li><a href="list?currentPage=${pp}">${pp}</a></li>
					</c:if>
				</c:forEach>
				
			<!-- 다음 -->
			<c:if test="${endPage<totalPage}">
				<li><a href="list?currentPage=${endPage+1}">다음</a></li>
			</c:if>
			</ul>
			
		</div>


	<div id="addqna">
	<c:if test="${sessionScope.loginok!=null}">
	 <button type="button" class="btn-lg btn-success"
		 style="width: 150px; background-color: black;
		 border: black;" onclick="location.href='form'">
		 	<span class="glyphicon glyphicon-question-sign">문의작성</span>
		 </button>
		 </c:if>
	</div>
	<br><br>




<button type="button" class="btn btn-default go-top" id="go-top"
style="position: fixed; right: 40px; bottom:120px;"><span class="glyphicon glyphicon-chevron-up"></span></button> 

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
</body>

</html>
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
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js">
	
</script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
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
  
        #wrapper {
            margin: 0 auto;
            padding: 0px;
            text-align: center;
            width: 995px;
            
        }
  
  
        #table_detail {
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
        line-height: 60px;
        }
        
        #table_detail th{
        text-align: center;
        border-bottom: solid #444444;}
        
        .hidden_row{
        background-color: #F2F2F2;
        }
        
        #qnaboard th{
        	text-align: center;
        }
        
  
    </style>
</head>

<body>

    <div id="wrapper">
<h3><b>자주묻는질문</b></h3>
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

 					봄 : 백색향, 물기 머금은 장미, 은은한 비누, 로맨틱로즈, 너티크림 초코라떼, 여름의 오렌지길 <br>

  				  #부드러운 #비누향 #사랑스러운 #깔끔한 #장미 # 가벼운 #포근한 #꽃잎 

    			#깔끔한 #청순한 #달콤한 #달달한 #커피 #초콜릿 #초여름 #투명한 #푸르른<br>

<br>

	여름 : 연둣빛 풀꽃, 물속으로 다이빙, 봄비에 꽃망울, 풀잎 위 아침이슬, 오렌지빛 꽃물, 놀이동산 데이트, 회색빛 시간, 초록빛 기억 <br>

        #청량한 #투명한 #풀숲  #시원한  #샤프한  #물  #내추럴  #프리지아  #산뜻한  

        #풀잎  #오렌지  #새콤한 #순수한 #풀꽃 #데일리 #소나무  #시원한  #차분한

        #들꽃 #가벼운<br>

 <br>

가을 : 달빛 가득 돌담길, 밤바다 드라이브, 우아한 코트  <br>

        #나무껍질  #차분한  #지적인  #열정적인  #시원한  #물  #우아한  

        #자스민  #달콤한<br>

 <br>     

겨울:  투명한 바람, 바삭한 가을바람, 상큼달달 과즙, 어른의 솜사탕, 포근한 겨울밤, 평온한 인센스, 서랍 깊은 곳에 잠들어 있는 손편지의 추억<br>

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
				<br>- Paffem web site 1:1 문의 게시판<br>

				- 파펨 고객센터 메일: help@paffem.com <br>

				- 파펨 1:1 대화 : 홈페이지 우측 하단 1:1  클릭 <br>

				- 고객센터 전화 : 070-4948-8028 <br>
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
	<h2>QnA</h2>
	<div class="qnaboard" id="qnaboard";>
		<table class="table table-bordered" style="width: 1400px;">
			
			<tr style="background-color: #ddd">
				<th style="width: 50px;">번호</th>
				<th style="width: 100px;">카테고리</th>
				<th style="width: 400px;">제목</th>
				<th style="width: 100px;">작성자</th>
				<th style="width: 100px;">문의상태</th>
				<th style="width: 150px;">작성일</th>
			</tr>

					<tr>
				<c:forEach var="dto" items="${list}">
					</tr>
						<td>${dto.qnum}</td>
						<td>${dto.qcate}</td>
							<!-- 제목 출력 -->
							<td><a href="content?num=${dto.qnum}&currentPage=${currentPage}">
								${dto.qtitle}
							</a></td>
							<td>${dto.mid}</td>
							
							<td>${dto.qstate}</td>		
							<td><fmt:formatDate value="${dto.qdate}"
							pattern="yyyy/MM/dd HH:mm"/></td>
					</c:forEach>
			</table>
	</div>

</body>

</html>
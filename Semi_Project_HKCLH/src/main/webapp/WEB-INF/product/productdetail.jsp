<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 

<%@ taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix= "fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html>
<html>
<head> 
<link rel="icon" href="/favicon.ico">
<link rel="icon" href="http://localhost:9002/product/detail?pnum=#" />
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>   
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100;300;400;500display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />

<style type="text/css">

.content{
   position: relative;
   top : 100px;
}

.pridiv{
   float: right;
}
/*tab*/
body{
		font-family: 'Noto Sans KR', sans-serif;
      margin-top: 100px;
      line-height: 1.6
   }
      .container{
         width:1040px;
         margin: 0 auto;
      }

      ul.tabs{
         margin-left: 150px;
         padding: 0px;
         list-style: none;
      }
      ul.tabs li{
         text-align:center;
         min-width: 125px;
         background: none;
         color: #636363;
         display: inline-block;
         padding: 10px 15px;
         cursor: pointer;
         
      }

      ul.tabs li.current{
         background: white;
         border-bottom: solid black;
         color: black;
         font-weight: 600;
      }

      .tab-content{
         display: none;
         background: white;
         padding: 15px;
      }

      .tab-content.current{
         display: inherit;
      }

.tab-3con th{
   width: 240px;
}
.tab-3con th,td{
   vertical-align: top;
}

      
/*옵션테이블*/
/*.optiontable, .optiontable td { border: 1px solid #E4E5E1; } */
.optiontable{
   position: relative;
   bottom : 30px;
}
.optiontable td,tr{
   max-height: 120px;
}
      
/*전체 lay*/
.content{
   position: relative;
   left: 420px;
   width: 1100px;
}
.leftlay{
   position: relative;
   left: 40px;
   top :20px;
}
.rightlay{
   position: relative;
   left: 160px;
   top :20px;
}

/*x버튼*/
span.adel{
      margin-left: 10px;
      color: magenta;
      cursor: pointer;
   }
   
/*셀렉트박스*/
select { 
   position: relative;
   bottom :7px;
   float:right;
   width: 340px; 
   padding: .6em .8em; /* 여백으로 높이 설정 */ 
   font-family: inherit; /* 폰트 상속 */ 
   background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%; /* 네이티브 화살표 대체 */ 
   border: 1px solid #ddd; 
   border-radius: 0px; /* iOS 둥근모서리 제거 */ 
   -webkit-appearance: none; /* 네이티브 외형 감추기 */ 
   -moz-appearance: none; appearance: none; 
   
}

/*수량추가 input box*/
#quantity{
   width: 100px; 
}
input[type="number"] {
  -webkit-appearance: textfield;
  -moz-appearance: textfield;
  appearance: textfield;
}

input[type=number]::-webkit-inner-spin-button,
input[type=number]::-webkit-outer-spin-button {
  -webkit-appearance: none;
}

.number-input {
  border: 1px solid #ddd;
  display: inline-flex;
 
}

.number-input,
.number-input * {
  box-sizing: border-box;
  width: 100px;
}

.number-input button {
  outline:none;
  -webkit-appearance: none;
  background-color: transparent;
  border: none;
  align-items: center;
  justify-content: center;
  width: 3rem;
  height: 3rem;
  cursor: pointer;
  margin: 0;
  position: relative;
  font-size: 10px;
}

.number-input button:after {
  display: inline-block;
  position: absolute;
  font-family: "Font Awesome 5 Free"; 
  font-weight: 900;
  content: '\f077';
  transform: translate(-50%, -50%) rotate(180deg);
}
.number-input button.plus:after {
  transform: translate(-50%, -50%) rotate(0deg);
}

.number-input input[type=number] {
  font-family: sans-serif;
  max-width: 5rem;
  padding: .5rem;
  border: 1px solid #ddd;
  border-width: 0 1px;
  font-size: 1.3rem;
  height: 3rem;
  font-weight: bold;
  text-align: center;
}

.directbtn{
   width:187px;
   height:50px;
   font-weight : 550;
   background-color: white; border: 1.5px solid black; color: black; padding: 10px 0;
   text-align: center; text-decoration: none; display: inline-block;
   font-size: 15px; margin: 4px; cursor: pointer;
}
.cartbtn{
   width:187px;
   height:50px;
   font-weight : 550;
   background-color: black; border: 1.5px solid black; color: white; padding: 10px 0;
   text-align: center; text-decoration: none; display: inline-block;
   font-size: 15px; margin: 4px; cursor: pointer;
}
/*.rebtn, .qnabtn{
   width:140px;
   height:40px;
   font-weight : 550;
   background-color: black; border: 1.5px solid black; border-radius:5%; color: white; 
   text-align: center; text-decoration: none; display: inline-block;
   font-size: 15px; margin: 4px; cursor: pointer;
}
이미지 슬라이드*/


/*GLOBALS*/
*{margin:0; padding:0; list-style:none;}
a{text-decoration:none; color:#666;}
a:hover{color:#1bc1a3;}
body, hmtl{background: #ecf0f1; font-family: 'Anton', sans-serif;}


#wrapper{
  width:480px;
  margin:50px auto;
  height:600px;
  position:relative;
  bottom:80px;
  color:#fff;
  text-shadow:rgba(0,0,0,0.1) 2px 2px 0px;  
}

#slider-wrap{
  width:480px;
  height:600px;
  position:relative;
  overflow:hidden;
}

#slider-wrap ul#slider{
  width:100%;
  height:100%;
  
  position:absolute;
  top:0;
  left:0;   
}

#slider-wrap ul#slider li{
  float:left;
  position:relative;
  width:480px;
  height:600px; 
}

#slider-wrap ul#slider li > div{
  position:absolute;
  top:20px;
  left:35px;  
}

#slider-wrap ul#slider li > div h3{
  font-size:36px;
  text-transform:uppercase; 
}

#slider-wrap ul#slider li > div span{
  font-family: Neucha, Arial, sans serif;
  font-size:21px;
}

#slider-wrap ul#slider li img{
  display:block;
  width:100%;
  height: 100%;
}


/*btns*/
.btns{
  position:absolute;
  width:50px;
  height:60px;
  top:50%;
  margin-top:-25px;
  line-height:57px;
  text-align:center;
  cursor:pointer; 
  background:rgba(0,0,0,0.1);
  z-index:100;
  
  
  -webkit-user-select: none;  
  -moz-user-select: none; 
  -khtml-user-select: none; 
  -ms-user-select: none;
  
  -webkit-transition: all 0.1s ease;
  -moz-transition: all 0.1s ease;
  -o-transition: all 0.1s ease;
  -ms-transition: all 0.1s ease;
  transition: all 0.1s ease;
}

.btns:hover{
  background:rgba(0,0,0,0.3); 
}

#next{right:-50px; border-radius:7px 0px 0px 7px;}
#previous{left:-50px; border-radius:0px 7px 7px 7px;}
#counter{
  top: 30px; 
  right:35px; 
  width:auto;
  position:absolute;
}

#slider-wrap.active #next{right:0px;}
#slider-wrap.active #previous{left:0px;}


/*bar*/
#pagination-wrap{
  min-width:140px;
  margin-top:560px;
  margin-left: auto; 
  margin-right: auto;
  height:15px;
  position:relative;
  text-align:center;
  
}

#pagination-wrap ul {
  width:100%;  
}

#pagination-wrap ul li{
  display: inline-block;
  width:70px;
  height:5px;
  background:#fff;
  opacity:0.5;
  position:relative;
  
}

#pagination-wrap ul li.active{
  width:70px;
  height:5px;
  background-color:black;
  opacity:2;
  box-shadow:rgba(0,0,0,0.1) 1px 1px 0px; 
}

/*Header*/
h1, h2{text-shadow:none; text-align:center;}
h1{ color: #666; text-transform:uppercase;  font-size:36px;}
h2{ color: #7f8c8d; font-family: Neucha, Arial, sans serif; font-size:18px; margin-bottom:30px;} 




/*ANIMATION*/
#slider-wrap ul, #pagination-wrap ul li{
  -webkit-transition: all 0.3s cubic-bezier(1,.01,.32,1);
  -moz-transition: all 0.3s cubic-bezier(1,.01,.32,1);
  -o-transition: all 0.3s cubic-bezier(1,.01,.32,1);
  -ms-transition: all 0.3s cubic-bezier(1,.01,.32,1);
  transition: all 0.3s cubic-bezier(1,.01,.32,1); 
}

/*리뷰, qna 버튼*/
#rebtn, #qnabtn {
        display:block;
        width:200px; 
        height:40px; 
        line-height:40px; 
        border:1.5px black solid;;
        
        background-color:white;  
        text-align:center; 
        cursor: pointer;  

        color:#333; 
        transition:all 0.9s, color 0.3;  
    }
#rebtn:hover{color:#fff; background-color: black;}
#qnabtn:hover{color:#fff; background-color: black;}

/*옵션삭제*/
.del {
        display:block;
        width:23px; 
        height:25px;  
        border:0.2px white solid;;
        
        background-color:white;  
        text-align:center; 
        cursor: pointer;  

        color:#a0a0a0; 
    }
.del:hover{color:#b13e3e; }

/*qna*/
.qwrapper {
            margin: 0;
            padding: 0px;
            text-align: center;
            width: 995px;
            
        }  
  
        #table_detail {
        	font-family: 'Noto Sans KR';
        	font-weight: 500;
        	font-size: 15px;
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
        
        #table_detail tr{
        line-height: 65px;
        }
        
        #table_detail th{
        text-align: center;
        border-bottom: solid #444444;
        font-size: 17px;}
        
        /*.qtitle{
        	background-color: #F2F2F2;
        }*/
        
        .ml{
        	margin-top:6px;
        }
</style>
</head>
<body>
<br>
<div class="content">
<input type="hidden" value="${dto.pnum}" id="pnum"/>
   <input type="hidden" value="${mId}" id="mid"/> <!-- 대한 -->
   <div class="leftlay">
      
      <div id="wrapper" style="float: left;">
        <div id="slider-wrap">
           <ul id="slider">
             <li>               
            <img  src="../save/${dto.pphoto}" style="width: 480px; height: 600px" align="left">
             </li>
             <li>               
            <img  src="../save/${dto.pphoto2}" style="width: 480px; height: 600px" align="left">
             </li>     
            </ul>   
              <!--controls-->
             <div class="btns" id="next"><i class="fa fa-arrow-right"></i></div>
             <div class="btns" id="previous"><i class="fa fa-arrow-left"></i></div>
             <div id="counter"></div>
             
             <div id="pagination-wrap">
               <ul>
               </ul>
             </div>
             <!--controls-->               
         </div>
         </div>
   
   </div> <!-- leftlay -->

   
   <div class="rightlay">
      <table class="optiontable" style="width: 400px; height: 650px" >
         <tr>
            <td style="font-size: 28px; font-weight: 600;">${dto.pname}</td>
         </tr>
      <tr style="text-align: right; font-weight: 600;">
         <td><fmt:formatNumber value="${dto.pprice}" type="number" maxFractionDigits="3"/>원</td>
      </tr>
      
      <!-- ajax로 구현 -->
      <!-- 옵션 선택마다 수량추가 tr이 추가되어야함(이때 옵션에 따른 가격반영된 tr이어야함) -->
      <!-- 삭제도 가능해야함 by span태그 <span class='glyphicon glyphicon-remove adel' idx="+d.idx+"></span>-->
      <!-- 이미 선택된 옵션일시 이미 선택된 옵션이라는 알럿 띄워줘야함 "아래 리스트에서 이미 선택된 옵션을 삭제 후 다시 선택해 주세요."-->
      <!-- 최종적으로 수량추가 tr에 value(수량)에 따라 총 금액 ++(상품가_옵션포함*수량) 되어야함 -->
      <!-- But, goods는 수량추가만 -->
      <tr>
         <td style="height: 100px;"><div style="float: left; font-weight :600" >옵션 &nbsp;</div>
            <select name="pop" id="pop" onchange="changeOp()"
            style="font-size: 15px; color: gray;">
                <option value="">&nbsp;
                - ml을 선택해주세요 -</option>
                <c:forEach var="list" items="${opdto}"> <!-- list < opdto 호출시 list.으로-->          
                   <option value="${list.oprice}">${list.oid}</option> <!-- value /text -->
                   
                   <!-- 2개이상 db컬럼 가져올시 input 으로 하면댐 -->
                   
                </c:forEach>
            </select>
         </td>
      </tr>
      <tr>   
         <td style="height: 200px;">
         <div id="addOption"></div> <!-- option row추가 자리 --> 
         </td>
      </tr>
      
      <tr>
         <td style="border-top: 1px solid #B6B7B4;">
            <div style="float: left; font-weight :600"><br>총 상품금액</div>
                <div style="float: right; font-weight: 600;"><br>
               <span id="totPayment">0</span><span></span>원</div> 
         </td>
      </tr>
      
      <tr>   
         <td style="height: 120px;">
             <button class="directbtn">바로 구매</button>
             <button class="cartbtn">장바구니</button>
         </td>
      </tr>
      </table>
    
      <br><br><br><br><br><br>
      </div><!-- right -->
      
      
      <!-- tab -->
      <div class="container">
      <ul class="tabs">
         <li class="tab-link current" data-tab="tab-1">상세정보</li>
         <li class="tab-link" data-tab="tab-2">사용법 및 주의사항</li>
         <li class="tab-link" data-tab="tab-3">배송 및 반품안내</li>
         <li class="tab-link" data-tab="tab-4">상품후기</li>
         <li class="tab-link" data-tab="tab-5">상품문의</li>
      </ul>
   
      <div id="tab-1" class="tab-content current">
         ${dto.pcontent}
      </div>
      
      <div id="tab-2" class="tab-content">
         
         <img src="../save/use.jpg" style="width: 900px;"><br><br>
         귀 뒤나 손목 안쪽 등 맥박이 느껴지거나 체온이 높은 부위에 가볍게 1~2회 뿌려줍니다.<br>
         기능성화장품 심사필여부 : 해당사항 없음<br>            
         사용시 주의사항 : 1) 화장품 사용 시 또는 사용 후 직사광선에 의하여 사용부위가 붉은 반점, 부어오름 또는 가려움증 등의 이상 증상이나 부작용이 있는 경우 전문의 등과 상담 할 것 <br>
         2) 상처가 있는 부위 등에는 사용을 자제할 것 <br>
         3) 안구 및 점막에 묻지 않도록 주의하고 묻었을 경우 즉시 흐르는 물에 씻어낸 후 의사와 상의할 것 <br><br>
         [보관 및 취급시의 주의사항] <br>가) 어린이의 손에 닿지 않는 곳에 보관할 것 <br>나) 직사광선을 피해서 보관할 것<br>
         품질보증기준 : 공정거래위원회 고시 소비자분쟁해결기준에 의해 보상해 드립니다.
      </div>
      
      <div id="tab-3" class="tab-content">
         <br><br>
         <img src="../save/del.jpg" style="width: 1000px; ">
         <br><br><br>
         <table style="border: none; width: 1000px; height: 210px; font-size: 20px;"  class="tab-3con" >
            <tr>
               <th>환불보증기준</th>
               <td>출고일로부터 7일이내에 개봉하지 않은 새 제품 (개봉흔적X)일 경우에 가능합니다.</td>
            </tr>
            <tr>
               <th>품질보증기준</th>
               <td>상품에 이상이 있을경우 공정거래위원회 고시 소비자분쟁해결 기준에 의해 보상해드립니다.</td>
            </tr>
            <tr>
               <th>소비자상담관련 전화번호</th>
               <td>소비자 상담실 : 1544-5012</td>
            </tr>
            <tr>
               <th>예상배송기간</th>
               <td>주문 후 1~2일(예약상품과 입고지연상품 제외<br>택배사 상황에 따라 지연될 수도 있으니 양해부탁드립니다.</td>
            </tr>
         </table>
      </div>
      
      <div id="tab-4" class="tab-content">
         <button type="button" class="rebtn" id="rebtn" onclick="location.href='../review/form'">리뷰 작성하기</button>
         <br><br><br>
<label style="font-size: 40px;" class="review_label">Review</label>
<div id="review_cate">
<br>&nbsp; &nbsp; <!-- 리뷰 정렬 카테고리 -->

</div>
	<c:if test="$('#asd').val()!='ok'">
		<h1>없음</h1>
	</c:if>
	
	
	<c:forEach var="redto" items="${redto}" varStatus="i">
	<div id="review">
		<table class="table table-borderless" id="review_table">
			<thead>
				<tr style="height: 30px;">
					<td colspan="4"> <!-- 별점 value 따라서 별 show -->
					<c:if test="${redto.rrate == '1'}">
						<label id="star">★ 별로에요</label>
					</c:if>
					
					<c:if test="${redto.rrate == '2'}">
						<label id="star">★★ 그냥 그래요</label>
					</c:if>
					
					<c:if test="${redto.rrate == '3'}">
						<label id="star">★★★ 보통이에요</label>
					</c:if>
					
					<c:if test="${redto.rrate == '4'}">
						<label id="star">★★★★ 맘에 들어요</label>
					</c:if>
					
					<c:if test="${redto.rrate == '5'}">
						<label id="star">★★★★★ 아주 좋아요</label>
					</c:if>
					
					</td>
					<td colspan="2" rowspan="3"><b>${redto.mid}</b>&nbsp;님이 작성한 리뷰입니다.<br>
					<br><b>작성일:</b> <fmt:formatDate value="${redto.rdate}" pattern="yyyy/MM/dd HH:mm"/></td>
				</tr>
				<tr>
					<td colspan="2">
						<img src="${root}/save/${dto.pphoto}" style="width:100px;">&nbsp;&nbsp;${dto.pname}
						</td>
					
				</tr>
				<tr>
				<c:choose>
					<c:when test = "${redto.rphoto!=''}">
					<td colspan="4"><img src="../save/${redto.rphoto}" width="80" height="80" border="1">
					
					리뷰내용 : ${redto.rcontent}</td></c:when>
					
					<c:otherwise>
					<td>리뷰내용 : ${redto.rcontent}</td></c:otherwise>
				</c:choose>
				</tr>
				
			</thead>
			<input type="hidden" id="asd" value="ok">
			
		</table>
	</div>
	</c:forEach>
	
      </div>
      
      <div id="tab-5" class="tab-content">
      	 <br><br><br>
         <div class="qwrapper">
           <table id="table_detail"  style="align:center; cellpadding:10;">
            <tr class="qtitle">
                <th>제목</th>
                <th>작성일</th>
            </tr>
            
            <tr onclick="showHideRow('hidden_row1');">
                <td>계절별 향수를 알고싶어요</td>
                <td style="text-align: center;">2022-05-24 12:15</td>
            </tr>
           
            <tr id="hidden_row1" class="hidden_row">
                <td colspan=4 >
                    <br>&nbsp;&nbsp;
                    	각 제품 상세페이지에 해당 제품을 즐기기 좋은 계절이 표기되어 있습니다.<br>&nbsp;&nbsp;
						상세 페이지를 참고해 주셔도 좋고 아래의 내용을 참고로 고르셔도 좋습니다.<br><br>&nbsp;&nbsp;
 						봄 : 백색향, 물기 머금은 장미, 은은한 비누, 로맨틱로즈, 너티크림 초코라떼, 여름의 오렌지길 <br>&nbsp;&nbsp;
  						#부드러운 #비누향 #사랑스러운 #깔끔한 #장미 # 가벼운 #포근한 #꽃잎 
    			        #깔끔한 #청순한 #달콤한 #달달한 #커피 #초콜릿 #초여름 #투명한 #푸르른<br><br>&nbsp;&nbsp;
						여름 : 연둣빛 풀꽃, 물속으로 다이빙, 봄비에 꽃망울, 풀잎 위 아침이슬, 오렌지빛 꽃물, 놀이동산 데이트, 회색빛 시간, 초록빛 기억 <br>&nbsp;&nbsp;
					    #청량한 #투명한 #풀숲  #시원한  #샤프한  #물  #내추럴  #프리지아  #산뜻한  
					    #풀잎  #오렌지  #새콤한 #순수한 #풀꽃 #데일리 #소나무  #시원한  #차분한 #들꽃 <br><br>&nbsp;&nbsp;
						가을 : 달빛 가득 돌담길, 밤바다 드라이브, 우아한 코트  <br>&nbsp;&nbsp;
						#나무껍질  #차분한  #지적인  #열정적인  #시원한  #물  #우아한  #자스민  #달콤한<br><br>    &nbsp;&nbsp; 
						겨울:  투명한 바람, 바삭한 가을바람, 상큼달달 과즙, 어른의 솜사탕, 포근한 겨울밤, 평온한 인센스, 서랍 깊은 곳에 잠들어 있는 손편지의 추억<br>&nbsp;&nbsp;
						#차분한  #깔끔한  #겨울숲  #지적인  #나무  #섬세한  #달콤한  #귀여운  #과일  
						#달달한  #바닐라  #어른이  #부드러운  #바닐라  #포근한  #다정한  #빈티지우드<br><br>&nbsp;&nbsp;
				 </td>
            </tr>
  
            <tr onclick="showHideRow('hidden_row2');">
                <td>향 테스트를 해보고 싶어요</td>
                <td style="text-align: center;">2022-05-24 14:20</td>
               
            </tr>
            <tr id="hidden_row2" class="hidden_row">
                <td colspan=4 >
                  &nbsp;&nbsp;직접 시향하지 않아도 취향 맞춤 향을 추천해주는 퍼퓸텔러를 통해 소용량인 데일리키트 구매를 추천해 드립니다.
                </td>
            </tr>
  
            <tr onclick="showHideRow('hidden_row3');">
                <td>직접 가서 시향할 수 있는 오프라인 매장은 없나요?</td>
                <td style="text-align: center;">2022-05-24 14:22</td>
               
            </tr>
            <tr id="hidden_row3" class="hidden_row">
                <td colspan=4>
                   &nbsp;&nbsp;오프라인 매장은 운영하고 있지 않습니다.<br>
				   &nbsp;&nbsp;My Set를 통해 나에게 맞는 향을 추천받고 소용량의 데일리키트로 먼저 체험해보시길 권장드립니다.<br>
                </td>
            </tr>
  
            <tr onclick="showHideRow('hidden_row4');">
                <td>문의사항이 있을 경우에는 어느 채널을 통해 문의해야 하나요?</td>
                <td style="text-align: center;">2022-05-25 11:25</td>
            
            </tr>
            <tr id="hidden_row4" class="hidden_row">
                <td colspan=4>
                   각종 문의를 하실 수 있는 fragbit의 채널은 다음과 같습니다.<br>
				<br>- fragbit web site 1:1 문의 게시판<br>
				- fragbit 고객센터 메일: help@fragbit.com <br>
				- fragbit 1:1 대화 : 홈페이지 우측 하단 1:1  클릭 <br>
				- 고객센터 전화 : 070-4948-8028 <br>
                </td>
            </tr>
            <tr onclick="showHideRow('hidden_row5');">
                <td>FragBit의 이전 향수를 구입하고 싶어요</td>
                <td style="text-align: center;">2022-05-25 13:11</td>
            </tr>
            <tr id="hidden_row5" class="hidden_row">
                <td colspan=4>
                    fragbit의 향수가 2019년 8월 리뉴얼되어 이전 상품은 더 이상 공식 판매하고 있지 않습니다. <br>
					일부 판매되던 향수의 경우도 유통기한 마감으로 인해 더 이상 판매되지 않고 있으니 양해 부탁드립니다.<br>
					감사합니다.
                </td>
            </tr>
        </table>
	   </div>
	   <br><br><br>
	   <button type="button" class="qnabtn" id="qnabtn" onclick="location.href='../qna/form'" 
	   style="float: right; margin-right: 105px;">1:1 문의하기</button>
      </div><!-- tap5 -->
 
   </div><!-- container -->
   
   <br><br><br>
   
   <!-- tab -->
   <script type="text/javascript">
      $(document).ready(function(){
         $('ul.tabs li').click(function(){
            var tab_id = $(this).attr('data-tab');

            $('ul.tabs li').removeClass('current');
            $('.tab-content').removeClass('current');

            $(this).addClass('current');
            $("#"+tab_id).addClass('current');
         });   
      });
   </script>
   
     
      <button type="button" class="btn btn-default go-top" id="go-top"
      style="position: fixed; right: 70px; bottom:120px;">
      <span class="glyphicon glyphicon-chevron-up"></span>
     </button>
     <script type="text/javascript">
     
         $(document).ready(function($) {
        	 
        	 <!--cartinsert-->
        	 $(".cartbtn").click(function(){
        		/*  var data=$(".op").length+",";
        		 $(".op").each(function(){
        			 data+=$(this).text()+",";
        		 });
        		 
        		 $(".quantity").each(function(){
        			data+=$(this).val()+","; 
        		 });
        		 alert(data); */
        		 let param_string='';
        		 $(".addop").each(function(){
        			 param_string+=$(this).find(".op").find("div").text()+",";
        			 param_string+=$(this).find('.op2').find(".quantity").val()+"|"; 
        		 });
        		 //alert(param_string);
        		 if(param_string==""){
   					window.name="parentForm";
   					window.open("<%=request.getContextPath()%>/nooption.jsp", 
   							"상품 확인","width=380,height=200, left=650, top=200, resizable=no,scrollbar=no");
  					
   					return;
   				}
        		 $.ajax({
	        			 type:"post",
	        			 datatype:"text",
	        			 url:"../product/cart",
	        			data:{
       				 	 "pnum":$("#pnum").val(),
	  		        	 "mid":$("#mid").val(),
	  		        	 "data":param_string
	  		         	},
	        			 success:function(data){
	        				window.name="parentForm";
	        				window.open("<%=request.getContextPath()%>/yescart.jsp", 
	        				"상품 확인","width=380,height=200, left=650, top=200, resizable=no,scrollbar=no");
	        			 },
	        			 
	        		 })
 	        		 .fail(function(){ alert("fail"); })
        		 
        	 });
        	 
        	 <!--orderinsert-->
        	 $(".directbtn").click(function(){
         		
         		 let param_string='';
         		 $(".addop").each(function(){
         			 param_string+=$(this).find(".op").find("div").text()+","; 
         			 param_string+=$(this).find('.op2').find(".quantity").val()+"|"; 
         		 });
         		 //alert(param_string);
         		 if(param_string==""){
         			
    					window.name="parentForm";
    					window.open("<%=request.getContextPath()%>/nooption.jsp", 
    							"상품 확인","width=380,height=200, left=650, top=200, resizable=no,scrollbar=no");
   					
    					return;
    				}
         		
         		 $.ajax({
 	        			 type:"post",
 	        			 datatype:"text",
 	        			 url:"../product/order",
 	        			data:{
        				 	 "pnum":$("#pnum").val(),
 	  		        	 "mid":$("#mid").val(),
 	  		        	 "data":param_string
 	  		         	},
 	        			 success:function(data){
 	        				window.name="parentForm";
 	        				window.open("<%=request.getContextPath()%>/yesorder.jsp", 
 	        				"상품 확인","width=380,height=200, left=650, top=200, resizable=no,scrollbar=no");
 	        			 },
 	        			 
 	        		 })
  	        		 .fail(function(){ alert("fail"); })
         		 
         	 });
         	
        		 
        		 
        	
        	
        	      
       	     <!-- 위로가기 플로팅 -->
             /* 클릭시 스크롤 이동 */     
             $(".scroll_move").click(function(event){
                     event.preventDefault();
                     $('html,body').animate({scrollTop:$(this.hash).offset().top}, 600);
             });
          
            /* scroll top button */
            // 1. 특정 위치에서 부터 버튼 나타고, 사라지게(fade)
             $(window).scroll(function () {
               if ($(this).scrollTop() > 600) {
                  $('.go-top').fadeIn(400);
               } else {
                  $('.go-top').fadeOut(400);
               }
            });
   
            // 2. 버튼 클릭하면 원하는 위치로 이동
            $('.go-top').click(function (event) {
               event.preventDefault();
               $('html, body').animate({ scrollTop: 0 }, 300);
               });
         });
        
     <!--이미지 슬라이드-->
         //current position
         var pos = 0;
         //number of slides
         var totalSlides = $('#slider-wrap ul li').length;
         //get the slide width
         var sliderWidth = $('#slider-wrap').width();
         $(document).ready(function(){
           //set width to be 'x' times the number of slides
           $('#slider-wrap ul#slider').width(sliderWidth*totalSlides);
           
             //next slide  
           $('#next').click(function(){
             slideRight();
           });
           
           //previous slide
           $('#previous').click(function(){
             slideLeft();
           });
         
           //automatic slider
           var autoSlider = setInterval(slideRight, 3000);
           
           //for each slide 
           $.each($('#slider-wrap ul li'), function() { 
   
              //create a pagination
              var li = document.createElement('li');
              $('#pagination-wrap ul').append(li);    
           });
           
           //counter
           countSlides();
           
           //pagination
           pagination();
           
           //hide/show controls/btns when hover
           //pause automatic slide when hover
           $('#slider-wrap').hover(
             function(){ $(this).addClass('active'); clearInterval(autoSlider); }, 
             function(){ $(this).removeClass('active'); autoSlider = setInterval(slideRight, 3000); }
           );
         });//DOCUMENT READY
           
         /*SLIDE LEFT*/
         function slideLeft(){
           pos--;
           if(pos==-1){ pos = totalSlides-1; }
           $('#slider-wrap ul#slider').css('left', -(sliderWidth*pos));  
           
           //*> optional
           countSlides();
           pagination();
         }
   
         /*SLIDE RIGHT*/
         function slideRight(){
           pos++;
           if(pos==totalSlides){ pos = 0; }
           $('#slider-wrap ul#slider').css('left', -(sliderWidth*pos)); 
           
           //*> optional 
           countSlides();
           pagination();
         }
         
         function countSlides(){
           $('#counter').html();
         }
         function pagination(){
           $('#pagination-wrap ul li').removeClass('active');
           $('#pagination-wrap ul li:eq('+pos+')').addClass('active');
         }
             
     </script>
     
     
      <div class="buttons" style="margin-left: 0px;">   
      <br>   
         <!-- 수정삭제(관리자만) -->
            <c:if test="${mId=='fragbit'}">  
            
               <button type="button" class="btn btn-warning" id="upbtn"   
               onclick="location.href='updateform?num=${dto.pnum}'"> 
               수정</button> 
               
               <button type="button" class="btn btn-danger" id="delbtn" pnum="${dto.pnum }"> 
               삭제</button> 
               
               <!-- 삭제시 컨펌 -->
               <script type="text/javascript">
               $(document).ready(function() {
                  $("#delbtn").click(function(){
                     var pnum=$(this).attr("pnum");
                     var choice = confirm("삭제 하시겠습니까?");
                     var del = "delete?pnum=${dto.pnum}"; //?pnum은 컨트롤러 dto 인자와 같아야함
                     if(choice){
                        location.assign(del);
                        alert("삭제되었습니다!^^");
                     };
                  });
                  
               });
               </script>
             </c:if> 
      </div> 
      <br><br>
   </div> <!-- content전체!!!! -->
   
  
   
   
   <br><br><br><br><br><br><br><br>
</body>



<script type="text/javascript">
<%--tap5 qna--%>
function showHideRow(row) {
    $("#" + row).toggle();
}


      
<!--수량추가-->
var array = [];   

function changeOp() {
                       
   //opdto oname   
   var Select = document.getElementById("pop");
   // select element에서 선택된 option의 value가 저장된다. >>oprice
   var selectValue = Select.options[Select.selectedIndex].value;
   // select element에서 선택된 option의 text가 저장된다. >>oname
   var selectText = Select.options[Select.selectedIndex].text;
   // select element에서 선택된 option의 text가 저장된다. >>oid
   //var selectTid = Select.inputs[Select.selectedIndex].value;
   //alert(selectTid);
   
   //acnt==0 선택한옵션이 이미 배열에있다.
   var aCnt = 0;
   
   if(selectValue==""){ //옵션선택은 value로 나눠도됌(not Text) text이기때문에
      return;
   }
                      
   if(array.length == 0 ){
   
      aCnt++;
      
   } else {
      
      for(var i = 0; i < array.length ; i++) {
         
         if(array[i] == selectText) {
            aCnt = 0;
            break;
         } else {
            aCnt++;
         }                         
      }          
      
   }
   
   if(aCnt == 0) {
      alert("이미 선택된 옵션을 삭제 후 다시 선택해 주세요.");
      Select.selectedIndex = 0;
      return;
   } else {
                            
      array.push(selectText);
      var s="";
      //테이블전체가 로우
         s+="<table id='tb_" + selectText + "' class='t' style='width:410px;'>";
         //opdto_List i=바깥배열 d안쪽 뱌열
            s+="<tr style='height:55px;' class='addop'>";
            s+="<td style='width:16px; height:30px; float:right; margin-top : 6px; ' class='op'>";
            s+= "<div style='float:left;'>" + selectText + "</div></td><td>&nbsp;<span class='ml' style='width:170px; float: left; margin-top:6px;' >ml</span></td>";
            s+="<td class='op2'><div class='number-input' style='float:left;'>";
            s+="<button id='minus' name='min_" + selectText + "' class='minus' ></button>";
            s+="<input class='quantity' id='qua_" + selectText + "' min='0' type='number' value='1'/>";            
            s+="<input type='hidden' id='hid_pri_" + selectText + "' value='" + selectValue + "' />";
            s+="<button id='plus' name='pl_" + selectText + "' class='plus'></button></div>&nbsp;&nbsp;&nbsp;&nbsp;</td>";
            s+="<td><div class='pridiv' style='float: left; margin-top : 6px;'><span  id='pri_" + selectText + "' class='price'>"+ selectValue + "</span><span>원</span></div>&nbsp;&nbsp;&nbsp;&nbsp;";
            s+="<input style='float: left;' type='hidden' id='hid_pri_" + selectText + "' value='" + selectValue + "' /></td>";
               s+="<td><button id='del' name='del_" + selectText + "' class='del' style='margin-top : 4px;'>&nbsp; x &nbsp;</button>";   
            s+="</td></tr>";
         s+="</table>";
         const a = document.querySelector('#addOption'); 
         
         a.innerHTML += s;
         
         totPayCal();   
   }
   
 //가격... 근본적.... span에 value가 있냐, #id, 선언된걸찾았냐, 변수를 왜그렇게 썻냐 
 //아마 id는 중복되면 뒤에 +1인줄알았지만, +1안되고 위애것만 됨 > 각각 id를 줘야함
 $('.plus').on('click', function(e) {                  
     
     //수량++
     var tarName = e.target.name.replace("pl_",""); //== selectText(40ml)
     //var tarPname = e.target.name.replace("pri",""); //text말고 value(40ml)를 가져옴
        var qua = Number($('#qua_' + tarName).val())+1;  //selectText(40ml)의 값qua에 +1 
        //$('#qua_' + tarName).val(qua);        
        
        //document.getElementById("qua_" + tarName).value = qua;
        
        $('input[id=qua_' + tarName + ']').attr('value',qua);
        $('#qua_' + tarName).val(qua);
        
        //가격
        //var price = $("#pri_" + selectText).attr();
          //const price = document.getElementById("#pri_" + selectText);
         
        var price = Number($("#hid_pri_" + tarName).val()) * qua; //not)#pri_selectText
        $('#pri_' + tarName).text(price);
 
        totPayCal();
 
      //console.log($("#pri_" + selectText).val());
      
     });

 
    $('.minus').on('click', function(e) {
         var tarName = e.target.name.replace("min_","");      
         
         if($('#qua_' + tarName).val() > 1) {
            //수량 증가
            var qua = Number($('#qua_' + tarName).val())-1;
            $('input[id=qua_' + tarName + ']').attr('value',qua);
            $('#qua_' + tarName).val(qua);   
            //수량에 따른 가격증가
            var price = Number($("#hid_pri_" + tarName).val()) * qua; //not)#pri_selectText
            $('#pri_' + tarName).text(price);
    
            totPayCal();
            
         } else if($('#qua_' + tarName).val() == 1) {
            alert("최소주문수량은 1개 입니다.");
            return;
         }
     });
 
 $('.del').on('click', function(e) {                     
     var tarName = e.target.name.replace("del_","");   
     $("#tb_"+tarName).remove();
     for(var i=0; i<array.length; i++){
        if(array[i]==tarName){
           array.splice(i,1);
           //i--; 한번민 빼면되니까 배열을 또 안쓰니까
           break;
        }
     }
     
     totPayCal();
     
     });

}

function totPayCal() {
   
   var totPrice = 0;
  
   for(var i = 0; i < array.length; i++) {  
      totPrice = totPrice + Number($('#pri_' + array[i]).text());     
   }
   
   $('#totPayment').text(totPrice);   
}



</script>
</html>
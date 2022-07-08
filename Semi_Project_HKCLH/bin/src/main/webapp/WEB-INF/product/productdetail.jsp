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
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100;300;400;500display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />

<style type="text/css">
*{
	font-family: 'Noto Sans KR', sans-serif;
}

/*tab*/
body{
		margin-top: 100px;
		
		
		line-height: 1.6
	}
		.container{
			width:1040px;
			margin: 0 auto;
		}

		ul.tabs{
			margin: 0px;
			padding: 0px;
			list-style: none;
		}
		ul.tabs li{
			background: none;
			color: #222;
			display: inline-block;
			padding: 10px 15px;
			cursor: pointer;
		}

		ul.tabs li.current{
			background: #ededed;
			color: #222;
		}

		.tab-content{
			display: none;
			background: #ededed;
			padding: 15px;
		}

		.tab-content.current{
			display: inherit;
		}
		
.optiontable, .optiontable td { border: 1px solid gray; } 
.optiontable{
	position: relative;
	bottom : 50px;
}
		
/*전체 lay*/
.content{
	position: relative;
	left: 400px;
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
	width: 300px; 
	padding: .4em .8em; /* 여백으로 높이 설정 */ 
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
</style>
</head>
<body>
<div class="content">
	<div class="leftlay">
	<img  src="../save/${dto.pphoto}" style="width: 480px; height: 600px" align="left">
	</div>
	
	<div class="rightlay">
      <table class="optiontable" style="width: 400px; height: 700px" >
      	<tr>
      		<td style="font-size: 25px; font-weight: 600;">${dto.pname}</td>
      	</tr>
		<tr style="text-align: right;">
			<td><fmt:formatNumber value="${dto.pprice}" type="number" maxFractionDigits="3"/>원</td>
		</tr>
		
		<!-- ajax로 구현 -->
		<!-- 옵션 선택마다 수량추가 tr이 추가되어야함(이때 옵션에 따른 가격반영된 tr이어야함) -->
		<!-- 삭제도 가능해야함 by span태그 <span class='glyphicon glyphicon-remove adel' idx="+d.idx+"></span>-->
		<!-- 이미 선택된 옵션일시 이미 선택된 옵션이라는 알럿 띄워줘야함 "아래 리스트에서 이미 선택된 옵션을 삭제 후 다시 선택해 주세요."-->
		<!-- 최종적으로 수량추가 tr에 value(수량)에 따라 총 금액 ++(상품가_옵션포함*수량) 되어야함 -->
		<!-- But, goods는 수량추가만 -->
		<tr>
			<td>옵션 &nbsp;
				<select name="pop" id="pop">
				    <option value="" selected="selected" disabled="disabled"
				    style="color: gray">옵션선택</option>
				    <option value="no">선택안함</option>
				    <option value="40">40ml</option>
				    <option value="80">80ml</option>
				</select>
			</td>
		</tr>
		<tr>	
			<td>
				<span style="width: 80px;">수량 선택 &nbsp;</span>
				<div class="number-input">
				  <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()" class="minus"></button>
				  <input class="quantity" min="0" name="quantity" value="1" type="number" id="quantity">
				  <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"></button>
				</div>
			</td>
		</tr>
		
		<tr>
			<td>총 상품금액
			<fmt:formatNumber value="${dto.pprice}" type="number" maxFractionDigits="3"/>원</td>
		</tr>
		<tr>	
			<td>
				 <button class="directbtn">바로 구매</button>
				 <button class="cartbtn">장바구니</button>
			</td>
		</tr>
      </table>
    
      <br><br><br><br><br><br><br>
      </div><!-- right -->
      <!-- tab -->
      <div class="container">

		<ul class="tabs">
			<li class="tab-link current" data-tab="tab-1">상품 상세정보</li>
			<li class="tab-link" data-tab="tab-2">사용법 및 주의사항</li>
			<li class="tab-link" data-tab="tab-3">배송 및 반품안내</li>
			<li class="tab-link" data-tab="tab-4">상품후기</li>
			<li class="tab-link" data-tab="tab-4">상품문의</li>
		</ul>
	
		<div id="tab-1" class="tab-content current">
			${dto.pcontent}
		</div>
		<div id="tab-2" class="tab-content">
			사용법 및 주의사항
		</div>
		<div id="tab-3" class="tab-content">
			배송 및 반품안내
		</div>
		<div id="tab-4" class="tab-content">
			상품후기
		</div>
		<div id="tab-5" class="tab-content">
			상품문의
		</div>
		
	</div><!-- container -->
	
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
	
	
      
      
      <div class="buttons" style="margin-left: 0px;">   
      <br>   
         <!-- 목록 -->   
         <button type="button" class="btn btn-info" id="listbtn"
         onclick="location.href='list'">
         목록</button>
          
         <!-- 수정삭제(관리자만) -->
<%--          <c:if test="${sessionScope.loginok!=null}"> 
            <c:if test="${dto.id==sessionScope.loginid}">  --%>
            
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
            				alert("삭제되었습니다!.");
            			};
            		});
            		
            	});
               </script>
<%--             </c:if> --%>
<%--          </c:if> --%>
      </div> 
      <br><br>
   </div> <!-- content전체!!!! -->
   
   <!-- 카트 담기 버튼 -->
<!--    <form action="/cart/insert"> -->
<!--    	<input type="submit"/> -->
<!--    </form> -->
   <input type="hidden" value="${dto.pnum}" id="pnum"/>
   <button type="button" class="btn btn-default" id="addcart">장바구니 추가</button>
    
</body>



<script type="text/javascript">
<!--수량추가-->
$('.btn-plus, .btn-minus').on('click', function(e) {
	  const isNegative = $(e.target).closest('.btn-minus').is('.btn-minus');
	  const input = $(e.target).closest('.input-group').find('input');
	  if (input.is('input')) {
	    input[0][isNegative ? 'stepDown' : 'stepUp']()
	  };
	});

<!-- 카트 담기 스크립트 -->
$(document).ready(function() {
	$("#addcart").click(function(){
		
		var pnum = ${dto.pnum};
		
		$.ajax({
         type:"post",
         dataType:"json",
         url:"/cart/insert",
         data:{
        	 "mid":$("#mid").val()
        	 "pnum":$("#pnum").val()
        	 "cquantity":$("#cquantity").val()
         },
         success:function(data){
        	alert(data.message);
         }   
        });
	}
	});
</script>
</html>
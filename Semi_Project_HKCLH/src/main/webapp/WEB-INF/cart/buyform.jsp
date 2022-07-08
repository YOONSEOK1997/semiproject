<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.2/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100;300;400;500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/buy.css">
</head>
<script type="text/javascript">
$(function(){
	
	$("#sameaddr1").click(function(){
	
		$("input.ordername").val("");
		$("input.orderpost").val("");
		$("input.orderaddr1").val("");
		$("input.orderaddr2").val("");
		$("input.orderphone").val("");
		$("input.orderemail").val("");
		
	});

});
</script>

<body>

<div class="div-buy-1">

<br><br><br><br><br>
<div class="buy-title0">주문서</div>
<div class="title2">주문하실 상품명 및 수량을 정확하게 확인해 주세요.</div>
<input type="hidden" id="mid" value="${orderList[0].mid}">

<div class="one">
<div class="buy-title">배송지</div>

<div>
	<input type="radio" id="sameaddr0" name="sameaddr" autocomplete="off" checked>
	<label for="sameaddr0">회원 정보와 동일</label>&nbsp;&nbsp;&nbsp;
	<input type="radio" id="sameaddr1" name="sameaddr" autocomplete="off">
	<label for="sameaddr1">새로운 배송지</label>
</div>


<div class="bae">

<table>
	
<c:forEach var="orderList" items="${orderList}" begin="0" end="">
	<tr>
		<th style="width: 80px; line-height:500%;">받는사람*</th>
		<td style="width: 650px;">
			<input type="text" class="ordername" name="mName" placeholder="이름을 입력해 주세요" required="required" value="${orderList.mname}"
			 autofocus="autofocus" style="width: 580px;" >
		</td>
	</tr>
	
	<tr>
		<th style="width: 80px; line-height:500%;" >주소*</th>
		<td>
			<input id="member_post" class="orderpost" name="mPost" type="text" placeholder="우편 번호" readonly value="${orderList.mpost}">
			<button type="button" class="btn btn-sm" onclick="findAddr()">주소검색</button><br>
			<input id="member_addr" class="orderaddr1" name="addr1" type="text" placeholder="주소" readonly  style="width: 580px;" value="${orderList.maddress1}"><br>
			<input type="text" class="orderaddr2" name="addr2" placeholder="상세 주소" style="width: 580px;" value="${orderList.maddress2}">
		</td>
	</tr>
	<tr>
		<th style="width: 80px; line-height:500%;">휴대전화*</th>
		<td>
			<input type="text"  class="orderphone" name="mPhone" placeholder="- 없이 번호만 입력해 주세요" required="required" maxlength="11" value="${orderList.mphone}">
		</td>
	</tr>
	<tr>
		<th style="width: 80px; line-height:500%;">E-Mail*</th>
			<td>
				<input type="text"  class="orderemail" name="mEmail" placeholder="이메일을 입력해 주세요" required="required" value="${orderList.memail}">
			</td>
		</tr>
		</c:forEach>
</table>

<div class="shippingmsg" style="line-height:300%;">
	 <select id="omessage_select" name="omessage_select" style="width: 780px; font-size:15px;">
		<option value="oMessage-0" selected="selected">-- 메시지 선택 (선택사항) --</option>
		<option value="oMessage-1">배송 전에 미리 연락바랍니다.</option>
		<option value="oMessage-2">부재 시 경비실에 맡겨주세요.</option>
		<option value="oMessage-3">부재 시 문 앞에 놓아주세요.</option>
		<option value="oMessage-4">빠른 배송 부탁드립니다.</option>
		<option value="oMessage-5">택배함에 보관해 주세요.</option>
		<option value="oMessage-input">직접 입력</option>
	</select> 
</div>
<br>

</div><!-- div bae 닫기 -->

</div><!-- div one닫기 -->

</div><!-- div-buy-1 -->
<br><br><br><br>


<!-- ------------------ 주문 상품 --------------------------- -->


<div class="div-buy-2">

<div class="div-two">
<div class="buy-title">주문상품</div>

<div class="bae">

	<c:forEach var="oList" items="${orderList}" varStatus="i">
	
<table class="buy-sangpum0">
<tbody>
<tr>
 <td class="cart_info_td">
				<input type="hidden" class="individual_totalPrice_input" value="${oList.oquantity*oList.oprice}">
				<input type="hidden" class="individual_cquantity_input param_quantity" value="${oList.oquantity}">
		
				<!-- pay table로 보내기 -->
				<input type="hidden" class="param_pnum1" value="${oList.pnum}">
				<input type="hidden" class="param_oid1" value="${oList.oid}">
				<input type="hidden" class="param_quantity1" value="${oList.oquantity}">
			</td>
</tr>
    <tr>
        <td class="buy-sangpum1"><img src="${root}/save/${oList.pphoto}" style="width: 170px; height: 170px" align="left"></td>
        
        <td>
            <table class="but-sangpum-text">
                <tr>
                    <td colspan="2" style="color:black; font-size:25px; line-height:50px; ">${oList.pname}</td>
                </tr>
                <tr style="color:#919090; font-size:20px;">
                    <td>옵션 : </td>
                    <td  style="width:300px;">${oList.oid} ml</td>
                </tr>
                <tr style="color:#919090; font-size:20px; ">
                    <td>수량 : </td>
                    <td>${oList.oquantity} 개</td>
                </tr>
                <tr style="color:#919090; font-size:20px; ">
                    <td>금액 : </td>
                    <td>${oList.oquantity*oList.oprice} 원</td>
                </tr>
                <tr style="color:#919090; font-size:20px; ">
                    <td>[조건]&nbsp;</td>
                    <td> / 기본배송 </td>
                </tr>
            </table>
        </td>
    </tr>
</tbody>
</table>
	</c:forEach>


</div><!-- one1-->
</div><!-- div-two -->
</div><!-- div-buy-2 -->


<br><br><br><br><br>


<!-- ------------------ 결제 정보 --------------------------- -->


<div class="div-buy-2">

<div class="div-two">
<div class="buy-title">결제 정보</div>


<div class="bae">

<table class="tg">
<tbody>
  <tr>
    <td class="tg-0lax">주문상품</td>
    <td class="tg-lqy6"><span class="totalPrice_span"></span>원</td>
  </tr>
  <tr>
    <td class="tg-0lax">할인/부가결제</td>
    <td class="tg-lqy6">- 0 원</td>
  </tr>
  <tr>
    <td class="tg-0lax">배송비</td>
    <td class="tg-lqy6"><span class="delivery_price"></span>원</td>
  </tr>
    <tr>
    <th class="tg-0lax">결제금액</th>
    <th class="tg-lqy6"><span class="finalTotalPrice_span"></span>원</th>
  </tr>
</tbody>
</table>


</div><!-- one1-->
</div><!-- div-two -->
</div><!-- div-buy-2 -->



<br><br><br><br>


<!-- ------------------ 결제 수단 --------------------------- -->


<div class="div-buy-2">

<div class="div-two">
<div class="buy-title">결제 수단</div>

<div class="pay-body">
<div class="buy-subtitle">결제 수단 선택</div>
<div class="buy-subtitle2">
	<input type="radio" id="pay-info1" name="pay-info" autocomplete="off" checked>
	<label class="abc" for="pay-info1">카카오페이</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="radio" id="pay-info2" name="pay-info" autocomplete="off">
	<label class="abc" for="pay-info2">신용카드</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="radio" id="pay-info3" name="pay-info" autocomplete="off">
	<label class="abc" for="pay-info3">휴대폰</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="radio" id="pay-info4" name="pay-info" autocomplete="off">
	<label class="abc" for="pay-info4">에스크로(가상계좌)</label>
</div>
<div class="buy-subtitle3">
	- 카카오톡 앱을 설치한 후, 최초 1회 카드정보를 등록하셔야 사용 가능합니다.<br>
	- 인터넷 익스플로러는 8 이상에서만 결제 가능합니다.<br>
	- 카카오머니로 결제 시, 현금영수증 발급은 ㈜카카오페이에서 발급가능합니다.
</div>
<input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
<span class="buy-subtitle3">결제수단과 입력정보를 다음에도 사용</span><br>
<div>
	
</div>
</div><!-- pay-body-->
</div><!-- div-two -->
</div><!-- div-buy-2 -->

<br><br><br><br>



<div class="paybtn" id="paybtn" ><span class="finalTotalPrice_span"></span>원 결제하기</div>

<div class="div-buy-2">
<div class="div-two">
<div class="buy-subtitle3">
무이자할부가 적용되지 않은 상품과 무이자할부가 가능한 상품을 동시에 구매할 경우 전체 주문 상품 금액에 대해 무이자할부가 적용되지 않습니다. <br>
무이자할부를 원하시는 경우 장바구니에서 무이자할부 상품만 선택하여 주문하여 주시기 바랍니다. <br> <br>
최소 결제 가능 금액은 결제금액에서 배송비를 제외한 금액입니다.
</div>
</div></div>
<br><br><br><br><br><br><br><br><br><br>

</body>
<script type="text/javascript">
	$(document).ready(function() {
		  
		/* 종합 정보 섹션 정보 삽입(초기) */
		let totalPrice = 0;				// 총 가격
		let totalCount = 0;				// 총 갯수
		let deliveryPrice = 0;			// 배송비
		let finalTotalPrice = 0; 		// 최종 가격(총 가격 + 배송비)
		
		$(".cart_info_td").each(function(index, element){
			
			// 총 가격
			totalPrice += parseInt($(element).find(".individual_totalPrice_input").val());
			// 총 갯수
			totalCount += parseInt($(element).find(".individual_cquantity_input").val());
			
			
			/* 배송비 결정 */
			if(totalPrice >= 50000){
				deliveryPrice = 0;
			} else if(totalPrice == 0){
				deliveryPrice = 0;	
			} else {
				deliveryPrice = 3000;	
			}
			
			/* 최종 가격 */
			finalTotalPrice = totalPrice + deliveryPrice;
			
			/* 값 삽입 */
			// 총 가격
			$(".totalPrice_span").text(totalPrice.toLocaleString());
			// 총 갯수
			$(".totalCount_span").text(totalCount);
			// 배송비
			$(".delivery_price").text(deliveryPrice);	
			// 최종 가격(총 가격 + 배송비)
			$(".finalTotalPrice_span").text(finalTotalPrice.toLocaleString());

		});
	});
</script>


<script type="text/javascript">
	$(function(){
		
		/* 결제하기 버튼 */
			$("#paybtn").click(function(){

				
				// 회원 정보
				let param_string1 = '';
				
				if($("#mid").val() != ''){
					
					$("table.buy-sangpum0 tbody tr td.cart_info_td").each(function (index, item) {
						
					     console.log(item);
					     param_string1 += $(item).find("input.param_pnum1").val() + ',';
					     param_string1 += $(item).find("input.param_oid1").val() + ',';
					     param_string1 += $(item).find("input.param_quantity1").val() + '|';
					
					});	
// 					debugger;
				}
				
				
				$.ajax({
		         type:"post",
		         dataType:"text",
		         url:"/pay/done",
		         data:{
		        	 "mid":$("#mid").val(),
		        	 "param_string":param_string1
		         },
		         success:function(data){
		        	 location.href="/pay/done?mid=${sessionScope.mId}";
		         }   
		        });
			});
			
	    });

</script>


<script type="text/javascript">
function findAddr(){
	new daum.Postcode({
        oncomplete: function(data) {
   	
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var jibunAddr = data.jibunAddress; // 지번 주소 변수
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('member_post').value = data.zonecode;
            if(roadAddr !== ''){
                document.getElementById("member_addr").value = roadAddr;
            } 
            else if(jibunAddr !== ''){
                document.getElementById("member_addr").value = jibunAddr;
            }
        }
    }).open();
}
</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</html>
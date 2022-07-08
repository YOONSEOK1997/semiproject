<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CART</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>   
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100;300;400;500&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/resources/css/cart.css">
</head>

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

<body>
<br><br><br>
<div class="wrapper">

<div class="wrap">

<br><br>

<div class="cart-title">Cart</div>
<br><br>

	<!-- 회원 ID 가져오기 -->
   <input type="hidden" id="mid" value="${cList[0].mid}">
   
   <!-- 카트 테이블 첫 행 -->
   <table class="cart-table" style="width:1200px;">
   <thead>
   	<tr>
		<th class="th_width_1"></th>
		<th class="th_width_2"><input type="checkbox" id="allcheck">전체선택 |</th>
		<th class="th_width_3" id="Cartdel">선택삭제 </th>
		<th class="th_width_4">제품명</th><th class="th_width_4">옵션</th>
		<th class="th_width_4">수량</th>	
		<th class="th_width_4">금액</th>
		<th></th>
	</tr>
   </thead>
   <tbody>
	<c:forEach var="cList2" items="${cList}" varStatus="i">
	<tr>
		<td class="cart_info_td">
				<input type="hidden" class="individual_totalPrice_input" value="${cList2.sum_price}">
				
				<input type="hidden" class="individual_cquantity_input param_quantity" value="${cList2.cquantity}">
				<input type="hidden" class="param_pnum" value="${cList2.pnum}">
				<input type="hidden" class="param_oid" value="${cList2.oid}">
				<input type="hidden" class="param_quantity2" value="${cList2.cquantity}">
		</td>
		
		<!-- 체크박스 -->
		<td><input type="checkbox" class="del" cid="${cList2.cid}"></td>
		
		<!-- 이미지&제품정보  <td></td>-->
		<td style="text-align: left; padding: 15px;"><img src="${root}/save/${cList2.pphoto}" style="width:150px;">&nbsp;&nbsp;
		<td class="pname">${cList2.pname}<div style="font-size:15px; color:#bcbcbc;"><br>${cList2.ptag}</div></td>
		<td class="poption">${cList2.oid}ml<div style="font-size:15px;"><br>${cList2.pcate1}<br>-${cList2.pcate2}</div></td>
				
		<!-- 수량선택 -->	
		<td>
			<div class="number-input">	
				<button onclick="this.parentNode.querySelector('input[type=number]').stepDown()" class="minus btn-minus"></button>
				<input class="quantity" min="1" name="quantity" value="${cList2.cquantity}" type="number" id="quantity">
				<button onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus btn-plus"></button>
			</div>
		</td>
		
		<!-- 해당 상품 금액 -->
		<td class="price_td">
		<input class="oprice" type="hidden" value="${cList2.oprice}">
		<span class="sum_price">${cList2.sum_price}</span> 원
	</c:forEach>
	</tbody>
</table>

<br><br><br><br><br><br><br><br><br>

<table class="all_price">
	<tr>
		<th class="all_price_th" style="width:120px; padding-left: 10px;">총 상품가격</th>
		<th style="width:70px;"></th>
		<th class="all_price_th"  style="width:120px;">추가금액</th>
		<th style="width:70px;"></th>
		<th class="all_price_th"  style="width:120px;">배송비</th>
		<th style="width:70px;"></th>
		<th class="all_price_th4"  style="width:120px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;총 결제금액</th>
	</tr>
	
	<tr style="line-height: 120px;">	
		<td style="font-size: 24px;"><span class="totalPrice_span"></span> 원</td>
		
		<td><img src="${root}/image/-.PNG" id="m" style="width:60px"></td>
		
		<td style="font-size: 24px;">0원</td>
		
		<td><img src="${root}/image/+.PNG" id="p" style="width:60px"></td>
		
		<td style="font-size: 24px;"><span class="delivery_price"></span>원</td>
		
		<td><img src="${root}/image/=.PNG" id="e" style="width:60px"></td>
		
		<td class="all_price_th4" style="font-size: 24px;"><span class="finalTotalPrice_span"></span> 원</td>
	</tr>
</table>

<br><br><br><br>

<div class="buybtn" id="buybtn" >주문하기</div>

<br><br><br><br>

</div>	<!-- class="wrap" -->
</div>	<!-- class="wrapper" -->

</body>


<script type="text/javascript">
	$(function(){
		
        /* 페이지 들어오자마자 체크박스  체크 */
            if ($("#mid").val() == '') {
                $("#allcheck").prop("checked", false);
            } else {
                $("#allcheck").prop("checked", true);
                $(".del").prop("checked", true);
            }
		
		/* 체크박스 전체선택 */
		$("#allcheck").click(function(){
			var chk = $(this).is(":checked"); //체크상태 확인
			console.log(chk);
			if(chk){
				$(".del").prop("checked",true); //속성변경(true/false일 경우 prop사용)
			}else{
				$(".del").prop("checked",false);
			}
		});
		
		
		/* delete 버튼 - 삭제 */
		$("#Cartdel").click(function(){
			//체크 수 구하기
			var len = $(".del:checked").length;
			//0명일 경우
			if(len==0){
				alert("삭제할 상품을 선택해 주세요")
				return;
			}
			//체크한 곳의 cid값 가져오기
			var cids = "";
			$(".del:checked").each(function(i, element){
				var cid = $(this).attr("cid");
				cids+=cid+",";
			});
			//마지막 컴마(,) 제거
			cids = cids.substring(0, cids.length-1);
			//alert(nums);
			
	         $.ajax({
	             type:"get",
	             dataType:"text",
	             data:{"cids":cids},
	             url:"/cart/delete",
	             success:function(data){
	                //새로고침
	                location.reload();
	             }
	          });
	       });
		
		
		
		/* 주문하기로 보내기 버튼 */
		
			$("#buybtn").click(function(){

				var len = $(".del:checked").length;
				//0명일 경우
				
				if(len==0){
					window.name="parentForm";
					window.open("<%=request.getContextPath()%>/nocart.jsp",
							"상품 확인","width=380,height=200, left=650, top=200, resizable=no,scrollbar=no");
					
					//alert("장바구니에 상품이 없습니다.")
					return;
				}
				
				// 회원 정보
				let param_string = '';
				
				if($("#mid").val() != ''){
					//alert("len:"+$(".del:checked").length);
					//$("table.cart-table tbody tr").each(function (index, item) {
 						$(".del:checked").each(function (index, item) {
						//if($(".del:checked")){
					     console.log(item);
					     param_string += $(item).parent().siblings('td.cart_info_td').find("input.param_pnum").val() + ',';
					     param_string += $(item).parent().siblings('td.cart_info_td').find("input.param_oid").val() + ',';
					     param_string += $(item).parent().siblings('td.cart_info_td').find("input.param_quantity2").val() + '|';
 					//	}
					});	
 						console.log("param_string="+param_string);
// 					debugger;
				}
				
				
				 $.ajax({
		         type:"post",
		         dataType:"text",
		         url:"/orderinfo/buy",
		         data:{
		        	 "mid":$("#mid").val(),
		        	 "param_string":param_string
		         },
		         success:function(data){
		        	//alert(data.message);
		        	//location.reload();
		        	//location.href="/cart/buy";
		        	 location.href="/orderinfo/buy?mid=${sessionScope.mId}";
		         }   
		        }); 
			});
			
	    });

</script>


<script type="text/javascript">
<!--  수량추가  -->
$('.btn-plus, .btn-minus').on('click', function(e) {

	let quantity = $(e.target).siblings('input.quantity').val();
	let oprice = $(e.target).parent().parent().siblings('td.price_td').find('input.oprice').val();
	
	let deliveryPrice2 = 0;			// 배송비
	
	
	
	$(e.target).parent().parent().siblings('td.price_td').find("span.sum_price").text(quantity*oprice);
	
	let price = 0;
	$("table.cart-table tbody tr").each(function (index, item) {
	     console.log(item);
	     price += $(item).find('td.price_td').find("span.sum_price").text() * 1;
	});	
	
	if(price >= 50000){
		deliveryPrice2 = 0;
	} else if(price == 0){
		deliveryPrice2 = 0;	
	} else {
		deliveryPrice2 = 3000;	
	}
	
	$("span.totalPrice_span").text(price);
	$("span.finalTotalPrice_span").text(price+deliveryPrice2);
	$("span.delivery_price").text(deliveryPrice2);
// 	var s=$("span.finalTotalPrice_span").text(price+deliveryPrice2);
// 	$("#quantity").value(s);
	$("input.param_quantity2").val(quantity); //이게 되네?
	
});


</script>
</html>
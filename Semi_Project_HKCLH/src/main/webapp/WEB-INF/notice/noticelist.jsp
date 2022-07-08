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
    font-size: 20px;
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
  div.notice{
  width: 800px;
  position:relative;
  left: 500px;
  top: 80px;
  }

  
</style>
</head>
<body>


<span id="faq-title"><b>공지사항</b></span>
<div class="notice">
<div class="faq-content">
  <button class="question" id="que-1"><span id="que-1-toggle">+</span>
  <span>배송기간 안내 (주문 후 3~4일 예상)</span></button>
  <div class="answer" id="ans-1">FragBit는 월/수/금 출고가 진행되고 있으며,<br>

그럴 경우 주문 후 3~4일 내에 제품을 받아보실 수 있으실 것으로 예상됩니다.<br>

공휴일이나 FragBit 내부사정으로 인한 약간의 변동이 있을 수 있음을 미리 알려드립니다.</div>
</div>
<div class="faq-content">
  <button class="question" id="que-2"><span id="que-2-toggle">+</span><span>택배 파업에 따른 배송 지연 안내</span></button>
  <div class="answer" id="ans-2">안녕하세요. FragBit입니다.<br>



배송 협력업체인 CJ대한통운의 파업으로 배송이 지연되고 있습니다.<br>

원활하게 배송해드리지 못하는 점 양해를 구합니다.<br>

해당 지역에 거주하시고 계시는 고객님께서는 구매 전에 확인 부탁드립니다.<br>

다시 한번 불편을 드려 죄송합니다. <br>



FragBit 드림</div>

</div>
<div class="faq-content">
  <button class="question" id="que-3"><span id="que-3-toggle">+</span><span>사이트 이전으로 인한 기존 적립금 및 쿠폰 안내</span></button>
  <div class="answer" id="ans-3">
  
  
	<img src="${root}/save/notice_coupon.jpg" style="width: 700px";>
  
  </div>
</div>

<div class="faq-content">
  <button class="question" id="que-4"><span id="que-4-toggle">+</span><span>제주도 추가 배송비 무료 안내</span></button>
  <div class="answer" id="ans-4">안녕하세요, FragBit입니다.<br>

2022.05.26 (목) 부터 2022.06.03 (금) 까지 제주도 추가 배송비가 무료로 진행됩니다.<br>

배송비로만 5,500원을 부담해야 하는 제주도민분들이 <br>

부담 없이 다양한 향기를 즐기실 수 있도록 약 2주간 추가 배송비 무료 이벤트를 진행하오니, <br>

FragBit에서 나만의 '시그니처 향기'를 찾을 수 있길 바랍니다! <br>

<br><br>
또한, 데일리 키트 구매 후 이벤트 기간 안에 40ml 구매 시, <br>

40ml 향수 10% 할인과 추가 배송비 무료 혜택을 모두 받으실 수 있습니다. <br>

<br>
✔ 데일리 키트 - 2.5ml * 3개<br>

￦12,500 (정가 ￦15,500 추가 배송비 포함) <br>


<br>
✔ 40ml <br> 

￦43,200 (정가 ￦51,000 추가 배송비 포함) <br>


<br><br>

7월 2주간 진행하는 제주도 추가 배송비 무료 혜택을 놓치지 마세요!<br>

향기가 필요한 순간, FragBit가 함께 합니다.<br>


<br>
- 자세한 사항은 홈페이지-EVENT 를 참고해주세요!</div>
</div>

<div class="faq-content">
  <button class="question" id="que-5"><span id="que-5-toggle">+</span><span>고객센터 유선 연결 안내</span></button>
  <div class="answer" id="ans-5">고객님, 안녕하세요.<br>



현재 고객센터 유선 연결이 어렵습니다. <br>



주문 및 배송 관련 문의는 홈페이지 1:1 게시판이나 help@fragbit.com 으로 남겨주시면 순차적으로 응대 해드리고 있습니다.<br>



불편을 드려 대단히 죄송합니다.<br></div>
</div>

<div class="faq-content">
  <button class="question" id="que-6"><span id="que-6-toggle">+</span><span>기존 사이트 주문 취소 안내</span></button>
  <div class="answer" id="ans-6">
  <img src="${root}/save/notice_cancel.png" style="width: 700px";>
  </div>
</div>

<div class="faq-content">
  <button class="question" id="que-7"><span id="que-7-toggle">+</span><span>교환 및 반품 규정</span></button>
  <div class="answer" id="ans-7">1. 교환 및 반품 규정 안내<br>

- 고객님의 단순변심, 구매 착오에 따른 교환 및 반품 신청은 상품을 공급받은 날부터 7일 이내 가능합니다. (배송비 고객 부담)<br>
- 다만 제공받은 상품이 주문 하신 내용과 다르거나 계약내용과 다르게 이행된 경우에는 상품을 공급받은 날부터 3개월, 그 사실을 안 날로부터 30일 이내에 반품 신청이 가능합니다. (배송비 회사 부담)<br>
- 사용하시지 않은 제품에 한하여 교환 및 반품이 가능하며 제품을 발송하실 때에는 배송 받으셨던 포장 박스에 제품을 넣어 보내 주셔야 합니다.<br>
- 교환의 경우, 미개봉/미사용 상품에 한하여 정가 금액과 동일 금액의 상품으로 교환이 가능합니다.<br>
- 해당 상품 구매 시 사은품/증정품 등이 제공된 경우, 상품 교환 및 반품 시 함께 보내주셔야 합니다.<br>
- 별도 각인을 신청한 경우에는 제품에 하자가 있는 경우에만 교환 및 반품이 가능합니다.<br>
- 다음과 같은 경우 교환/반품이 불가합니다.<br>
<br>
고객에게 책임이 있는 사유로 상품이 멸실되거나 훼손된 경우 (상품내용을 확인하기 위하여 포장 등을 훼손한 경우는 제외)<br>
고객의 사용 또는 일부 소비로 상품 가치가 현저히 감소한 경우<br>
시간이 지나 다시 판매하기 곤란할 정도로 상품 가치가 현저히 감소한 경우<br>
반품시 포장 부주의로 인해 반품 상품이 배송 중 훼손되어 입고된 경우<br>

<br><br>
2. 반품 절차 안내<br>

(1) 1:1 문의를 통해 반품 문의 접수 (반드시 문의 접수 후에 반송 진행해주시기 바랍니다.)<br>
(2) 회수신청이 접수되면 제품 회수를 위해 배송받으신 주소로 CJ대한통운택배에서 영업일 기준 1~3일 내 직접 방문하여 상품을 수거합니다. (반품사유에 따라 반품배송비가 발생할 수 있으며, 타 택배 이용시 반드시 고객 선불 발송)<br>
(3) 회수된 상품은 배달완료 및 입고/검수 후에 환불 진행 됩니다.<br>

고객센터 : 070-8260-8028 (평일 10:00 ~ 17:00, 주말 및 공휴일 휴무 / 점심시간 제외)<br>
반품주소 : 서울 용산구 새창로 14길 4 지층 (수신인 : FragBit)<br>

<br><Br>
3. 환불 소요 기간<br>
- 반품 시 상품대금 환불은 상품 회수 및 청약철회가 확정된 날부터 3 영업일 이내 진행되며, 기한을 초과한 경우 지연기간에 대하여 연 100분의20을 곱하여 산정한 지연이자를 지급합니다.<br>
결제 유형에 따른 환불 소요 기간은 다음과 같습니다.<br>
<br>
- 카드결제 : 카드사에 따라 반품 완료 및 취소 처리 완료일로부터 영업일기준 약 3~7일 정도 소요됩니다.<br>
- 무통장입금/실시간 계좌이체 : 반품 완료 및 취소 처리 완료일로부터 영업일기준 약 2~3일 정도 소요됩니다.<br>
- 휴대폰결제 : 취소 처리 완료 당월 휴대폰 요금 반영되며, 결제 익월 취소 건 부터는 별도 계좌로 환불됩니다. (계좌로 환불 시 환불 진행 등록 후 영업일 기준 약 2~3일 정도 소요)<br>
- 할인쿠폰 : 취소완료/반품완료 등록 시 쿠폰 사용기한 내에는 복원됩니다. (사용기한 경과 시 별도 복원되지 않습니다.)</div>
</div>

<div class="faq-content">
  <button class="question" id="que-8"><span id="que-8-toggle">+</span><span>추석 연휴 배송 안내</span></button>
  <div class="answer" id="ans-8">9월 16일 (목) 오전 9시 주문건까지 당일 출고되지만, <br>

추석 연휴 전후 택배 물량 증가로 인해 배송 지연이 발생할 수 있습니다.<br>

배송 일정에 여유를 두고 주문 부탁드리며, 고객님의 양해 부탁드립니다.<br>
이후 결제건은 9월 23일 (목)부터 순차적으로 발송됩니다.<br>

감사합니다.</div>
</div>
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
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
    <link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/buy.css">

<script type="text/javascript">
	$(function(){
				
		//비밀번호 눈모양 클릭시 비밀번호 보이기/숨김
		$("span.eye1").click(function(){
			if($("input.pass").attr("type")=="password")
				{
					$(this).removeClass("bi bi-eye eye1");
					$(this).addClass("bi bi-eye-slash eye1");
					$("input.pass").attr("type","text");
				}
			else
				{
					$("input.pass").attr("type","text");
					$(this).removeClass("bi bi-slash eye1");
					$(this).addClass("bi bi-eye eye1");	
					$("input.pass").attr("type","password");

				}
		});
		
		//비밀번호 확인 눈모양 클릭시 비밀번호 보이기/숨김
		$("span.eye2").click(function(){
			if($("input.pass2").attr("type")=="password")
				{
					$(this).removeClass("bi bi-eye eye2");
					$(this).addClass("bi bi-eye-slash eye2");
					$("input.pass2").attr("type","text");
				}
			else
				{
					$("input.pass2").attr("type","text");
					$(this).removeClass("bi bi-slash eye2");
					$(this).addClass("bi bi-eye eye2");	
					$("input.pass2").attr("type","password");

				}
		});
	
	});
</script>

</head>
<body>

<div class="content">

<div class="title">주문서</div>
<div class="title2">주문하실 상품명 및 수량을 정확하게 확인해 주세요.</div>


<div class="one">
<div class="one1">배송지</div>

<div>
	<input type="radio" id="sameaddr0" name="sameaddr" autocomplete="off">
	<label for="sameaddr0">회원 정보와 동일</label>&nbsp;&nbsp;&nbsp;
	<input type="radio" id="sameaddr1" name="sameaddr" autocomplete="off">
	<label for="sameaddr1">새로운 배송지</label>
</div>


<div class="bae">
<table>
	<tr>
		<th style="width: 80px; line-height:500%;">받는사람*</th>
		<td style="width: 650px;">
			<input type="text" name="mName" placeholder="이름을 입력해 주세요" required="required" value="${sessionScope.mName }"
			 autofocus="autofocus" style="width: 580px;" >
		</td>
	</tr>
	
	<tr>
		<th style="width: 80px; line-height:500%;" >주소*</th>
		<td>
			<input id="member_post" name="mPost" type="text" placeholder="우편 번호" readonly>
			<button type="button" class="btn btn-sm" onclick="findAddr()">주소검색</button><br>
			<input id="member_addr" name="addr1" type="text" placeholder="주소" readonly  style="width: 580px;" value="${dto.mAddress }"><br>
			<input type="text" name="addr2" placeholder="상세 주소" style="width: 580px;" >
		</td>
	</tr>
	<tr>
		<th style="width: 80px; line-height:500%;" >휴대전화*</th>
		<td>
			<input type="text" name="mPhone" placeholder="- 없이 번호만 입력해 주세요" required="required" maxlength="11">
		</td>
	</tr>
	<tr>
		<th style="width: 80px; line-height:500%;">E-Mail*</th>
			<td>
				<input type="text" name="mEmail" placeholder="이메일을 입력해 주세요" required="required">
				@
				<select style="width: 300px; font-size:15px; height: 35px; color:#333;">
					<option>직접입력</option>
					<option value="@naver.com">naver.com</option>
					<option value="@daum.net">daum.net</option>
					<option value="@google.com">google.com</option>
					<option value="@nate.com">nate.com</option>
				</select>
			</td>
		</tr>
</table>

<div class="shippingmsg" style="line-height:300%;">
	 <select id="omessage_select" name="omessage_select" fw-filter="" fw-label="배송 메세지" fw-msg="" style="width: 700px; font-size:15px;">
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

</div><!-- div content닫기 -->
<br><br><br><br>
</body>
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
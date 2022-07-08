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
    
<style type="text/css">

	input::placeholder {
		font-size: 0.7em;
	}
	
	span {
		position:relative;
		left: -20px;
	}
</style>

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
<form action="insert" method="post">
	<table style="width: 800px;">
		<caption>회원가입</caption>
		<tr>
			<th>아이디</th>
			<td>
				<input type="text" name="mId" placeholder="아이디를 입력해 주세요" required="required">			
			</td>
		</tr>
		
		<tr>
			<th>이 름</th>
			<td>
				<input type="text" name="mName" placeholder="이름을 입력해 주세요" required="required">
			</td>
		</tr>
	
		<tr>
			<th>비밀번호</th>
			<td>
				<input type="password" name="mPassword" placeholder="비밀번호를 입력해 주세요" required="required"
				style="width: 300px;" class="pass" minlength = "8"><span class="bi bi-eye eye1"/>
			</td>
		</tr>
		
		<tr>
			<th>비밀번호 확인</th>
			<td>
				<input type="password" placeholder="비밀번호를 다시 입력해 주세요" required="required"
				class="pass2" minlength = "8"><span class="bi bi-eye eye2"/>
				
			</td>
		</tr>
		
		<tr>
			<th>E-Mail</th>
			<td>
				<input type="text" name="mEmail" placeholder="이메일을 입력해 주세요" required="required">
				<select>
					<option>직접입력</option>
					<option value="@naver.com">naver.com</option>
					<option value="@daum.net">daum.net</option>
					<option value="@google.com">google.com</option>
					<option value="@nate.com">nate.com</option>
				</select>
			</td>
		</tr>
		
		<tr>
			<th>핸드폰 번호</th>
			<td>
				<input type="text" name="mPhone" placeholder="- 없이 번호만 입력해 주세요" required="required" maxlength="11">
			</td>
		</tr>
		
		<tr>
			<th>생년월일</th>
			<td>
				<input type="date" name="mBirth">
			</td>
		</tr>
		
		<tr>
			<th>주 소</th>
			<td>
				<input id="member_post" name="mPost" type="text" placeholder="우편 번호" readonly >
				<button type="button" onclick="findAddr()">우편번호 검색</button><br>
				<input id="member_addr" name="addr1" type="text" placeholder="주소" readonly><br>
				<input type="text" name="addr2" placeholder="상세 주소">
			</td>
		</tr>
		
		<tr>
			<td colspan="2">
			<button type="submit">회원 가입</button>
			</td>		
		</tr>
	</table>
</form>

</body>
<script>
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
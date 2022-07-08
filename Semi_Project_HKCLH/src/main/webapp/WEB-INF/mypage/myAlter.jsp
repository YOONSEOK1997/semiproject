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
  
  	input::placeholder {
	font-size: 0.7em;
	}
	
	form *{
	font-family: 'Noto Sans KR';
	}
	
	btn.addbtn{
		width: 50px;
		height: 50px;
		border-radius: 10px;
		border
	}
	
	div.id,div.name,div.pass1,div.pass2,div.email,div.phone,div.date,div.addr,div.aggr,div.birth
	{
		font-size: 0.9em;
		color: red;
	}
  
</style>
<script type="text/javascript">

function chk(){	
	var mId=document.getElementById("mId");
	var idreg=/^[a-zA-z0-9]{4,12}$/; //아이디 정규식
	var idunchk=document.getElementById("idunchk");
	var mName=document.getElementById("mName");
	var namereg=/^[가-힣]{2,5}$/; //이름 정규식
	var pass1=document.getElementById("pass1");
	var pass2=document.getElementById("pass2");			
	var passreg=/^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/; //비밀번호 정규식
	var mEmail=document.getElementById("mEmail");
	var emailreg=/^[a-zA-Z0-9+-\_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/; //이메일 정규식
	var mPhone=document.getElementById("mPhone");
	var phonereg=/^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/; //휴대폰 번호 정규식
	var mAddress1=document.getElementById("mAddress1");
	
	


	if(pass1.value==""){
		$("div.pass1").text("비밀번호를 입력해 주세요");
		$("#pass1").focus();
		return false;
	}
	else if(!passreg.test(pass1.value)){
		$("div.pass1").text("최소 8 자, 하나 이상의 문자, 하나의 숫자 및 하나의 특수 문자를 입력해주세요");
		$("#pass1").focus();
		return false;
	}
	if(pass2.value==""){
		$("div.pass2").text("비밀번호를 한번더 입력해 주세요");
		$("#pass2").focus();
		return false;
	}else if(pass2.value!=pass1.value){
		$("div.pass2").text("비밀번호가 일치하지 않습니다");
		$("#pass2").focus();
		return false;
	}
	if(mEmail.value==""){
		$("div.email").text("이메일을 입력해 주세요");
		$("#mEmail").focus();
		return false;
	}else if(!emailreg.test(mEmail.value)){
		$("div.email").text("올바른 이메일 형식이 아닙니다");
		$("#mEmail").focus();
		return false;
	}
	if(mPhone.value==""){
		$("div.phone").text("휴대폰 번호를 입력해주세요");
		$("#mPhone").focus();
		return false;
	}else if(!phonereg.test(mPhone.value)){
		$("div.phone").text("올바른 휴대폰 번호가 아닙니다");
		$("#mPhone").focus();
		return false;
	}

	if(mBirth.value==""){
		$("div.birth").text("생년월일을 입력해 주세요");
		$("#mBirth").focus();
		return false;
	}
	if(mAddress1.value==""){
		$("div.addr").text("주소를 입력해 주세요");
		$("#mAddress1").focus();
		return false;
	}

	else {
		alert("회원 정보가 수정되었습니다");
		true;
	}
}

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
		$("div.qna").click(function(){
			   location.href = "/mypage/qna?mId=${sessionScope.mId}";
		});
		$("div.delete").click(function(){
			   location.href = "/mypage/delete";
		});
		
		
		$("#pass1").keyup(function(){
			var s=$(this).val();
			if(s!=""){
				$("div.pass1").html("");
			}	
		})
		
		$("#pass2").keyup(function(){
			var s=$(this).val();
			if(s!=""){
				$("div.pass2").html("");
			}	
		})
		
		$("#mEmail").keyup(function(){
			var s=$(this).val();
			if(s!=""){
				$("div.email").html("");
			}	
		})
		
		$("#mPhone").keyup(function(){
			var s=$(this).val();
			if(s!=""){
				$("div.phone").html("");
			}	
		})
		
		$("#mBirth").change(function(){
			var s=$(this).val();
			if(s!=""){
				$("div.birth").html("");
			}	
		})
		
		$("#mAddress1").change(function(){
			var s=$(this).val();
			if(s!=""){
				$("div.addr").html("");
			}	
		})
	})
	
</script>
</head>
<body>

<input type="hidden" name="mId" value="${mId}">
<div class="notice">
<a>
<div class="faq-content mypage" >
  <button class="question" id="que-1"><span id="que-1-toggle">+</span>
  <span>
  마이 페이지</span></button>
</div></a>

<div class="faq-content list">
 <button class="question" id="que-3"><span id="que-3-toggle">+</span><span>주문 내역</span></button>
</div>


<div class="faq-content review">
  <button class="question" id="que-4"><span id="que-4-toggle">+</span><span>내 리뷰</span></button>
</div>

<div class="faq-content qna">
  <button class="question" id="que-5"><span id="que-5-toggle">+</span><span>1:1 문의</span></button>
</div>

<div class="faq-content alter">
  <button class="question" id="que-6"><span id="que-6-toggle">+</span><span  style="font-weight: bold; font-size: 20px;">회원 정보 수정</span></button>
</div>

<div class="faq-content delete">
  <button class="question" id="que-6"><span id="que-6-toggle">+</span><span>회원 탈퇴</span></button>
</div>
</div>

	<div class="container" style="position: absolute; left: 600px; top:200px;">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <form class="validation-form" action="update" method="post" onsubmit="return chk();">   
        <label style="margin-left: 40%; font-size: 2.5em;">회원 정보 수정</label><br><br> 
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="mId" style="margin-bottom: 10px;">아이디</label> &nbsp;&nbsp;&nbsp;
              <input type="text" class="form-control" name="mId" id="mId" placeholder="영어 대소문자,숫자 포함 4~12자리" value="${mId }" readonly>
              <input type="hidden" id="idunchk" value="idunchk">
              <div class="id" id="idmsg">
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="mName" style="margin-bottom: 12.5px;">이름</label><br>
              <input type="text" class="form-control" name="mName" id="mName" placeholder="이름" value="${mName }" readonly>
              <div class="name">
              </div>
            </div>
          </div>

          <div class="mb-3">
            <label for="mPassword">비밀번호</label>
            <input type="text" class="form-control" name="mPassword" id="pass1" placeholder="최소 8 자, 하나 이상의 문자, 하나의 숫자 및 하나의 특수 문자를 입력해주세요">
            <div class="pass1">
            </div>
          </div>
          
          <div class="mb-3">
            <label for="pass2">비밀번호 확인</label>
            <input type="text" class="form-control" id="pass2" placeholder="비밀번호를 한번 더 입력해주세요">
            <div class="pass2">
            </div>
          </div>
          
          <div class="mb-3">
            <label for="mEmail">이메일</label>
            <input type="text" class="form-control" name="mEmail" id="mEmail" placeholder="you@example.com">
            <div class="email">
            </div>
          </div>
          
          <div class="mb-3">
            <label for="mPhone">휴대폰 번호</label>
            <input type="text" class="form-control" name="mPhone" id="mPhone" placeholder="- 없이 번호만 입력해주세요">
            <div class="phone">
            </div>
          </div>
          
          <div class="mb-3">
            <label for="mBirth">생년월일</label>
            <input type="date" class="form-control" name="mBirth" id="mBirth">
            <div class="birth">
            </div>
          </div>

          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="member_addr">주소&nbsp;&nbsp;&nbsp;</label>
          	  
              <input type="text" class="form-control" name="mAddress1" id="mAddress1" placeholder="주소 찾기를 눌러서 주소를 입력해주세요"
              readonly="readonly">
              <div class="invalid-feedback">
              </div>
            <div class="addr">
            </div>
            </div>
            
            <div class="col-md-6 mb-3">
              <label for="mPost">우편번호</label>              
              <input type="text" class="form-control" name="mPost" id="mPost" readonly="readonly">


            </div>
            
          </div><br>
          <button class="btn btn-primary btn-lg btn-block" type="button" style="background-color: black; border: black; border-radius: 10px;" onclick="findAddr()">주소 찾기</button><br>
          

          <div class="mb-3">
            <label for="mAddress2">상세주소<span class="text-muted">&nbsp;(선택)</span></label>
            <input type="text" class="form-control" name="mAddress2" id="mAddress2" placeholder="상세주소를 입력해주세요.">
          </div><br><br>
          

          <button class="btn btn-primary btn-lg btn-block" type="submit" style="background-color: black; border: black; border-radius: 10px;">수 정</button>
        </form><br><br>
      	
    </div>
      
    </div>

  </div>



<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br>

</div>
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
            document.getElementById("mPost").value = data.zonecode;
            if(roadAddr !== ''){
                document.getElementById("mAddress1").value = roadAddr;
            } 
            else if(jibunAddr !== ''){
                document.getElementById("mAddress1").value = jibunAddr;
            }
            
            $("div.addr").html("");	
        }
    }).open();
}
</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</html>
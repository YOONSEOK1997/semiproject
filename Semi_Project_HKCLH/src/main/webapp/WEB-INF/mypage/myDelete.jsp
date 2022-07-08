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

	var pass1=document.getElementById("pass1");	
	
	if(pass1.value==""){
		$("div.pass1").text("비밀번호를 입력해 주세요");
		$("#pass1").focus();
		return false;
	}
	
	if (!confirm("정말 탈퇴하시겟습니까 ?")) {
        return false;
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
		$("div.alter").click(function(){
			   location.href = "/mypage/alter";
		});
		
		$("#pass1").keyup(function(){
			$("div.passchk").text("");
		});
		$("#pass1").keydown(function(){
			$("div.passchk").text("");
		});
		
		//댓글 삭제 이벤트
		$(document).on("click","#btn",function(){
			
			var pass1=document.getElementById("pass1");	
			
			if(pass1.value==""){
				$("div.passchk").text("비밀번호를 입력해 주세요");
				$("#pass1").focus();
				return false;
			}

			var ans=confirm("정말 탈퇴 하시겟습니까 ?");

			if(ans)
			{
				$.ajax({
					type:"post",
					dataType:"json",
					data:{"mId":$("#mId").val(),"mPassword":$("#pass1").val()},
					url:"memberdelete",
					success:function(data){
						if(data.msg=="no"){
							$("div.passchk").text("비밀번호를 확인해주세요");
						}else if(data.msg=="ok"){
							alert("회원탈퇴가 완료되었습니다");
							location.href="../";
						}
					}
				});
			}	
		});
		
	})
</script>
</head>
<body>

<input type="hidden" value="${mId}">
<div class="notice">
<div class="faq-content mypage" >
  <button class="question" id="que-1"><span id="que-1-toggle">+</span>
  <span>
  마이 페이지</span></button>
</div>

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
  <button class="question" id="que-6"><span id="que-6-toggle">+</span><span">회원 정보 수정</span></button>
</div>

<div class="faq-content delete">
  <button class="question delete" id="que-6"><span id="que-6-toggle">+</span><span  style="font-weight: bold; font-size: 20px;">회원 탈퇴</span></button>
</div>
</div>

	<div class="container" style="position: absolute; left: 600px; top:200px;">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <form class="validation-form">   
        <label style="margin-left: 44%; font-size: 2.5em;">회원 탈퇴</label><br><br> 
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
            <div class="passchk" style="color: red; font-size: 0.9em;"></div>
          </div>
		<br><br>
          

          <button class="btn btn-primary btn-lg btn-block" type="button" id="btn" style="background-color: black; border: black; border-radius: 10px;">탈 퇴</button>
        </form><br><br>
      	
    </div>
      
    </div>

  </div>



<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br>

</body>

</html>
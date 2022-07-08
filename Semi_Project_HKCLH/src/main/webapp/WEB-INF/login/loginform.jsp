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

 
 
<c:set var="root" value="<%=request.getContextPath() %>"></c:set>
<link rel="stylesheet" type="text/css" href="${root}/css1/animate.css">
<link rel="stylesheet" type="text/css" href="${root}/css1/animsition.min.css">
<link rel="stylesheet" type="text/css" href="${root}/css1/daterangepicker.css">
<link rel="stylesheet" type="text/css" href="${root}/css1/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="${root}/css1/hamburgers.min.css">
<link rel="stylesheet" type="text/css" href="${root}/css1/main.css">
<link rel="stylesheet" type="text/css" href="${root}/css1/select2.min.css">
<link rel="stylesheet" type="text/css" href="${root}/css1/util.css">

<script type="text/javascript" src="${root}/js1/analytics.js"></script>
<script type="text/javascript" src="${root}/js1/animsition.min.js"></script>
<script type="text/javascript" src="${root}/js1/countdowntime.js"></script>
<script type="text/javascript" src="${root}/js1/daterangepicker.js"></script>
<script type="text/javascript" src="${root}/js1/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${root}/js1/main.js"></script>
<script type="text/javascript" src="${root}/js1/moment.min.js"></script>
<script type="text/javascript" src="${root}/js1/select2.min.js"></script>



<style type="text/css">

div.all{
	position:absolute;
	left: 38%;

}

div.all div.url{
	position: relative;
	top: -40px;
}
div.all div.signup{
	position: relative;
	top: -150px;
}

</style>
<script type="text/javascript">
	function checked(){		
		
		$.ajax({
			type:"post",
			datatype:"json",
			url:"process2",
			data:{"mId":$("#mId").val(),"mPassword":$("#mPassword").val()},
			success:function(data){
				if(data.error!="ok"){
					alert("아이디 또는 비밀번호가 일치하지 않습니다");
					//$("#error").text("아이디 또는 비밀번호가 일치하지 않습니다");
				}
			}
		});
	}
	
	function kakao(){
		
		$.ajax({
			type:"post",
			datatype:"json",
			url:"kakao",
			data:{"kakaoid":$("#kakaoid").val(),"kakaopass":$("#kakaopass").val()},
			success:function(data){
				if(data.msg=="ok")
					location.href="../";
				else{
					location.href="../";	
					}
			}
		})
	}

</script>

</head>


<body>
	<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54 all">
		<form class="login100-form validate-form" action="process" method="post" onsubmit="return checked()" >
			<input type="hidden" id="res" value="">
			<span class="login100-form-title p-b-49"> Login </span>
			<div class="wrap-input100 validate-input m-b-23"
				data-validate="Username is reauired">
				<span class="label-input100">Username</span> 
					<input class="input100"	type="text" id="mId" name="mId" placeholder="Type your username">
				<span class="focus-input100" data-symbol=""></span>
			</div>
			
			<div class="wrap-input100 validate-input"
				data-validate="Password is required">
				<span class="label-input100">Password</span> 
					<input class="input100" id="mPassword" type="password" name="mPassword" placeholder="Type your password">
				<span class="focus-input100" data-symbol=""></span>
			</div>
			<div id="error" style="color:red; font-family: Noto Sans KR; font-size: 0.9em;"></div>
			
			<div class="text-right p-t-8 p-b-31">
				<a href="/login/findidpage"> Forgot Id? </a><br>
				<a href="/login/findpasspage"> Forgot password? </a>
			</div>
			
			<div class="container-login100-form-btn">
				<div class="wrap-login100-form-btn">
					<div class="login100-form-bgbtn"></div>
					<button type="submit" class="login100-form-btn login" >Login</button>
				</div>
			</div>
			
			<div class="txt1 text-center p-t-54 p-b-20 url">
				<span> Or Sign Up Using </span><br><br>
				<a href="/member/joinform"
					class="txt2"> Sign Up </a>
			</div>

			<div class="flex-c-m url">

				<a href="#" class="login100-social-item bg1"> 
					<i class="fa fa-facebook"></i>
				</a> <a href="#" class="login100-social-item bg2"> 
					<i class="fa fa-twitter"></i>
				</a> <a href="#" class="login100-social-item bg3"> 
					<i class="fa fa-google"></i>
				</a>
			</div>

		</form>
		
		<form action="kakao">
			<input type="hidden" name="kakaoid" id="kakaoid">
			<input type="hidden" name="kakaopass" id="kakaopass">
		</form>
		
	<div style="text-align: center;">
		<ul>
			<li onclick="kakaoLogin();">
		      <a href="javascript:void(0)">
		          <img src="${root }/image/kakao_login_medium_wide.png">
		      </a>
			</li>
			
				<br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br>
		<br><br><br><br><br><br><br><br><br><br>
			<li onclick="kakaoLogout();">
		      <a href="javascript:void(0)">
		          <span>카카오 로그아웃</span>
		      </a>
			</li>
		</ul>
	</div>
	</div>
	
	

	

	<br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br>
		<br><br><br><br><br><br><br><br><br><br>	
		<br><br><br><br><br>

	

</body>

<!-- 카카오 스크립트 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
Kakao.init('fd2660146f474993fc012dbb6b9f7b06'); //발급받은 키 중 javascript키를 사용해준다.
console.log(Kakao.isInitialized()); // sdk초기화여부판단
//카카오로그인
function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
    	  console.log(JSON.stringify(response))
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
        	  let id = "kakao_" + response.id;
        	  let pass = "kakao_" + response.id;
              
        	  $("#kakaoid").val(id);
        	  $("#kakaopass").val(pass);

        	  kakao();
        	  
             },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
  }
//카카오로그아웃  
function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
        	console.log(response)
        	logout();
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
    }
  }  
</script>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, height=device-height, minimum-scale=1.0, maximum-scale=1.0, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
	<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100;300;400;500&display=swap" rel="stylesheet">
<style type="text/css">
           header{
                display:flex;
                justify-content: center;
            }
            form{
                padding:10px;
                font-family: 'Noto Sans KR';
            }
            .input-box{
                position:relative;
                margin:10px 0;
            }
            .input-box > input{
                background:transparent;
                border:none;
                border-bottom: solid 1px #ccc;
                padding:20px 0px 5px 0px;
                font-size:14pt;
                width:100%;
            }
            input::placeholder{
                color:transparent;
            }
            input:placeholder-shown + label{
                color:#aaa;
                font-size:14pt;
                top:15px;

            }
            input:focus + label, label{
                color:#8aa1a1;
                font-size:10pt;
                pointer-events: none;
                position: absolute;
                left:0px;
                top:0px;
                transition: all 0.2s ease ;
                -webkit-transition: all 0.2s ease;
                -moz-transition: all 0.2s ease;
                -o-transition: all 0.2s ease;
            }

            input:focus, input:not(:placeholder-shown){
                border-bottom: solid 1px #8aa1a1;
                outline:none;
            }
            input[type=submit]{
                background-color: #8aa1a1;
                border:none;
                color:white;
                border-radius: 5px;
                width:100%;
                height:35px;
                font-size: 14pt;
                margin-top:100px;
            }
            #forgot{
                text-align: right;
                font-size:12pt;
                color:rgb(164, 164, 164);
                margin:10px 0px;
            }
</style>

<script type="text/javascript">
	$(function(){
		$("#btn").click(function(){

			$.ajax({
				type:"post",
				datatype:"json",
				url:"findpass",
				data:{"mId":$("#mId").val(),"mName":$("#mName").val(),"mEmail":$("#mEmail").val()},
				success:function(data){
					if(data.mPassword==null){
						$("#res").html("회원정보와 일치하는 비밀번호가 없습니다");
					}else{
						$("#res").html($("#mId").val()+"님의 비밀번호는 "+data.mPassword+"입니다");										
					}
				}
			});
			
			
		});
	});
</script>

</head>

<body>

	<form style="width: 600px; margin-left: 37%; margin-top: 5%;">
		<h2 style="text-align: center;">비밀번호 찾기</h2>
	
		<div class="input-box">
			<input id="mId" type="text" name="mId" placeholder="이름">
			<label for="mId">아이디</label>
		</div>
		
		<div class="input-box">
			<input id="mName" type="text" name="mName" placeholder="이름">
			<label for="mName">이름</label>
		</div>
				
		<div class="input-box">
			<input id="mEmail" type="email" name="mEmail" placeholder="E-Mail">
			<label for="mEmail">E-Mail</label>
		</div>
		
		
		<button type="button" id="btn" style="background: black; color: white; border-radius: 5px;
		width: 600px; height: 40px; font-size: 1.2em;">확 인</button><br><br>
			
		<div id="res" style="border: 0px solid black; font-family: 'Noto Sans KR';"></div>
		</form>
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>
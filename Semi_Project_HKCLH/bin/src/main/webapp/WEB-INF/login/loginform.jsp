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
<style type="text/css">
	div.body {
		border: 0.5px solid gray;
	}
	
	.inputid,.inputpass {
		padding: 0 20px;
		cursor: pointer;
		margin-top: 5px;
	}
	
	input::placeholder {
		font-size: 0.7em;
	}
	
	span.bi {
		color: gray;
		position: relative;
		left: -215px;		
	}
	
	div.login {
		border: 1px solid green;
		color: white;
		background-color: green;
		text-align: center;
		border-radius: 2px;
		width: 200px;
		cursor: pointer;
	}
	
	b.whatid,b.whatpass {
		float: right;
		margin-right: 10px;
	}
	
	b {
		cursor: pointer;
	}

</style>

<script type="text/javascript">
	$(function(){
		$("b.join").click(function(){
			location.href="/member/joinform";			
		});
	});
</script>

</head>
<body>
	<form action="process" method="post" style="width: 500px;">
	<div class="title" style="text-align: center;">로그인</div>
	
	<div class="body">
		<input class="inputid" name="mId" type="text" placeholder="아이디"><span class="bi bi-person"></span><br>
		<input class="inputpass" name="mPassword" type="password" placeholder="비밀번호"><span class="bi bi-lock"></span><br>
		
		<input type="checkbox">로그인 상태 유지
		<button type="submit" class="login">로그인</button>
		
		
		<b class="join">회원가입</b><b class="whatpass">비밀번호 찾기</b><b class="whatid">아이디찾기</b>
	</div>
	
	
	</form>
</body>
</html>
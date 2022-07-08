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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100;300;400;500&display=swap" rel="stylesheet">
<style type="text/css">

	span.heart{
		cursor: pointer;
		font-size: 20px;
	}
	
	td.asave{
		text-align: center;
		font-size: 15px;
		font-weight: bold;
		cursor: pointer;
		background-color: #ebebeb;

	}
	
	#afrm{
		margin-top: 20px;
	}
	
	table.t{
	margin-left: 20px;
	}
	
	pre.m{
		background-color: white;
		border: none;
		font-size: 14px;
		font-family:'Gowun Dodum';
	}
	
	span.day{
		float: right;
		color: gray;
		font-size: 12px;
	}
	
	span.adel{
		margin-left: 10px;
		color: red;
		cursor: pointer;
	}
	
	.qnacontent{
	position: relative;
	left: 26%;
	}

</style>
</head>

<body>

	<!-- 글 내용 -->
	<br><br>
	<div class = "qnacontent" style="width: 800px; border: 0.5px solid #808080; border-radius: 15px;">
		<h2 style="background-color: black; color: #ffffff"><b>&nbsp;&nbsp;${dto.qtitle}</b></h2>
		<span class="glyphicon glyphicon-user"></span>&nbsp;<b>${dto.mid}</b>
		<span style="color: gray;">
			<fmt:formatDate value="${dto.qdate}" pattern="yyyy-MM-dd HH:mm"/>
		</span>&nbsp;
		<hr>
		<br><br>
		<c:if test="${dto.qimg!='no'}">
			<c:forTokens var="qimg" items="${dto.qimg}" delims="," varStatus="n">
				<a href="../save/${qimg}" target="_new" style="cursor: pointer;">
				<img src="../save/${qimg}"
				style="max-width: 300px;">
				<c:if test="${n.count%2==0}"><br><br></c:if>
			</c:forTokens>
		</c:if>
		<pre style="background-color: white; border: none; font-family:'Noto Sans KR'; 
		font-size: 1.5em; font-weight: 200;"><b>${dto.qcontent}</b></pre>
		<br><br>

		
		<!-- 댓글창 아래 작은 버튼들  -->
		<div class="buttons">
			<button type="button" class="btn btn-default"
			onclick="location.href='list?currentPage=${currentPage}'">목록</button>
			
			<button type="button" class="btn btn-default" 
			onclick="location.href='form?qnum=${dto.qnum}&reg=${dto.reg}&restep=${dto.restep}&relevel=${dto.relevel}&currentPage=${currentPage}'">답글</button>
			
			<c:if test="${sessionScope.loginok!=null}">
				<c:if test="${mId=='fragbit'}">
				<button type="button" class="btn btn-default" onclick="location.href='updateform?qnum=${dto.qnum}&currentPage=${currentPage}'">
				<span class="glyphicon glyphicon-edit"></span>
				수정</button>
				
				<button type="button" class="btn btn-default" id="delbtn" onclick="location.href='delete?qnum=${dto.qnum}&currentPage=${currentPage}'">
				<span class="glyphicon glyphicon-trash"></span>
				삭제</button>
				
				</c:if>
			</c:if>	
			</div>
	</div>
				<br><br>
				<!-- 삭제시 컨펌 -->
               <script type="text/javascript">
               $(document).ready(function() {
                  $("#delbtn").click(function(){
                     var choice = confirm("삭제 하시겠습니까?");
                     var del = "delete?qnum=${dto.qnum}&currentPage=${currentPage}";
                     if(choice){
                        location.assign(del);
                        alert("삭제되었습니다.");
                        
                     };
                  });
               });
               </script>
</body>
</html>
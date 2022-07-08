<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix= "fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="[https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css](https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css)">
<script src="https://code.jquery.com/jquery-3.5.0.js(https://code.jquery.com/jquery-3.5.0.js)"></script>
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Gowun+Dodum&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap"
rel="stylesheet">
<style type="text/css">
body {
font-family: 'Jua';
}
h3{
font-family: 'Gamja Flower';
color: #CC0066;
text-shadow: 3px 3px 3px pink;
}
</style>


</head>
<body>
<form action="insert" method="post" enctype="multipart/form-data">
<table class="table table-bordered notice" style="width: 800px;">
<caption><h3>공지 등록</h3></caption>
<tr>
<th width="120" bgcolor="#FFE3EE">제목</th>
<td colspan="3">
<input type="text" name="ntitle" class="form-control"
placeholder="공지 제목 입력" required="required" autofocus="autofocus">
</td>
</tr>

<!-- 5/23 nPhoto null값 + 오류 나는 부분 -->
<tr>
<th style="width: 100px; background-color:#FFE3EE">공지 이미지</th>
<td>
 <input type="file" name="file" class="form-control"
 multiple="multiple">
</td>
</tr>

<tr>
<td colspan="2">
<textarea style="width: 100%; height: 100px;" name="ncontent" id="ncontent"
class="form-control" required="required"></textarea>
</tr>
<tr>
<td colspan="4" align="center">
<button type="submit" class="btn btn-success"
style="width:140px;" onclick="submitContents(this)">공지 등록</button>
</td>
</tr>
</table>
<br><br>
</form>

</body>
</html>
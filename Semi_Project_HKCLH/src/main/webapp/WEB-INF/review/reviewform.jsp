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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100;300;400;500&display=swap" rel="stylesheet">
<style type="text/css">

* {
font-family: 'Noto Sans KR';
}

body {
  padding: 1rem;
  text-align: center;
}

.star-rating {
  display: flex;
  flex-direction: row-reverse;
  font-size: 2.25rem;
  line-height: 2.5rem;
  justify-content: space-around;
  padding: 0 0.2em;
  text-align: center;
  width: 5em;
}
 
.star-rating input {
  display: none;
}
 
.star-rating label {
  -webkit-text-fill-color: transparent; /* Will override color (regardless of order) */
  -webkit-text-stroke-width: 1px;
  -webkit-text-stroke-color: #2b2a29;
  cursor: pointer;
}
 
.star-rating :checked ~ label {
  -webkit-text-fill-color: gold;
}
 
.star-rating label:hover,
.star-rating label:hover ~ label {
  -webkit-text-fill-color: #fff58c;
}

#review_table{
position: relative;
left: 500px;

}


</style>

<c:set var="root" value="<%=request.getContextPath() %>"/> <!-- 프로젝트경로 -->
<script type="text/javascript" src="${root}/se2/js/HuskyEZCreator.js"
   charset="utf-8"></script>

<script type="text/javascript" src="${root}/se2/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js"
   charset="utf-8"></script> 
   
</head>
<body>
<form action="insert" method="post" enctype="multipart/form-data">
<br><br>
<label class="review_write" style="font-size: 40px;">Review</label>
<br><br>
<div id="review_table">
<table class="table table-borderless review" style="width: 800px;">
<tr>
<th width="120">구매상품</th>
<td colspan="3">
<input type="text" name="pnum" class="form-control"
 required="required" autofocus="autofocus">
</td>
</tr>


<tr>
<th width="120">구매자</th>
<td colspan="3">
<input type="text" name="mid" class="form-control"
 required="required" autofocus="autofocus" readonly="readonly" value="${mId}" ;>
</td>
</tr>

<tr>
<th style="width: 100px;">리뷰 이미지</th>
<td>
 <input type="file" name="upload" class="form-control"
 multiple="multiple">
</td>
</tr>

<tr> <!-- 별점 부분 -->
<th width="150">상품은 만족하셨나요?</th>
<td colspan="3">
<div class="star-rating space-x-4 mx-auto">
	<input type="radio" id="5-stars" name="rrate" value="5" v-model="ratings"/>
	<label for="5-stars" class="star pr-4">★</label>
	
	<input type="radio" id="4-stars" name="rrate" value="4" v-model="ratings"/>
	<label for="4-stars" class="star">★</label>
	
	<input type="radio" id="3-stars" name="rrate" value="3" v-model="ratings"/>
	<label for="3-stars" class="star">★</label>
	
	<input type="radio" id="2-stars" name="rrate" value="2" v-model="ratings"/>
	<label for="2-stars" class="star">★</label>
	
	<input type="radio" id="1-star" name="rrate" value="1" v-model="ratings" />
	<label for="1-star" class="star">★</label>
</div>
</td>
</tr>
<td colspan="2">리뷰 내용 작성</td>

<tr>
<td colspan="2">
<textarea style="width: 100%; height: 100px;" name="rcontent" id="rcontent"
class="form-control" required="required"></textarea>
</tr>
<br>
<tr>
<td colspan="4" align="center">
<button class="btn btn-primary btn-lg btn-block" type="submit" 
style="background-color: black; border-radius: 10px;" onclick="submitContents(this)">리뷰 등록</button>
</td>
</tr>
</table>
</div>
<br><br>
</form>


<!-- 스마트게시판에 대한 스크립트 코드 넣기 -->
<script type="text/javascript">
	var oEditors = [];
	
	nhn.husky.EZCreator.createInIFrame({
	
	    oAppRef: oEditors,
	
	    elPlaceHolder: "rcontent",
	
	    sSkinURI: "${root}/se2/SmartEditor2Skin.html",
	
	    fCreator: "createSEditor2"
	
	}); 
	
	//‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
	
	function submitContents(elClickedObj) {
	
	    // 에디터의 내용이 textarea에 적용된다.
	
	    oEditors.getById["rcontent"].exec("UPDATE_CONTENTS_FIELD", [ ]);
	
	 
	
	    // 에디터의 내용에 대한 값 검증은 이곳에서
	
	    // document.getElementById("textAreaContent").value를 이용해서 처리한다.
	    try {
	        elClickedObj.form.submit();
	    } catch(e) { 
	
	    }
	
	}
	
	// textArea에 이미지 첨부
	
	function pasteHTML(filepath){
	    var sHTML = '<img src="${root}/save/'+filepath+'">';
	    oEditors.getById["rcontent"].exec("PASTE_HTML", [sHTML]); 
	
	}
</script>

</body>
</html>
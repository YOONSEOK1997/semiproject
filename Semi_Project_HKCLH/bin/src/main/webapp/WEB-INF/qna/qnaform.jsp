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
<link
	href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Gowun+Dodum&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap"
	rel="stylesheet">
<style type="text/css">
	body {
	font-size: 2rem;
	font-family: 'Jua';
	}
</style>

<script type="text/javascript" src="/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>

<c:set var="root" value="<%=request.getContextPath() %>"/> <!-- 프로젝트경로 -->
<script type="text/javascript" src="${root}/se2/js/HuskyEZCreator.js"
   charset="utf-8"></script>

<script type="text/javascript" src="${root}/se2/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js"
   charset="utf-8"></script> 

</head>



<body>
	<form action="insert" method="post" enctype="multipart/form-data">
	
	
<table class="table table-bordered notice" style="width: 800px;">

<br><br><br><br>
<caption><h3>QnA 등록하기</h3></caption>
<tr>
<th width="120" bgcolor="#FFE3EE">말머리</th>
<td colspan="3">

	<select name = "qcate" id= "qcate">
		<option selected disabled hidden>문의 유형</option>
		<option value="상품">상품</option>
		<option value="배송">배송</option>
		<option value="반품/환불">반품/환불</option>
		<option value="교환/변경">교환/변경</option>
		<option value="기타">기타</option>
	</select>
</td>
</tr>

<script type="text/javascript">
function selectqcate(){
	var qcate = $("#qcate > option:selected").val();
	$("#qcate").val(qcate);
	
}


</script>



<tr>
<th style="width: 100px; background-color:#FFE3EE">제목</th>
<td>
 <input type="text" class="form-control" required="required" name="qtitle">
</td>
</tr>

<!-- 로그인해야 쓸수있음 -->
<tr>
<th style="width: 100px; background-color: gray;">작성자</th>
<td>
<input type="text" class="form-control" required="required" name="mid">
</td>
</tr>

	<th>문의 사진</th>
			<td>
				<input type="file" name="upload" id="currentDate" value="">
			</td>
			
	<tr>
	<th style="width: 100px; background-color:#FFE3EE">문의상태</th>
		<td>
		접수<input type="radio" name = "qstate" id = "qstate" value = "접수" checked>&nbsp;
		답변완료<input type="radio" name = "qstate" id = "qstate" value = "답변완료">
		</td>
	</tr>
<tr>
<td colspan="4">
         <textarea name="qcontent" id="qcontent" required="required" 
         style="width:100%; height: 300px; display:none;" ></textarea>
      </td>
</tr>


<tr>
<td colspan="4" align="center">
<button type="submit" class="btn btn-success"
style="width:140px;" onclick="submitContents(this)">등록</button>
</td>
</tr>
</table>
<br><br>
</form>
<!-- 스마트게시판에 대한 스크립트 코드 넣기 -->
<script type="text/javascript">
   var oEditors = [];
   
   nhn.husky.EZCreator.createInIFrame({
   
       oAppRef: oEditors,
   
       elPlaceHolder: "qcontent",
   
       sSkinURI: "${root}/se2/SmartEditor2Skin.html",
   
       fCreator: "createSEditor2"
   
   }); 
   
   //‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
   
   function submitContents(elClickedObj) {
   
       // 에디터의 내용이 textarea에 적용된다.
   
       oEditors.getById["qcontent"].exec("UPDATE_CONTENTS_FIELD", [ ]);
   
    
   
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
       oEditors.getById["qcontent"].exec("PASTE_HTML", [sHTML]); 
   
   }
</script>

</body>
</html>
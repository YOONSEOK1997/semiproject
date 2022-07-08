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
	
	table.boardform{
		font-family: 'Noto Sans KR';
		font-size: 1.3em;
	}
	
	.qna_form{
	position: relative;
	left: 480px;
	}
	
	#update_qna{
	font-family: 'Noto Sans KR';
	font-size: 35px;
	position: relative;
	left: 280px;
	}
	
	body{
	
	font-family: 'Noto Sans KR';
	}

	
</style>

<c:set var="root" value="<%=request.getContextPath() %>"/> <!-- 프로젝트경로 -->
<script type="text/javascript" src="${root}/se2/js/HuskyEZCreator.js"
   charset="utf-8"></script>

<script type="text/javascript" src="${root}/se2/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js"
   charset="utf-8"></script> 
   
</head>
<body>
<c:if test="${sessionScope.loginok==null}">
	<script type="text/javascript">
		alert("다시 로그인 후 글수정을 시도해 주세요");
		location.href='../login/loginform'
	</script>
</c:if>
	<form action="update" method="post" enctype="multipart/form-data">
	<!-- hidden 5개 -->
	<input type="hidden" name="currentPage" value="${currentPage}">
	<input type="hidden" name="qnum" value="${dto.qnum}">


	<div class="qna_form">	
<table class="table table-borderless qna" style="width: 800px;">

<h2 id="update_qna"><b>QnA 수정</b></h2>
<br><br>
<tr>
<th width="120">말머리</th>
<td colspan="3">

	<select name = "qcate" id= "qcate" value = "${dto.qcate}">
		<option selected disabled hidden>문의 유형</option>
		<option value="상품">상품</option>
		<option value="배송">배송</option>
		<option value="반품/환불">반품/환불</option>
		<option value="교환/변경">교환/변경</option>
		<option value="기타">기타</option>
	</select>
</td>
</tr>

</script>

<tr>
<th style="width: 100px;">제목</th>
<td>
 <input type="text" class="form-control" name="qtitle" required="required" value="${dto.qtitle}"> 
</td>
</tr>

<!-- 로그인해야 쓸수있음 -->
<tr>
<th style="width: 100px;">작성자</th>
<td>
<input type="text" class="form-control" name="mid" required="required" value="${dto.mid}" readonly="readonly">
</td>
</tr>

	<th>문의 사진</th>
			<td>
				<input type="file" name="upload" id="qimg" value="">
			</td>
			
	<tr>
	<th style="width: 100px;">문의상태</th>
		<td>
		접수<input type="radio" name = "qstate" id = "qstate" value = "접수">&nbsp;
		답변완료<input type="radio" name = "qstate" id = "qstate" value = "답변완료">
	
		</td>
	</tr>
<tr>

<script type = "text/javascript">
	$(document).ready(function(){
	
		var tmp_value = $('input:radio[name=qstate]:checked').val();
		console.log(tmp_value);
	})
	
</script>



<td colspan="4">
         <textarea name="qcontent" id="qcontent" required="required"
         style="width:100%; height: 300px; display:none;" >${dto.qcontent}</textarea>
      </td>
</tr>

	<tr>
			<td colspan="2" align="center">
					<button type="submit" class="btn btn-default"
					style="width: 100px; background-color:black; color:white;">글수정</button>
					
					<button type="button" class="btn btn-default"
					style="width: 100px; background-color:black; color:white;" onclick="history.back()">이전</button>
			</td>
	</tr>
	</table>
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
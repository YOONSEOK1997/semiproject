<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 

<%@ taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix= "fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="../save/fragbit.ico">
<link rel="short cut icon" href="../save/fragbit.ico">
<meta charset="UTF-8">
<title>상품등록form</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>   
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<style type="text/css">
	*{
		font-family: 'Noto Sans KR', sans-serif;
	}
	
	
	.insertbtn {
        display:block;
        width:200px; 
        height:40px;  
        border:1.5px black solid;;
        font-size:15px;
        background-color:white;  
        text-align:center; 
        cursor: pointer;  

        color:#333; 
        transition:all 0.9s, color 0.3;  
    }
    
.insertbtn:hover{color:#fff; background-color: black;}

.ct{
	margin: 0 auto;
	width:50%;
}
</style>


<c:set var="root" value="<%=request.getContextPath() %>"/> <!-- 프로젝트경로 -->
<script type="text/javascript" src="${root}/se2/js/HuskyEZCreator.js"
   charset="utf-8"></script>

<script type="text/javascript" src="${root}/se2/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js"
   charset="utf-8"></script> 
   
</head>
<body>
<script type="text/javascript">
//넘어오는 변수값에 따라 액션페이지 지정
function change_bt(act){
	if (act='myset')
	{
	document.insert.action="/myset";
	}else if(act='goods'){
		document.insert.action="goods";
		else{
			document.insert.action="list";
		}
	}
}
</script>
<div class="ct">
<form name="insert" action="insert" method="post" enctype="multipart/form-data" class="productform">
<!-- hidden 5개 -->

	<table class="table table-borderless product" style="width: 916px;">
		<h2>상품 등록</h2><br><br>
		<tr>
			<th width="120" bgcolor="">상품명</th>
			<td colspan="3">
				<input type="text" name="pname" placeholder="상품명" required="required">
			</td>
		</tr>
		
		<tr>
			<th width="120" bgcolor="">메뉴</th>
			<td colspan="3">
				<select name="pcate1" id="pcate1" onchange="change_bt(this.value);">
				    <option value="" selected="selected" disabled="disabled">메뉴1선택</option>
				    <option value="MySet">MySet</option>
				    <option value="fragrance">fragrance</option>
				    <option value="Goods">Goods</option>
				</select>
				
				<!-- c:if조건 menu1선택시에만 노출 -->
				<select name="pcate2" id="pcate2">
					 <option value="" selected="selected" disabled="disabled">메뉴2선택</option>    
					 
					 <option value="no">no</option>
					 <option value="spring">spring</option>
					 <option value="summer">summer</option>
					 <option value="autumn">autumn</option>
					 <option value="winter">winter</option>
				</select>	
				
			</td>
		</tr>
		<!-- 옵션은 detail에서만 선택가능..? -->
				
		<tr>
			<th>태그</th>
			<td>
				<input type="text" name="ptag" required="required" placeholder="가격">
			</td>
		</tr>
		<tr>
			<th>입고일</th>
			<td>
				<input type="date" name="pdate" >
			</td>
		</tr>
		
		<tr>
			<th>대표사진</th>
			<td>
				<input type="file" name="upload" id="pphoto" value="">
			</td>
		</tr>
		<tr>
			<th>대표사진2</th>
			<td>
				<input type="file" name="upload2" id="pphoto2" value="">
			</td>
		</tr>
		<tr ><th colspan="2">상품상세</th></tr>
		<tr>
			<td colspan="2">
				<textarea name="pcontent" id= "pcontent" required="required"
				style="width: 100%; height: 300px; display: none;"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center" style="height: 100px; margin-top: 30px;"  >
				<button type="submit" class="insertbtn" 
				onclick="submitContents(this)">상품등록</button>
			</td>
		</tr>
	</table>
	<br><br>
</form>
</div>
<!-- 스마트게시판에 대한 스크립트 코드 넣기 -->
<script type="text/javascript">
	var oEditors = [];
	
	nhn.husky.EZCreator.createInIFrame({
	
	    oAppRef: oEditors,
	
	    elPlaceHolder: "pcontent",
	
	    sSkinURI: "${root}/se2/SmartEditor2Skin.html",
	
	    fCreator: "createSEditor2"
	
	}); 
	
	//‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
	
	function submitContents(elClickedObj) {
	
	    // 에디터의 내용이 textarea에 적용된다.
	
	    oEditors.getById["pcontent"].exec("UPDATE_CONTENTS_FIELD", [ ]);
	
	 
	
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
	    oEditors.getById["pcontent"].exec("PASTE_HTML", [sHTML]); 
	
	}
</script>
</body>
</html>
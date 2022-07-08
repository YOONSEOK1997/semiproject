<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 

<%@ taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix= "fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>   
<link href="https://fonts.googleapis.com/css2?family=GamjaFlower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<style type="text/css">
 /	html, body{
        margin:0;
        padding:0;    
    }
    

	.product-header{
	width: 100%;
	height:172px;
	background-color:#fff;
	}
	.product-title{
	color: #000;
	font-size: 34px;
	lne-weight: 1em;
	font-weight:bold;
	position: absolute;
	right: 43%;
	top: 25%;
	}
	#div1{
	position:absolute;
	top:300px;
	}
	#div2{
	position:absolute;
	top:900px;
	}
	#div3{
	position:absolute;
	top:1400px;
	}
	#div4{
	position:absolute;
	top:1900px;
	}
	#div5{
	position:absolute;
	top:2700px;
	}

 product_img{
width: 306px; height: 379px;
} 

.product_list {margin-left: 120px; list-style: none;}
.product_list li {float:left; margin:0 20px 50px 0; position:relative; width:374px; height:501px; border: 0px solid #d9d9d9;}
.product_list li:hover{border-color: skyblue;}
.product_list dl{padding:374px 0 0 0 ;}
.product_list dt{padding: 14px 15px 14px; border-top: 0px solid #f0f0f0; text-align: center;}
.product_list dt a { font-size: 19px; color: #1a1a1a; font-weight: bold; text-decoration: none; position:relative; left:0px;}
.product_list .product_img { position: absolute; left:35px; top:0; width:306px; height:379px;}
.product_list .tags {padding: 0 0 0 0px; font-size: 16px; color:black; opacity: 0.7;  position: absolute; left: 100px; bottom: 45px;}
.product_list .btm {position: absolute; right: 3px; bottom:0; width: 99%; border-top: 0px solid #f0f0f0; background: white;}
.product_list .btm div { float:left; width: 40%; height: 30px; line-height: 30px; text-align: center; font-size: 12px; color:#767676;}
.product_list .btm div a {font-size:12px; color:#767676;}
.product_list div.info{ position: relative; left: 90px; width: 190px; font-size: 14px;}


div.features{
	border-bottom: 0.5px solid silver;
}
a.scroll_move{
padding: 50px;
font-size: 2.4rem;
font-family:'Noto Sans KR';
color:black;
text-decoration: none;
position:relative;
left: 420px;
}
 a.scroll_move:hover{
text-decoration:none;
} 
#spring:hover{
color:gold;

}
#summer:hover{
color:blue;
}
#fall:hover{
color: brown;
}
#winter:hover{
color: silver;
}
#add-button {
    margin-top: 18px;
    position: relative;
    bottom: 20px;
    cursor: pointer;
    width: 40px;
    height: 40px;
    border: 1px solid #b9b9b9;
    border-radius: 50%;
}
.selected-image {
    margin-top: 18px;
    position: relative;
    float: left;
    padding: 50px;
    margin-left: 100px;
    bottom: 20px;
    cursor: pointer;
    width: 90px;
    height: 90px;
    border: 1px solid #b9b9b9;
    border-radius: 50%;
}
div.weather a {
position:relative;
left: 600px;
}
div.product-title b{
position:relative;
right: 30px;

}
 
</style>


</head>
<body>

   <div class="product-header">
   <div class="product-title">
   	<b>FRAGRANCE</b>
   </div>
   </div>
   <br> <br> <br> <br> <br> <br>
   <!-- 이미지가 생성될 영역 -->
 <!-- <img src="" width="300" id="img"> <button id="load_img">이미지 생성</button> -->
 
 						
	<div class="features">
	<div class="weather">
		<a class="scroll_move" href="#div1" id="spring">봄</a>
		<a class="scroll_move" href="#div2" id="summer">여름</a>
		<a class="scroll_move" href="#div3" id="fall">가을</a>
		<a class="scroll_move" href="#div4" id="winter">겨울</a> <br><br>
	</div>
  
	</div>
		
		
		
	</div>
	<br><br><br><br><br>
<div class="content-box">
<c:forEach var="dto" items="${list}">
<ul class="product_list">

    <li>
      <dl>
        <dt><a href="detail?pnum=${dto.pnum}#"> ${dto.pname}</a></dt>
        <dd class="product_img" id="img"><a href="detail?pnum=${dto.pnum}"><img src="../save/${dto.pphoto}" alt="이미지" style="width:300px; height: 378px;"></a></dd>
        <dd class="tags">${dto.ptag} </dd>
        <dd class="btm">
          <div class="info"> 40ml / 80ml / 45,000 / 90,000<%-- <fmt:formatNumber value="${dto.pprice}" type="number" maxFractionDigits="3"/>원   ${dto.prate}--%></div>
        </dd>
        </dl>
    
        </li>

       
  </ul>
    
                        </c:forEach>
</div>
 <script>
  	// id가 img인 요소 접근
 	const img = document.getElementById("img");
 	
 	/* load_img인 요소 변수 생성 */
 	const load_btn = document.getElementById("load_img");
 	//load_btn 클릭시 이벤트 처리
 	load_btn.addEventListener('click', (e) =>{
 		//img의 src 값에 사진의 경로를 설정
 	img.setAttribute('src','../save/${dto.pphoto}')
 	}); 
 </script> 
<button type="button" class="btn btn-default go-top" id="go-top"
style="position: fixed; right: 40px; bottom:120px;"><span class="glyphicon glyphicon-chevron-up"></span></button> 

  <script type="text/javascript">

/* 클릭시 스크롤 이동 */
$(document).ready(function($) {
    $(".scroll_move").click(function(event){
            event.preventDefault();
            $('html,body').animate({scrollTop:$(this.hash).offset().top}, 600);
    });
    
/* scroll top button */
	// 1. 특정 위치에서 부터 버튼 나타고, 사라지게(fade)
    $(window).scroll(function () {
		if ($(this).scrollTop() > 600) {
			$('.go-top').fadeIn(100);
		} else {
			$('.go-top').fadeOut(100);
		}
	});

	// 2. 버튼 클릭하면 원하는 위치로 이동
	$('.go-top').click(function (event) {
		event.preventDefault();
		$('html, body').animate({ scrollTop: 0 }, 300);
	});
	
});
</script>

		<div id="div1"></div>
		<div id="div2"></div>
		<div id="div3"></div>
		<div id="div4"></div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<!-- 등록 (관리자만) -->   
<c:if test="${mId=='fragbit'}">
 <button type="button" class="btn btn-warning" id="formbtn" onclick="location.href='form'">상품등록</button> 
</c:if>
<br><br><br><br>	
	

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
    
    <link rel="stylesheet" type="text/css" href="../resources/css/reviewWrite.css">
	<link rel="stylesheet" href="../resources/css/header.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/footer.css" type="text/css">
    
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="../resources/js/header.js"></script>
</head>
<body>
	<%@ include file="../Header&Footer/header.jsp" %>
	<div class="wrap">
		<div class="container">
			<h1 class="titleW">리뷰 수정</h1>
			<form action="/osulloc/page/reviewModify" method="post" role="form">
				<input type="hidden" name="prodnum" value="${productse.prodnum}">
				<input type="hidden" name="writer" value="${login.id}">
				<input type="hidden" name="pno" value="${pno}">
				<div>
				    <div>
				        <input type="text" name="title" class="title" placeholder="제목을 입력해 주세요" value="${productreview[0].title}">
				    </div>
				    <div>
				    	<textarea rows="30" cols="20" name="content"  class="content" placeholder="내용을 입력하세요">${productreview[0].content}</textarea>
				    </div>
		       	</div>
		       	<div class = "writeBtn">
			    	<button class="write" type="submit">수정하기</button>
			    	<button class="list">
			    		<a href="/osulloc/page/detailProduct?prodnum=${productse.prodnum}">목록으로</a>
			    	</button>
			    </div><!-- .writeBtn -->
			</form>
		</div><!-- .container -->
	</div>	<!-- .wrap -->
	
	<%@ include file="../Header&Footer/footer.jsp" %>
</body>
</html>
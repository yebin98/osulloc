<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>상품 등록 페이지 </title>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../resources/js/productAjax.js"></script>
<meta charset="UTF-8">
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
    
    
	<link href="../resources/css/product.css" rel="stylesheet" type="text/css">
	<link href="../resources/css/header.css" rel="stylesheet" type="text/css">
	<link href="../resources/css/footer.css" rel="stylesheet" type="text/css">
	
	<script src="../resources/js/header.js"></script>

</head>
<body>

<%@ include file="../Header&Footer/header.jsp" %>
<div class="wrap">
	<div>&nbsp;</div>
		<div id =titile> 
			<h3>쇼핑몰 상품 등록</h3>
		</div><!--#title -->
		
	    <div class="uploadDiv">
	   		<form action="/osulloc/page/product" method="post" id="productForm">
	    		<table border="1" id="table">
					<input type="hidden" id="pcode" name="pcode" size="6">
					<tr><td>상품이름</td><td><input type="text" name="name" size="20"></td></tr>
					<tr><td>상품사진</td><td> <input type="file" name="uploadFile" > </td></tr>
					<tr>
						<td>종류</td>
						<td>
							<select name="kind">
				                <option value="">종류</option>
				                <option value="명차">명차</option>
				                <option value="녹차">녹차</option>
				                <option value="홍차">홍차</option>
				                <option value="발효차">발효차</option>
				                <option value="건강차">건강차</option>
				                <option value="꽃/과일차">꽃/과일차</option>
				                <option value="뷰티">뷰티</option>
				            </select> 
						</td>
					</tr>
					<tr>
						<td>향</td>
						<td> 
							<select name="scent">
				                <option value="">향</option>
				                <option value="달달한향">달달한향</option>
				                <option value="상큼한향">상큼한향</option>
				                <option value="고소한향">고소한향</option>
				                <option value="꽃향">꽃향</option>
				                <option value="과일향">과일향</option>
				            </select>
						</td>
					</tr>
					
					<tr>
						<td>상품타입</td>
						<td> 
							<select name="type">
				                <option value="">상품타입</option>
				                <option value="단품">단품</option>
				                <option value="세트">세트</option>
				            </select>
						</td>
					</tr>
					
					<tr>
						<td>색깔</td>
						<td>
							<select name="color">
				                <option value="">색깔</option>
				                <option value="red">red</option>
				                <option value="orange">orange</option>
				                <option value="yellow">yellow</option>
				                <option value="green">green</option>
				                <option value="blue">blue</option>
				                <option value="purple">purple</option>
				                <option value="black">black</option>
				            </select>
						</td>
					</tr>
					<tr><td>가격</td><td> <input type="text" name="price" > </td></tr>
					<tr><td>할인가</td><td> <input type="text" name="sale" > </td></tr>
					<tr><td>설명</td><td><textarea rows="5" cols="30" name="petc"></textarea></td></tr>
					<tr><td colspan=2 align="center">
		    		<input id="uploadBtn" type="button" value="등록">&emsp;
				</table><!-- 테이블 끝  -->
			</form>
	    </div> <!-- .uploadDiv -->
	        
 	</div><!-- .wrap -->
	<%@ include file="../Header&Footer/footer.jsp" %>  
</body>
</html>






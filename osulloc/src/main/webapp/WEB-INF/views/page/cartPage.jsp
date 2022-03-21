<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
<title>Insert title here</title>

    <!-- CDN 호스트 사용 -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="../resources/js/cartpage.js"></script>
    <script src="../resources/js/header.js"></script>
        
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
    

    <link href="../resources/css/cartpage.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="../resources/css/header.css" type="text/css">
    <link rel="stylesheet" href="../resources/css/footer.css" type="text/css">
    
</head>
<body>
	<%@ include file="../Header&Footer/header.jsp" %>

<div class="wrap">


        <div id="container">

            <h2>장바구니</h2>

            <div class="cart">

                <div class="cal">
                    
                    <div class="cInfo">

                        <p>상품 총 금액 (할인가 포함) =</p><input type="text" id="total" value="0" style="width : 70px"><br>
                        
                        <p>
                        	<input type="checkbox" id="shoppingBag" value = "0" >
                        	부가 쇼핑백 = 1000
                        </p><br>
                        
                        <p>
                        	<input type="checkbox" id="other1" value = "0" name="other1"> 포장비 = 1000
                        </p><br>
                        
                        <p>
                        	<input type="hidden" id="other2" value = "1000"  style="width : 60px" >
                        	배송비 =1000
                        </p><br>

						<p>장바구니 금액 = </p><input type="text" id="cartPrice" value="0" style="width : 70px">
						
                    </div>

                    <div class="btns">
                        <a href="#"><button>회원 구매</button></a>
                        <a href="#"><button>비회원 구매</button></a>
                    </div>

                </div>

                <div class="commodity">
                    <ul>
                    	<c:forEach items="${product3}" var="product3">
	                        <li>
	                            <p class="cart-num"><input type="hidden" class="cart-num2" value="${product3.number}">${product3.number}</p>
	                            <a href="#" class="pic2"><img src="/osulloc/display?fileName=${product3.filename}" alt=""></a>
	                            <p class="cm cmName">${product3.name}</p>
	                            <p class="cm"><input type="text" class="cmPrice" value="${product3.sale}" style="width : 70px"><span>원</span></p>
	                        </li>
						</c:forEach>
                    </ul>
                </div>
                
            </div>
        </div><!--#container-->

    </div><!--.wrap-->
    
    <%@ include file="../Header&Footer/footer.jsp" %>
</body>
</html>



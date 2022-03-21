<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<div class="wrap">
		<div class="header">
            <div class="headerIn">
            	<div class="headerTop">
	                <div class="logo"><a href="/osulloc/page/mainpage">로고1</a></div><!--.logo-->
	                <div class="member" method="POST">
			        	<ul>       	               
							<div class="welcome">
			               		<c:if test="${login != null }">
									<p>${login.id}님 환영 합니다.</p>
									<li><a id="logout" onclick="location.href='/osulloc/member/logout'" >로그아웃</a></li>
								</c:if>
								<c:if test="${login == null}"><li><a href="/osulloc/member/login">로그인</a></li></c:if>
							</div>
			
			               <li><a href="/osulloc/page/cartPage">장바구니</a></li>
			               
			               
			               	<!-- 특정 아이디(관리자)에만 생기도록 한다. -->
			               	<c:if test="${login.id == 'osulloc' }">
			               <li><a href="/osulloc/page/product">상품등록</a></li>
			               </c:if>
			           	</ul>
			       </div><!--.member-->
	
	                <div class="search">
	                    <input type="text"  >
	                    <a href="">검색창</a>
	                </div><!--.search-->
                </div><!-- headerTop -->
                <div class="gnb">
	               	<div class="gnb-in">
	               		<ul>
	                        <li>
	                        	<a href="#">오설록</a>
	                        	<div class="menus">
				                    <ul>
				                        <li>오설록소개</li>
				                        <li>오설록연역</li>
				                        <li>매장안내</li>
				                        <li><a href="/osulloc/page/noticeBoard">공지사항</a></li>
				                        <li>FAQ</li>
				                        <li>후기</li>
				                    </ul>
		                		</div>
	                        </li>
	                        <li>
	                        	<a href="#">차</a>
	                        	<div class="menus">
				                    <ul>
				                        <li>녹차</li>
				                        <li>홍차</li>
				                        <li>발효차</li>
				                        <li>허브티</li>
				                        <li>과일차</li>
				                        <li>다이어트</li>
				                        <li>프리미엄</li>
				                    </ul>
				                </div>
	                        </li>
	                        <li>
	                        	<a href="#">차용품</a>
	                        	<div class="menus">
				                    <ul>
				                        <li>찻잔</li>
				                        <li>티주전자</li>
				                        <li>소도구</li>
				                        <li>접시</li>
				                        <li>브랜드</li>
				                    </ul>
				                </div>
	                        </li>
	                        <li>
	                        	<a href="#">다과</a>
	                        	<div class="menus">
				                    <ul>
				                        <li>빵</li>
				                        <li>초콜릿/잼</li>
				                    </ul>
				                </div>
	                        </li>
	                        <li>
	                        	<a href="#">테마샵</a>
	                        	<div class="menus">
				                    <ul>
				                        <li>선물세트</li>
				                    </ul>
				                </div>
	                        </li>
	                        <li>
	                        	<a href="/osulloc/page/subpage">그 외 이야기</a>
	                        	<div class="menus">
				                    <ul>
				                        <li><a href="/osulloc/page/subpage">매거진</a></li>
				                    </ul>
				                </div>
	                        </li>
	                    </ul>
	                  
	               	</div><!-- .gnb-in -->
               </div><!--.gnb-->
            </div><!--.headerIn-->
              <div class="gnbBg"></div>
        </div><!--.header-->
        
        <!-- <div class="headerBottom">
                	 <div class="menus">
	
		            </div>
              </div>headerBottom -->
	</div><!-- .wrap -->

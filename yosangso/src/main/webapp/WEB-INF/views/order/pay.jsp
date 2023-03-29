<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/order/pay.css">
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    <title>index</title>
</head>
<body>
    <!-- 헤더, 컨텐츠 -->
    <main>
        
        <!-- 헤더 -->
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>
        
        
		<form action="/kakaoPay" method="post">

        <section id="content">

            <section id="content-left">
                <section>
                    <div class="title-main">장바구니 > <span class="title">주문 / 결제</span> > 완료</div>
                    <div class="product-info">
                        <div class="product-info-title">
                            <div>상품정보</div>
                            <div>금액</div>
                            <div>수량</div>
                            <div>합계</div>
                        </div>





                        <div id="product">
                        
	                        <c:choose>
	                        	<!-- 상품정보 가져오기 -->
	                        	<c:when test="${!empty productList}">
	                        	<!-- forEach로 출력 -->
	                        		<c:forEach var="pList" items="${productList}">
		                        		<div class="product-box">
			                                <div><img src="${pList.img}" alt="상품이미지"></div>
			                                <div>${pList.productTitle} 상품 설명</div>
			                                <div>${pList.amount}10,000원</div>
			                                <div>${pList.count}2개</div>
			                                <div>${pList.amount*2} 20,000원</div>
		                           		</div>
	                        		</c:forEach>
	                        	</c:when>
	                        	
	                        	<c:otherwise>
	                        		<h1 class="product-box-empty">장바구니가 비어있습니다.</h1>
	                        	</c:otherwise>
	                        </c:choose>
	                        
                          
                        </div>

                    </div>
                </section>

                <section>
                    <div class="title-main">배송지 정보</div>
                    <div class="address">
                        <div>
                            <span>이름</span>
                            <input type="text" placeholder=" 이름">
                        </div>
                        <div>
                            <span>연락처</span>
                            <input type="tel" placeholder=" 연락처">
                        </div>
                        <div>            
                            <span>배송지</span><input type="text" id="sample6_postcode" placeholder=" 우편번호" size="12">
                            <button onclick="sample6_execDaumPostcode()" id="zip">우편번호 찾기</button>
                        </div>
                        <div>
                            <span></span><input type="text" id="sample6_address" placeholder=" 주소" size="65"><br>
                        </div>
                        <div>
                            <span></span><input type="text" id="sample6_detailAddress" placeholder=" 상세주소" size="45">
                            <input type="text" id="sample6_extraAddress" placeholder=" 참고항목" size="30" class="address-sub">
                        </div>
                        <div id="request-box">
                            <span>요청사항</span>
                            <textarea name="" id="request" cols="79" rows="4" style="resize: none;" maxlength="150" placeholder=" 요청사항을 150자 이내로 작성해주세요."></textarea>
                            <span id="request-box-number"><span class="counter">0</span>/150</span>
                        </div>
                    </div>


                </section>
            </section>

            <section id="content-right">
                <div class="title-main">결제 상세</div>

                <div id="pay-detail">
                    <div class="pay-detail-box1">
                        <div class="border">
                            <div>상품금액</div>
                            <div>10,000원</div>
                        </div>
                        <div class="border">
                            <div>오픈 할인</div>
                            <div>- 1,000원</div>
                        </div>
                        <div class="border">
                            <div>배송비</div>
                            <div>+ 3,000원</div>
                        </div>
                        <div class="border">
                            <div>최종 결제 금액</div>
                            <div>10,000원</div>
                        </div>
                    </div>
                </div>
                
                <div id="payment-method">
                    
                    <div>
                        결제수단 <input type="radio" id="kakao"><label for="kakao">카카오페이</label> <img src="../assets/payment_icon_yellow_small.png" alt="카카오페이" height="14px">
                    </div>
                    <div>
                        <span>품절시 환불 안내</span>
                        <pre>
결제하신 수단으로 취소됩니다.

· 입점업체 배송은 낮은 확률로 상품이 품절일 가능성이 있습니다. 이에 품절 시 빠르게 환불 처리해드립니다.
· 현금 환불의 경우, 예금정보가 일치해야 환불 처리가 가능합니다. 
    은행명, 계좌번호, 예금주명을 정확히 기재 부탁드립니다.
· 환불 받으신 날짜 기준으로 3~5일(주말 제외) 후 결제대행사에서 직접 고객님의 계좌로 환불 처리됩니다.</pre>
                    </div>
                    <div>
                        <span>주문자 동의</span>
                        <pre>
회원 본인은 구매 조건, 주문 내용 확인 및 결제에 동의합니다
개인정보 수집 및 이용 동의 <a href="">자세히</a>
개인정보 제 3자 제공 동의 <a href="">자세히</a>
전자결제대행 이용 동의 <a href="">자세히</a></pre>
                    </div>
                </div>
                <div class="btn-box">
                    <button id="pay-btn">결제하기</button>
                </div>
            </section>

        </section>


        <!-- 추천 상품 -->
        <section class="recomend">
            <section>
                    <div class="controls">

                        <button class="prev fa-solid fa-chevron-left"></button>

                        <div class="slide_wrapper">
                            <ul class="slides">
                                <li>slide 01</li>
                                <li>slide 02</li>
                                <li>slide 03</li>
                                <li>slide 04</li>
                                <li>slide 05</li>
                            </ul>
                        </div>

                        <button class="next fa-solid fa-chevron-right"></button>

                    </div>
            </section>
        </section>

    </form>
		
        

    <!-- 헤더, 컨텐츠 끝 -->
    </main>


    <!-- 푸터 -->
  	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

	<!-- 우편번호 검색 -->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    
	<!-- jQuery 라이브러리 추가 -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
   
    <!-- pay.js 연결 -->
    <script src="${contextPath}/resources/js/order/pay.js"></script>
    <!-- main.js 연결 -->
    <script src="${contextPath}/resources/js/main.js"></script>
</body>
</html>
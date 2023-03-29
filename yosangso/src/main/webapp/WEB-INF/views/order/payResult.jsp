<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    <title>index</title>
</head>
<body>
    <!-- 헤더, 컨텐츠 -->
    <main>
        
        <!-- 헤더 -->
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>
        
       
        <section class="content-entire">
            <section class="content">
                <section class="content-top">
                    <div class="title">장바구니 > 주문/결제 > <p id="title1"> 결제 완료</p></div>
                </section>
                <section class="content-mid">
                    <div>주문을 처리중입니다.</div>
                    <div>제품을 발송하게 되면 이메일을 보내드립니다.</div>
                    <div>주문번호 : 12312422345</div>
                    <div>주문날짜 : 2023 / 03 / 20</div>
                </section>
                <section>
                    <section class="content-bottom">
                        <!-- 왼쪽 -->
                        <div>
                            <div><img src="" alt="" class="fa-solid fa-box"></div>
                            <div>택배배송</div>
                        </div>
    
                        <!-- 오른쪽 -->
                        <div>
                            <div class="box-title">제품이 준비되면 문자를 보내드립니다.</div>
                            
                                
                                <div class="box-container">
    
                                    <div class="box">
                                        <div>제품 이미지</div>
                                        <div>
                                            <div class="box-stock-name">Nature's Way (네이처스 웨이), Alive! <br>
                                                Once Daily, 여성용 고기능성 종합비타민</div>
                                            <div>배송 시작 날짜 : 토요일 1월 28일, 2023</div>
                                            <div class="price">10,000 원</div>
                                        </div>
                                    </div>
                                    
    
                                    <div class="box">
                                        <div>제품 이미지</div>
                                        <div>
                                            <div class="box-stock-name">Nature's Way (네이처스 웨이), Alive! Once Daily, 
                                                여성용 고기능성 종합비타민</div>
                                            <div>배송 시작 날짜 : 토요일 1월 28일, 2023</div>
                                            <div class="price">10,000 원</div>
                                        </div>
                                    </div>
                                    
    
                                    <div class="box">
                                        <div>제품 이미지</div>
                                        <div>
                                            <div class="box-stock-name">Nature's Way (네이처스 웨이), Alive! Once Daily, 
                                                여성용 고기능성 종합비타민</div>
                                            <div>배송 시작 날짜 : 토요일 1월 28일, 2023</div>
                                            <div class="price">10,000 원</div>
                                        </div>
                                    </div>
    
                                    <div class="box">
                                        <div>제품 이미지</div>
                                        <div>
                                            <div class="box-stock-name">Nature's Way (네이처스 웨이), Alive! Once Daily, 
                                                여성용 고기능성 종합비타민</div>
                                            <div>배송 시작 날짜 : 토요일 1월 28일, 2023</div>
                                            <div class="price">10,000 원</div>
                                        </div>
                                    </div>
                                
                                </div>
    
                        </div>
                    </section>
                </section>
            </section>
        </section>
    

    <!-- 헤더, 컨텐츠 끝 -->
    </main>


    <!-- 푸터 -->
  	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

	<!-- jQuery 라이브러리 추가 -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
   
    <!-- main.js 연결 -->
    <script src="${contextPath}/resources/js/main.js"></script>
</body>
</html>
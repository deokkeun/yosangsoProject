<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/productDetail.css">
    
    <script src="/slick-1.8.1/slick-1.8.1/slick/slick.js"></script>
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    <title>index</title>
</head>
<body>
    <!-- 헤더, 컨텐츠 -->
    <main>
        
        <!-- 헤더 -->
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>
        
        <section class="mainsec"> 
            <div class="all">
            <div>   
                <!--productdetails-->
                <!--제품 상세 컨테이너-->
                <div class="productdetails-container">
                    <!--제품 이미지-->
                    <div class="product-img">
                        <img src="${contextPath}/resources/image/product/codeage-남성용-종합비타민.jpg">
                    </div>
                    <!--제품이름, 가격, 수량, 구매가격, 구매및 장바구니-->
                    <form action="purcahse" method="POST" name="purcahse">
                    <div class ="productover">
                        <!--제품이름-->
                        <div class="productNm">
                            <h3>${productList.productNm }</h3>
                        </div>
                        <!--가격-->
                        <div class="productPr">
                            <input id="price" value="32000">원
                        </div>
                        <!--배송비-->
                        <br>
                        <br>
                        <br>
                        <br>
                        <div class="del-cost">
                            배송비 :<input id="delcost" value="3000">원
                        </div>
                        <br>
                        <hr>
                        <!--수량 가격-->
                        <div class="count">
                            수량 : <input type="number" id="countbox" min="1">
                        </div>
                        <br>
                        <hr>
                        <!--총 금액-->
                        <div class="total-cost">
                            <pre>총 상품금액</pre>
                            <span id="totalcost"></span>원
                        </div>
                        <br>
                            <!--구매 버튼-->
                            <div>
                            <button type="summit" id="btn-purchase">구매하기</button>
                            </div>
                            <br>
                            <div>
                            <!--장바구니 버튼-->
                            <button type="summit" id="btn-addcart">장바구니</button>
                            </div>   
                    </div>
                    </form>
                </div>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
            
                    <!--상세정보, 리뷰 ,문의하기로 화면을 이동해주는 버튼-->
                    <div class="fm">
                    <div class="fastmove">
                        <a href="#">상세정보</a>
                        <a href="#">리뷰</a>
                        <a href="#">문의하기</a>
                    </div>
                    <hr>
                    </div>
                <br>
                <br>
                <br>
                <!--상품정보-->
                <div class="product-detail">
                    <h3>상품 설명</h3>
                    <br>
                    <br>
                    <ul>
                        <li>California Gold Nutrition CollagenUP, 464g(16.37oz)</li>
                        <li>바다에서 얻은 콜라겐 펩타이드 + 히알루론산 + 비타민C</li>
                        <li>무맛, 우피에서 추출하지 않은 가수분해 피쉬 콜라겐</li>
                        <li>비동물성 공급원 히알루론산 및 비타민C</li>
                        <li>건강한 모발, 피부, 손발톱, 관절, 뼈 건강 증진*</li>
                        <li>효소를 통해 생체 이용 가능한 펩타이드로 분해된 가수분해콜라겐</li>
                        <li>글루텐, 유전자 변형 성분 및 대두 무함유</li>
                        <li>cGMP 인증 시설에서 생산</li>
                        <li>100% 골드 개런티(Gold Guarantee)</li>
                    </ul>
            
                    <br>
                
                    <ul>
                        <li>I형: 이 콜라겐 유형은 체내 전체 콜라겐의 8090%를 차지합니다. I형 콜라겐은 체내에 가장 풍부하게 존재하며 피부, 뼈, 힘줄 및 인대의 구조를 형성합니다.</li>
                        <li>II형: 무릎, 어깨 등 탄력 연골에 존재하는 이 콜라겐 유형은 관절 건강에 도움이 됩니다.</li>
                        <li>III형: 이 유형은 일반적으로 콜라겐 I형과 함께 발견되며 근육, 동맥, 장기에 존재합니다.</li>
                        <li>IV형: 피부층에 존재하는 IV형 콜라겐은 다양한 피부 기능을 유지하는 데 도움이 됩니다.</li>
                        <li>V형: 이 콜라겐 유형은 눈 각막, 뼈, 일부 피부층, 모발, 태반 조직에 존재합니다.</li>
                    </ul>
            
                    <br>
            
                    <pre>
                        콜라겐, 히알루론산, 비타민C는 모두 근골격계 건강 및 웰빙과 관련되어 있습니다. California Gold Nutrition CollagenUP은 모발, 피부, 손발톱, 관절, 
                        뼈 건강에 도움이 되는 이 세 가지 성분을 모두 함유하고 있습니다.* 이 무맛 분말을 좋아하는 음료에 넣으면 
                        간편하게 식단에 콜라겐을 추가하여 섭취할 수 있습니다.
                        콜라겐 유형
                        콜라겐은 전신에 존재하는 주요 구조 단백질이며 신체 안팎으로 우리 몸에 필수적인 기본 구성 요소를 제공합니다. 
                        콜라겐에는 다양한 유형이 있으며, 분자가 조합되는 방식과 체내에서 콜라겐이 사용되는 위치에 따라 구분합니다. 
                        당사의 CollagenUP 분말은 5가지 주요 콜라겐 중 I, III형 콜라겐 2가지를 모두 함유합니다.
                        </pre>
                
                    
                </div>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
            
                <!--추천 상품-->

               <!--추천 상품-->
               <div id="slideContainer">
        
                <div class="items">
                    <button class="prev"><</button>
                    <div class="item active"><img src="/assets/77.avif"></div>
                    <div class="item"><img src="/assets/maca500.avif"></div>
                    <div class="item"><img src="/assets/steidex.avif"></div>
                    <div class="item"><img src="/assets/thorne.avif"></div>
                    <button class="next">></button>
                </div>
                    <div class="stepper">
                    <div class="step active-step"></div>
                    <div class="step"></div>
                        <div class="step"></div>
                <div class="step"></div>
                </div>  
                </div>
                <br>
                <br>
            
                <!--productdetails end-->
            
                <!--review-->
                <!--리뷰 컨테이너-->
                <div class="review-container">
                    <h2>구매후기</h2>
                    <!--리뷰 1-->
                    <div>
                        <!--고객 아이콘 이름 게시일-->
                        <div class="review-all">
                            <!--고객 아이콘-->
                            <div class="review-icon"><i class="fa-solid fa-circle-user"></i></div>
                            <!--고객 이름-->
                            <div class="review-name">윤현식</div>
                            <!--게시일-->
                            <div class="review-date"><input type="date"></div>
                        </div>
            
                        <!--리뷰 내용-->
                        <div class="review-main">
                            <img src="/assets/re1.jpeg">
                            <div>
                                <pre class="review-con">
                        유통기한이 넉넉해서 미리 구입했는데 품절이네요 이제품 2년째 복용중입니다 일단은 얼굴이마주름이 현저히 없어져서 저도 
                        놀랄 정도구요 특히 무릎관절통증도 거의 사라졌어요 장기복용이 정답입니다 꾸준히 복용 해보세요.
                                </pre>
                            </div>    
                        </div>
            
                    </div>
                    <br>
                    <br>
                    <!--리뷰 2-->
                    <div>
                        <!--고객 아이콘 이름 게시일-->
                        <div class="review-all">
                            <!--고객 아이콘-->
                            <div class="review-icon"><i class="fa-solid fa-circle-user"></i></div>
                            <!--고객 이름-->
                            <div class="review-name">최훈석</div>
                            <!--게시일-->
                            <div class="review-date"><input type="date"></div>
                        </div>
            
                        <!--리뷰 내용-->
                        <div class="review-main">
                            <img src="/assets/re2.jpeg">
                            <pre class="review-con">
                        저분자 피쉬 콜라겐에 비타민c와 히알루론산까지 들어있는 제품이고 믿고 먹는 품질의 브랜드라 구매했어요 피부가 맑아지고 확실히
                        효과 있어요 나이가 들면서 콜라겐이 줄어들기때문에 꾸준히 복용하려구요 한스푼에 물이나 음료 300ml 섞어서 먹으면 되요        
                            </pre>
                        </div>
                        
            
                    </div>
                </div>
                <!--review end-->
            
                <br>
                <br>
                <br>
                <br>
            
                <!--FAQ-->
                <!--FAQ 컨테이너-->
                
                <div class="FAQ-container">
                    <h2>FAQ</h2>
                    <!--FAQ1-->
                    <div>
                        <!--고객 아이콘, 이름, 게시일-->
                        <div class="FAQ-all">
                            <!--고객 아이콘-->
                            <div class="FAQ-icon"><i class="fa-solid fa-circle-user"></i></div>
                            <!-- 고객 이름-->
                            <div class="FAQ-name">김연수</div>
                            <!-- 게시일-->
                            <div class="FAQ-date"><input type="date"></div>
                        </div>
            
                        <!-- 질문 내용-->
                    <div id="Accordion_wrap">
                        <div class="que">
                         <span>하루에 몇 달톤을 먹어야 하나요?</span>
                          <div class="arrow-wrap">
                            <span class="arrow-top">↑</span>
                           <span class="arrow-bottom">↓</span>
                          </div>
                        </div>
                        <div class="anw">
                         <span>하루에 300 달톤씩 복용하시면 됩니다</span>   
                        </div>
                    </div>
            
                    <div>
                        <!--고객 아이콘, 이름, 게시일-->
                        <div class="FAQ-all">
                            <!--고객 아이콘-->
                            <div class="FAQ-icon"><i class="fa-solid fa-circle-user"></i></div>
                            <!-- 고객 이름-->
                            <div class="FAQ-name">하현성</div>
                            <!-- 게시일-->
                            <div class="FAQ-date"><input type="date"></div>
                        </div>
            
                        <!-- 질문 내용-->
                    <div id="Accordion_wrap">
                        <div class="que">
                         <span>먹고나서 부작용이 있는거 같아요</span>
                          <div class="arrow-wrap">
                            <span class="arrow-top">↑</span>
                           <span class="arrow-bottom">↓</span>
                          </div>
                        </div>
                        <div class="anw">
                         <span>즉시 복용 중지 후 병원을 찾아가 주세요</span>   
                        </div>
                    </div>
                </div>
            
            
        </section> 
        
        

        
       
       






        

    <!-- 헤더, 컨텐츠 끝 -->
    </main>


    <!-- 푸터 -->
  	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

	<!-- jQuery 라이브러리 추가 -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
   
    <!-- main.js 연결 -->
    <script src="${contextPath}/resources/js/main.js"></script>
    <script src="${contextPath}/resources/js/productDetail.js"></script>
</body>
</html>
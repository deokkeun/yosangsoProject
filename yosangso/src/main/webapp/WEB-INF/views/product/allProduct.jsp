<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/css/allProduct.css">
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    <title>allProduct</title>
</head>
<body>
    <!-- 헤더, 컨텐츠 -->
    <main>
        
        <!-- 헤더 -->
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>
        
        
       
       
        <!--  <div>allProduct</div> -->


		<br>
        <br>
        <br>
        <br>

        <section id="top">
            <div class="fastmove">
                <a href="${contextPath}/product/allProduct">전제품</a>
                <a href="${contextPath}/product/newProduct">신상품</a>
                <a href="${contextPath}/product/bestProduct">베스트</a>
            
            </div>
            <br>
            <br>
        <div class="line" id="row1">
            <!--1행 1-->
            <div class="col1">
                <!--상품이미지-->
                <div><img class="img" src="${contextPath}/resources/image/index/제품_오쏘뮬.jpg"></div>
                <!--상품이름-->
                <div class="productname">1NOW Foods, 마카, 500mg,베지 캡슐 250정</div>
                <!--가격-->
                <div class="price">40000원</div>
            </div>
            <!--1행 2-->
            <div class="col2">
                <!--상품이미지-->
                <div><img class="img" src="${contextPath}/resources/image/index/제품_오쏘뮬.jpg"></div>
                <!--상품이름-->
                <div class="productname">Stridex, Single-Step Acne Control, 맥시멈, 알코올 무함유, 소프트 터치 패드 90매</div>
                <!--가격-->
                <div class="price">9000원</div>
            </div>
            <!--1행 3-->
            <div class="col3">
                <!--상품이미지-->
                <div><img class="img" src="${contextPath}/resources/image/index/제품_오쏘뮬.jpg"></div>
                <!--상품이름-->
                <div class="productname">Thorne, 마그네슘 CitraMate, 캡슐 90정</div>
                <!--가격-->
                <div class="price">24000원</div>
            </div>
            <!--1행 4-->
            <div class="col4">
                <!--상품이미지-->
                <div><img class="img" src="${contextPath}/resources/image/index/제품_오쏘뮬.jpg"></div>
                <!--상품이름-->
                <div class="productname">Life Extension, AMPK활성제, 베지 정제 30정</div>
                <!--가격-->
                <div class="price">9000원</div>
            </div>
        </div>
        </section>
    
        <div class="line2" id="row2">
            <!--2행 1-->
            <div class="col1">
                <!--상품이미지-->
                <div><img class="img" src="${contextPath}/resources/image/index/제품_나우푸드c1000.jpg"></div>
                <!--상품이름-->
                <div class="productname">1NOW Foods, 마카, 500mg,베지 캡슐 250정</div>
                <!--가격-->
                <div class="price">40000원</div>
            </div>
             <!--2행 2-->
            <div class="col2">
                <!--상품이미지-->
                <div><img class="img" src="${contextPath}/resources/image/index/제품_나우푸드c1000.jpg"></div>
                <!--상품이름-->
                <div class="productname">Stridex, Single-Step Acne Control, 맥시멈, 알코올 무함유, 소프트 터치 패드 90매</div>
                <!--가격-->
                <div class="price">9000원</div>
            </div>
             <!--2행 3-->
            <div class="col3">
                <!--상품이미지-->
                <div><img class="img" src="${contextPath}/resources/image/index/제품_나우푸드c1000.jpg"></div>
                <!--상품이름-->
                <div class="productname">Thorne, 마그네슘 CitraMate, 캡슐 90정</div>
                <!--가격-->
                <div class="price">24000원</div>
            </div>
             <!--2행 4-->
            <div class="col4">
                <!--상품이미지-->
                <div><img class="img" src="${contextPath}/resources/image/index/제품_나우푸드c1000.jpg"></div>
                <!--상품이름-->
                <div class="productname">Life Extension, AMPK활성제, 베지 정제 30정</div>
                <!--가격-->
                <div class="price">9000원</div>
            </div>
        </div>


        <div class="line2" id="row3">
            <!--1열-->
            <div class="col1">
                <!--상품이미지-->
                <div><img class="img" src="../assets/maca500.avif"></div>
                <!--상품이름-->
                <div class="productname">1NOW Foods, 마카, 500mg,베지 캡슐 250정</div>
                <!--가격-->
                <div class="price">40000원</div>
            </div>
            <!--2열-->
            <div class="col2">
                <!--상품이미지-->
                <div><img class="img" src="../assets/steidex.avif"></div>
                <!--상품이름-->
                <div class="productname">Stridex, Single-Step Acne Control, 맥시멈, 알코올 무함유, 소프트 터치 패드 90매</div>
                <!--가격-->
                <div class="price">9000원</div>
            </div>
            <!--3열-->
            <div class="col3">
                <!--상품이미지-->
                <div><img class="img" src="../assets/thorne.avif"></div>
                <!--상품이름-->
                <div class="productname">Thorne, 마그네슘 CitraMate, 캡슐 90정</div>
                <!--가격-->
                <div class="price">24000원</div>
            </div>
            <!--4열-->
            <div class="col4">
                <!--상품이미지-->
                <div><img class="img" src="../assets/77.avif"></div>
                <!--상품이름-->
                <div class="productname">Life Extension, AMPK활성제, 베지 정제 30정</div>
                <!--가격-->
                <div class="price">9000원</div>
            </div>
        </div>


        <div class="line2" id="row4">
            <!--1열-->
            <div class="col1">
                <!--상품이미지-->
                <div><img class="img" src="../assets/maca500.avif"></div>
                <!--상품이름-->
                <div class="productname">1NOW Foods, 마카, 500mg,베지 캡슐 250정</div>
                <!--가격-->
                <div class="price">40000원</div>
            </div>
            <!--2열-->
            <div class="col2">
                <!--상품이미지-->
                <div><img class="img" src="../assets/steidex.avif"></div>
                <!--상품이름-->
                <div class="productname">Stridex, Single-Step Acne Control, 맥시멈, 알코올 무함유, 소프트 터치 패드 90매</div>
                <!--가격-->
                <div class="price">9000원</div>
            </div>
            <!--3열-->
            <div class="col3">
                <!--상품이미지-->
                <div><img class="img" src="../assets/thorne.avif"></div>
                <!--상품이름-->
                <div class="productname">Thorne, 마그네슘 CitraMate, 캡슐 90정</div>
                <!--가격-->
                <div class="price">24000원</div>
            </div>
            <!--4열-->
            <div class="col4">
                <!--상품이미지-->
                <div><img class="img" src="../assets/77.avif"></div>
                <!--상품이름-->
                <div class="productname">Life Extension, AMPK활성제, 베지 정제 30정</div>
                <!--가격-->
                <div class="price">9000원</div>
            </div>
        </div>


        <div class="line2" id="row5">
            <!--1열-->
            <div class="col1">
                <!--상품이미지-->
                <div><img class="img" src="../assets/maca500.avif"></div>
                <!--상품이름-->
                <div class="productname">1NOW Foods, 마카, 500mg,베지 캡슐 250정</div>
                <!--가격-->
                <div class="price">40000원</div>
            </div>
            <!--2열-->
            <div class="col2">
                <!--상품이미지-->
                <div><img class="img" src="../assets/steidex.avif"></div>
                <!--상품이름-->
                <div class="productname">Stridex, Single-Step Acne Control, 맥시멈, 알코올 무함유, 소프트 터치 패드 90매</div>
                <!--가격-->
                <div class="price">9000원</div>
            </div>
            <!--3열-->
            <div class="col3">
                <!--상품이미지-->
                <div><img class="img" src="../assets/thorne.avif"></div>
                <!--상품이름-->
                <div class="productname">Thorne, 마그네슘 CitraMate, 캡슐 90정</div>
                <!--가격-->
                <div class="price">24000원</div>
            </div>
            <!--4열-->
            <div class="col4">
                <!--상품이미지-->
                <div><img class="img" src="../assets/77.avif"></div>
                <!--상품이름-->
                <div class="productname">Life Extension, AMPK활성제, 베지 정제 30정</div>
                <!--가격-->
                <div class="price">9000원</div>
            </div>
        </div>


        <div class="line2" id="row6">
            <!--1열-->
            <div class="col1">
                <!--상품이미지-->
                <div><img class="img" src="../assets/maca500.avif"></div>
                <!--상품이름-->
                <div class="productname">1NOW Foods, 마카, 500mg,베지 캡슐 250정</div>
                <!--가격-->
                <div class="price">40000원</div>
            </div>
            <!--2열-->
            <div class="col2">
                <!--상품이미지-->
                <div><img class="img" src="../assets/steidex.avif"></div>
                <!--상품이름-->
                <div class="productname">Stridex, Single-Step Acne Control, 맥시멈, 알코올 무함유, 소프트 터치 패드 90매</div>
                <!--가격-->
                <div class="price">9000원</div>
            </div>
            <!--3열-->
            <div class="col3">
                <!--상품이미지-->
                <div><img class="img" src="../assets/thorne.avif"></div>
                <!--상품이름-->
                <div class="productname">Thorne, 마그네슘 CitraMate, 캡슐 90정</div>
                <!--가격-->
                <div class="price">24000원</div>
            </div>
            <!--4열-->
            <div class="col4">
                <!--상품이미지-->
                <div><img class="img" src="../assets/77.avif"></div>
                <!--상품이름-->
                <div class="productname">Life Extension, AMPK활성제, 베지 정제 30정</div>
                <!--가격-->
                <div class="price">9000원</div>
            </div>
        </div>


        <div class="line2" id="row7">
            <!--1열-->
            <div class="col1">
                <!--상품이미지-->
                <div><img class="img" src="../assets/maca500.avif"></div>
                <!--상품이름-->
                <div class="productname">1NOW Foods, 마카, 500mg,베지 캡슐 250정</div>
                <!--가격-->
                <div class="price">40000원</div>
            </div>
            <!--2열-->
            <div class="col2">
                <!--상품이미지-->
                <div><img class="img" src="../assets/steidex.avif"></div>
                <!--상품이름-->
                <div class="productname">Stridex, Single-Step Acne Control, 맥시멈, 알코올 무함유, 소프트 터치 패드 90매</div>
                <!--가격-->
                <div class="price">9000원</div>
            </div>
            <!--3열-->
            <div class="col3">
                <!--상품이미지-->
                <div><img class="img" src="../assets/thorne.avif"></div>
                <!--상품이름-->
                <div class="productname">Thorne, 마그네슘 CitraMate, 캡슐 90정</div>
                <!--가격-->
                <div class="price">24000원</div>
            </div>
            <!--4열-->
            <div class="col4">
                <!--상품이미지-->
                <div><img class="img" src="../assets/77.avif"></div>
                <!--상품이름-->
                <div class="productname">Life Extension, AMPK활성제, 베지 정제 30정</div>
                <!--가격-->
                <div class="price">9000원</div>
            </div>
        </div>


        <div class="line2" id="row8">
            <!--1열-->
            <div class="col1">
                <!--상품이미지-->
                <div><img class="img" src="../assets/maca500.avif"></div>
                <!--상품이름-->
                <div class="productname">1NOW Foods, 마카, 500mg,베지 캡슐 250정</div>
                <!--가격-->
                <div class="price">40000원</div>
            </div>
            <!--2열-->
            <div class="col2">
                <!--상품이미지-->
                <div><img class="img" src="../assets/steidex.avif"></div>
                <!--상품이름-->
                <div class="productname">Stridex, Single-Step Acne Control, 맥시멈, 알코올 무함유, 소프트 터치 패드 90매</div>
                <!--가격-->
                <div class="price">9000원</div>
            </div>
            <!--3열-->
            <div class="col3">
                <!--상품이미지-->
                <div><img class="img" src="../assets/thorne.avif"></div>
                <!--상품이름-->
                <div class="productname">Thorne, 마그네슘 CitraMate, 캡슐 90정</div>
                <!--가격-->
                <div class="price">24000원</div>
            </div>
            <!--4열-->
            <div class="col4">
                <!--상품이미지-->
                <div><img class="img" src="../assets/77.avif"></div>
                <!--상품이름-->
                <div class="productname">Life Extension, AMPK활성제, 베지 정제 30정</div>
                <!--가격-->
                <div class="price">9000원</div>
            </div>
        </div>
        
        <div class="numListBox">
            <div id="numListBtnBox">
                <button id="movePrev"> < </button>
            </div>
            <div id="listBox">
                <a href="#">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                <a href="#">5</a>
            </div>
            <div id="numListBtnBox2">
                <button id="moveNext"> > </button>
            </div>
        </div>
   

        <br>
        <br>
        <br>

		


        

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
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
    <title>login</title>
</head>
<body>
    <!-- 헤더, 컨텐츠 -->
     <main>
    <!-- 헤더 -->
    <jsp:include page="/WEB-INF/views/common/header.jsp"/>
    	
<!---------------------- 정오 로그인 시작---------------------->
<!---------------------- 정오 로그인 시작---------------------->
<!---------------------- 정오 로그인 시작---------------------->

    <!-- content 전체 감싸는 영역 -->
    <section class="content-container">

        <div class = "login_wrapper">
            <h3>
                <div class= "login_logo">요생소</div>
            </h3>

            <div class= "login_form">
                    <input id="LOGIN_ID" class="login_text" type="text" name="id" placeholder="    아이디">
                    <input id="LOGIN_PW" class="login_text" type="password" name="id" placeholder="    비밀번호">
            </div>

    <!-- 로그인 상태 유지 / 아이디 비밀번호 찾기 -->
            <div class="form-check">
                <label><input type="checkbox" id="exampleCheck1" class="form-check-input">&nbsp;&nbsp;&nbsp;로그인 상태 유지</label>
                <label class="form-check-label" for="exampleCheck2">&nbsp;</label>
                    
            <div class="form-check2">
                <a class="login_bottom" href="">아이디/비밀번호 찾기 ></a>
            </div>

            <br>
                <button id="LOGIN_BTN" class="login_btn" type="button" disabled>로그인</button>
                  
                <div class="kakao">
                    <button id="LOGIN_KAKAO" CLASS="login_btn2" type="button" disabled>카카오 로그인</button>
                </div>
                
                
            </div>
        </div>
    </section>
    
<!---------------------- 정오 로그인 시작---------------------->
<!---------------------- 정오 로그인 시작---------------------->
<!---------------------- 정오 로그인 시작---------------------->

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
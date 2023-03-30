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
    <title>signUp</title>
</head>
<body>
    <!-- 헤더, 컨텐츠 -->
    <main>
        
        <!-- 헤더 -->
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>

<!----------------------------------- 정오 회원가입 시작 ----------------------------------->
<!----------------------------------- 정오 회원가입 시작 ----------------------------------->
<!----------------------------------- 정오 회원가입 시작 ----------------------------------->
    
    <!-- content 전체 감싸는 영역 -->
    <section class="content-container">
        
        <!-- 로고 추가 확인하기 -->
        <!-- wrapper -->
        <div id="wrapper">

    <br><br><br>

    <!-- header  -->
    <div id="header">
        <h3>회원가입</h3>
        <pre>요즘 생활의 소중함을 잊지 마세요</pre>
    </div>

    <br><br>

    <!-- content -->
    <div id="content">

    <!-- ID -->
    <div>
        <h3 class="join_title">

        </h3>
        <span class="box int_id">
            <input type="text" id="id" class="int" maxlength="20" placeholder="      아이디">
        </span>

        <span class="error_next_box">
        </span>
    </div>

    <br>

    <!-- pw1 -->
    <div>
        <h3 class="join_title">

        </h3>
        <span class="box int_pass">
            <input type="password" id="pswd1" class="int" maxlength="20" placeholder="      비밀번호">
            <!-- 자물쇠모양 IMG SRC 추가 -->
            <!-- <img src="/image/m_icon_pass.png" id="pswd1_img1" class="pswdImg"> -->
        </span>
        <span class="error_next_box"></span>
    </div>

    <br>

    <!-- pw2 -->
    <div>
        <h3 class="join_title">

        </h3>
        <span class="box int_pass_check">
            <input type="password" id="pswd2" class="int" maxlength="20" placeholder="      비밀번호 확인">
            <!-- 자물쇠(체크)모양 IMG SRC 추가 -->
            <!-- <img src="/image/m_icon_check_disable.png" id="pswd2_img1" class="pswdImg"> -->
        </span>
    </div>

    <br>

    <!-- Name -->
    <div>
        <h3 class="join title">

        </h3>
        <span class="box int_name">
            <input type="text" id="name" class="int" maxlength="20" placeholder="      이름">
        </span>
    </div>

    <br>
 
    <!-- mobile 인증번호-->
    <div>
        <h3 class="join_title">
            
        </h3>
        <span class="box int_phone">
            <input type="text" id="mobile" class="int" maxlength="11" placeholder="      휴대번호">
            <button type="text" id="cert">인증번호</button>
        </span>
    </div>

    <br>

    <!-- mobile2 인증확인-->
    <div>
        <h3 class="join_title">
            
        </h3>
        <span class="box int_phone">
            <input type="text" id="mobile" class="int" maxlength="4" placeholder="      인증번호">
            <button type="text" id="cert2">인증확인</button>
        </span>
    </div>

    <br><br>

    <!-- 모두 동의하기 4개 -->
    <input type='checkbox' name='button' value='selectall' onclick='selectAll(this)'>

    <b>모두 동의하기</b>
    <br><br><hr>

    <br>
    <input type='checkbox'name='button' value='1'/> [필수] 만 14세 이상입니다.
        <button type=text id="cert3">더보기</button>

    <br><br>
    <input type='checkbox' name='button' value='2' /> [필수] 개발자국 비타 이용약관
        <button type=text id="cert4">더보기</button>

    <br><br>
    <input type='checkbox' name='button' value='3' /> [필수] 전자금융거래 이용약관 동의
        <button type=text id="cert5">더보기</button>
        
    <br><br>
    <input type='checkbox' 
        name='button' 
        value='4' /> [필수] 개인정보 수집 및 이용 동의
        <button type=text id="cert6">더보기</button>


    <br><br>
    <!-- 최종 회원가입 센터 버튼 -->
    <div class="button" style="text-align: center;">
        <button type="button" id="btnSignup">
            <h2>
                <span>회원가입</span>
            </h2>
        </button>
        
        <br><br>
        <hr>

        <br>
        <br>

        <div class="kakao">
                <button id="LOGIN_KAKAO" CLASS="login_btn2" type="button" disabled>카카오 로그인</button>
        </div>

        </div>
    </div>
</section>

<!----------------------------------- 정오 회원가입 끝 ----------------------------------->
<!----------------------------------- 정오 회원가입 끝 ----------------------------------->
<!----------------------------------- 정오 회원가입 끝 ----------------------------------->





        

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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/css/main-style.css">
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    <title>index</title>
</head>
<body>
    <!-- 헤더, 컨텐츠 -->
    <main>
       <c:choose>
       
       	<c:when test="${empty sessionScope.loginMember }">
       	
       		<!-- 절대경로  /yosangso/member/login.jsp -->
       		<form action="member/login" method="post" name="login-form" onsubmit="return loginValidate()">
       			
       			<fieldset id="id-pw-area">
       				<section>
       					<!-- 쿠키 출력 -->
       					<input type="text" name="inputEmail" placeholder="아이디(이메일)" value="${cookie.saveId.value}">
       					<input type="password" name="inputPw" placeholder="비밀번호">		
       				</section>
       				
       				<section>
       					<button>로그인</button>
       				</section>
       			</fieldset>
       			
       			<c:if test="${ !empty cookie.saveId.value }">   			
 	      			<c:set var="chk" value="checked"/>
       			</c:if>
       			
       			<label>
       				<input type="checkbox" name="saveId" ${chk} id="saveId"> 로그인 상태 유지
       			</label>
       			
       			<!-- 로그인 index.jsp 끝 -->
       			
       			
       			<!-- 회원가입 영역 시작-->
       		</form>
       		
       	
       	
       	
       	
       	
       	</c:when>
       
       
       </c:choose>
        
        
        
        
        
        
        
        
        
        
        
        

    <!-- 헤더, 컨텐츠 끝 -->
    </main>

    <!-- 헤더 -->
    <jsp:include page="/WEB-INF/views/common/header.jsp"/>

    <!-- 푸터 -->
  	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

	<!-- jQuery 라이브러리 추가 -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
   
    <!-- main.js 연결 -->
    <script src="${contextPath}/resources/js/main.js"></script>
</body>
</html>
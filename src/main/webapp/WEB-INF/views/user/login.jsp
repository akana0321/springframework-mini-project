<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>STUDIO 765</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mainheader.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/title.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/user/login.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/button.css" />
  </head>
	<body>
	  	<%@ include file="/WEB-INF/views/common/mainheader.jsp" %>
	  	<script src="${pageContext.request.contextPath}/resources/js/login.js"></script>
	    <div class="loginmain">
	      	<div style="top: 0; position: absolute; z-index: -1; width: 100%; height: 100%">
	        	<img class="slide1" style="width: 100%; height: 100%" src="${pageContext.request.contextPath}/resources/images/main/main9.png" />
	        	<img class="slide1" style="width: 100%; height: 100%" src="${pageContext.request.contextPath}/resources/images/main/main8.png" />
	        	<img class="slide1" style="width: 100%; height: 100%" src="${pageContext.request.contextPath}/resources/images/main/main7.png" />
	        	<img class="slide1" style="width: 100%; height: 100%" src="${pageContext.request.contextPath}/resources/images/main/main6.png" />
	        	<img class="slide1" style="width: 100%; height: 100%" src="${pageContext.request.contextPath}/resources/images/main/main5.png" />
	        	<img class="slide1" style="width: 100%; height: 100%" src="${pageContext.request.contextPath}/resources/images/main/main4.png" />
	        	<img class="slide1" style="width: 100%; height: 100%" src="${pageContext.request.contextPath}/resources/images/main/main3.png" />
	        	<img class="slide1" style="width: 100%; height: 100%" src="${pageContext.request.contextPath}/resources/images/main/main2.png" />
	        	<img class="slide1" style="width: 100%; height: 100%" src="${pageContext.request.contextPath}/resources/images/main/main1.png" />
	      	</div>
	      	<div>
	   			<c:if test="${error != null}">
					<div class="alert alert-danger mb-2" role="alert">
				  		${error}
					</div>			
				</c:if>
	        	<form class="Form" method="post" action="${pageContext.request.contextPath}/user/login">
	          		<div class="login-title">로그인</div>
	          		<div>
	            		<input type="text" name="uid" class="form-control" value="${user.uid}" placeholder="아이디" required /><br />
	            		<input type="password" name=upassword class="form-control" placeholder="비밀번호" required /><br />
	            		<input type="submit" class="user_button" value="로그인" onclick="location.href='../mypage/mypage.html'" />
	          		</div>
	
	          		<div style="text-align: center">
	            		<span onclick="idFindopen()" class="findbtn">아이디 찾기</span> | 	
	            		<span onclick="pwFindopen()" class="findbtn">비밀번호 찾기</span> |
	            		<a href="${pageContext.request.contextPath}/user/signup1" class="findbtn">회원가입</a>
	          		</div>
	        	</form>
	      	</div>
	
	      	<div class="find_background" id="idFind">
	        	<div class="form-popup">
	          		<form class="form-container">
	            		<div type="button" class="cancel" onclick="idFindclose()"><img src="${pageContext.request.contextPath}/resources/images/close.png" width="20em" /></div>
	            		<div class="login-title">아이디 찾기</div>
	
	            		<input type="text" name="uname" class="popup_form_control" placeholder="이름" required /><br />
	            		<input type="tel" name="utel" class="popup_form_control" placeholder="전화번호" required /><br />
	
	            		<!-- <button type="submit" class="btn">아이디 찾기</button> -->
	            		<!-- <div class="btn" onclick="idFindCompleteopen()">아이디 찾기</div> -->
	            		<input type="button" class="user_button" onclick="idFindCompleteopen()" value="아이디 찾기" />
	          		</form>
	        	</div>
	      	</div>
	
	      	<div class="find_background" id="idFindComplete">
	        	<div class="form-popup">
	          		<form class="form-container">
	            		<div type="button" class="cancel" onclick="idFindCompleteclose()"><img src="${pageContext.request.contextPath}/resources/images/close.png" width="20em" /></div>
	            		<div class="login-title">아이디 찾기</div>
	
	            		<div class="findedId">아이디는 user1입니다</div>
	            		<input type="button" class="user_button" onclick="idFindCompleteclose()" value="로그인 하기" />
	
	            		<!-- <div style="text-align: center">
	              			<a href="../user/pwReset.html" class="findbtn">비밀번호 찾기</a>
	            		</div> -->
	            		<div class="findbtn" onclick="pwFindopen()">비밀번호 찾기</div>
	          		</form>
	        	</div>
	      	</div>
	
	      	<div class="find_background" id="pwFind">
	        	<div class="form-popup">
	          		<form class="form-container">
	            		<div type="button" class="cancel" onclick="pwFindclose()"><img src="${pageContext.request.contextPath}/resources/images/close.png" width="20em" /></div>
	            		<div class="login-title">비밀번호 찾기</div>
	
						<input type="text" name="uid" class="popup_form_control" placeholder="아이디" required /><br />
	            		<input type="text" name="uname" class="popup_form_control" placeholder="이름" required /><br />
	            		<input type="tel" name="utel" class="popup_form_control" placeholder="전화번호" required /><br />
	
	            		<input type="button" class="user_button" onclick="pwFindCompleteopen()" value="비밀번호 찾기" />
	          		</form>
	        	</div>
	      	</div>
	
	      	<div class="find_background" id="pwFindComplete">
	        	<div class="form-popup">
	          		<form class="form-container">
	            		<div type="button" class="cancel" onclick="pwFindCompleteclose()"><img src="${pageContext.request.contextPath}/resources/images/close.png" width="20em" /></div>
	            		<div class="login-title">비밀번호 변경</div>
	
	            		<input type="password" name="upassword" class="popup_form_control" placeholder="새로운 비밀번호" required /><br />
	            		<input type="password" name="upassword" class="popup_form_control" placeholder="새로운 비밀번호 확인" required /><br />
	            		<input type="button" class="user_button" onclick="pwFindCompleteclose()" value="완료" />
	          		</form>
	        	</div>
	      	</div>
	 	</div>
	</body>
</html>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
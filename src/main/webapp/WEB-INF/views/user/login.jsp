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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footerMain.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/title.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/user/login.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/button.css" />
    
    <script>
	    function idFindCheck() {
	        event.preventDefault();
	        
			var uname = document.getElementById("uname");
			var utel = document.getElementById("utel");
			
			var name = /^[가-힣]+$/;
			
			if(uname.value == "") {
				$('#idFindCheck').html('이름을 입력하세요.');
		        $('#idFindCheck').css('color', '#ff0000');
		        uname.focus();
		        return false;
			} else {
				$('#idFindCheck').html('');
			}
			
			if(!name.test(uname.value)) {
    			$('#idFindCheck').html('이름 형식에 맞춰주세요.');
    	        $('#idFindCheck').css('color', '#ff0000');
    	        uname.focus();
    	        return false;
    		} else {
    			$('#idFindCheck').html('');
    		}
			
			var tel = /^\d{3}-\d{3,4}-\d{4}$/;
			
			if(utel.value == "") {
				$('#idFindCheck').html('전화번호를 입력하세요.');
		        $('#idFindCheck').css('color', '#ff0000');
		        utel.focus();
		        return false;
			} else {
				$('#idFindCheck').html('');
			}
			
			if(!tel.test(utel.value)) {
    			$('#idFindCheck').html('전화번호 형식에 맞춰주세요.');
    	        $('#idFindCheck').css('color', '#ff0000');
    	        utel.focus();
    	        return false;
    		} else {
    			$('#idFindCheck').html('');
    		}
			
			document.signupform.submit();
		}
	    
	    function pwFindCheck() {
	        event.preventDefault();
	        
	        var uid = document.getElementById("uid");
			var uname = document.getElementById("uname");
			var utel = document.getElementById("utel");
			
			var id = /^(?=.*[a-zA-Z])(?=.*[0-9]).{8,10}$/;
    		
    		if(uid.value == "") {
    			$('#idCheck').html('아이디를 입력하세요.');
    	        $('#idCheck').css('color', '#ff0000');
    	        uid.focus();
    	        return false;
    		} else {
    			$('#idCheck').html('');
    		}
    		
    		if(!id.test(uid.value)) {
    			$('#idCheck').html('아이디 형식에 맞춰주세요.');
    	        $('#idCheck').css('color', '#ff0000');
    	        uid.focus();
    	        return false;
    		} else {
    			$('#idCheck').html('');
    		}
			
			var name = /^[가-힣]+$/;
			
			if(uname.value == "") {
				$('#idFindCheck').html('이름을 입력하세요.');
		        $('#idFindCheck').css('color', '#ff0000');
		        uname.focus();
		        return false;
			} else {
				$('#idFindCheck').html('');
			}
			
			if(!name.test(uname.value)) {
    			$('#idFindCheck').html('이름 형식에 맞춰주세요.');
    	        $('#idFindCheck').css('color', '#ff0000');
    	        uname.focus();
    	        return false;
    		} else {
    			$('#idFindCheck').html('');
    		}
			
			var tel = /^\d{3}-\d{3,4}-\d{4}$/;
			
			if(utel.value == "") {
				$('#idFindCheck').html('전화번호를 입력하세요.');
		        $('#idFindCheck').css('color', '#ff0000');
		        utel.focus();
		        return false;
			} else {
				$('#idFindCheck').html('');
			}
			
			if(!tel.test(utel.value)) {
    			$('#idFindCheck').html('전화번호 형식에 맞춰주세요.');
    	        $('#idFindCheck').css('color', '#ff0000');
    	        utel.focus();
    	        return false;
    		} else {
    			$('#idFindCheck').html('');
    		}
			
			document.signupform.submit();
		}
    </script>
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
	        	<form class="Form" method="post" action="${pageContext.request.contextPath}/user/login">
	          		<div class="login-title">로그인</div>
	          		<div>
	            		<input type="text" name="uid" id="uid" class="form-control" value="${user.uid}" placeholder="아이디"/><br />
	            		<input type="password" name="upassword" id="upassword" class="form-control" placeholder="비밀번호" /><br />
	            		<c:if test="${error != null}">
							<small style="color:red;" id="loginError">${error}</small>		
						</c:if>
	            		<input type="submit" class="user_button" value="로그인"/>
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
	
	            		<input type="text" name="uname" id="uname" class="form_control" placeholder="이름"/>
	            		<input type="tel" name="utel" id="utel" class="form_control" placeholder="전화번호"/>
						<small id="idFindCheck"></small>
	            		<!-- <button type="submit" class="btn">아이디 찾기</button> -->
	            		<!-- <div class="btn" onclick="idFindCompleteopen()">아이디 찾기</div> -->
	            		<input type="button" class="user_button" onclick="idFindCheck(); idFindCompleteopen()" value="아이디 찾기" />
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
	
						<input type="text" name="uid" class="form_control" placeholder="아이디" required /><br />
	            		<input type="text" name="uname" class="form_control" placeholder="이름" required /><br />
	            		<input type="tel" name="utel" class="form_control" placeholder="전화번호" required /><br />
	
	            		<input type="button" class="user_button" onclick="pwFindCheck(); pwFindCompleteopen()" value="비밀번호 찾기" />
	          		</form>
	        	</div>
	      	</div>
	
	      	<div class="find_background" id="pwFindComplete">
	        	<div class="form-popup">
	          		<form class="form-container">
	            		<div type="button" class="cancel" onclick="pwFindCompleteclose()"><img src="${pageContext.request.contextPath}/resources/images/close.png" width="20em" /></div>
	            		<div class="login-title">비밀번호 변경</div>
	
	            		<input type="password" name="upassword" class="form_control" placeholder="새로운 비밀번호" required /><br />
	            		<input type="password" name="upassword" class="form_control" placeholder="새로운 비밀번호 확인" required /><br />
	            		<input type="button" class="user_button" onclick="pwFindCompleteclose()" value="완료" />
	          		</form>
	        	</div>
	      	</div>
	 	</div>
	</body>
</html>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
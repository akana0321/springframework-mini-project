<%@ page contentType="text/html; charset=UTF-8" %>
 
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>STUDIO 765</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/user/signup.css" />

    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <!-- <script>
      function setThumbnail(event) {
        var reader = new FileReader();
        reader.onload = function (event) {
          var img = document.createElement("img");
          img.setAttribute("src", event.target.result);
          img.setAttribute("style", "width: 70%; border-radius:1%;object-fit: cover;");
          $("#image_container").html(img);
        };
        reader.readAsDataURL(event.target.files[0]);
      }
    </script> -->
    <script>
    	function execDaumPostcode1() {
      		new daum.Postcode({
        		oncomplete: function(data) {
          			var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
          			var extraRoadAddr = ''; // 도로명 조합형 주소 변수

          			// 법정동명이 있을 경우 추가
          			if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
            			extraRoadAddr += data.bname;
         			}
              
              		// 건물명이 있고, 공동주택일 경우 추가
              		if(data.buildingName !== '' && data.apartment === 'Y'){
                 		extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
              		}
              
              		// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열
              		if(extraRoadAddr !== ''){
                  		extraRoadAddr = ' (' + extraRoadAddr + ')';
              		}
              
              		// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가
              		if(fullRoadAddr !== ''){
                  		fullRoadAddr += extraRoadAddr;
              		}

              		console.log(data.zonecode);//우편번호
              		console.log(fullRoadAddr);//주소정보
              
              		$("[name=uzipcode]").val(data.zonecode);
              		$("[name=uaddress1]").val(fullRoadAddr);
        		}
      		}).open();
    	}
    	
    	function signupCheck() {
            event.preventDefault();
            
    		var uid = document.getElementById("uid");
    		var upassword1 = document.getElementById("upassword1");
    		var upassword2 = document.getElementById("upassword2");
    		var uname = document.getElementById("uname");
    		var zonecode = document.getElementById("zonecode");
    		/* var address = document.getElementById("address"); */
    		var uemail = document.getElementById("uemail");
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

    		var password = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,20}$/;
    		
    		if(upassword1.value == "") {
    			$('#pwCheck').html('비밀번호를 입력하세요.');
    	        $('#pwCheck').css('color', '#ff0000');
    	        upassword1.focus();
    	        return false;
    		} else {
    			$('#pwCheck').html('');
    		}
    		
    		if(!password.test(upassword1.value)) {
    			$('#pwCheck').html('비밀번호 형식에 맞춰주세요.');
    	        $('#pwCheck').css('color', '#ff0000');
    	        upassword1.focus();
    	        return false;
    		} else {
    			$('#pwCheck').html('');
    		}
    		
    		if(upassword2.value == "") {
    			$('#pwCheck').html('비밀번호를 확인하세요.');
    	        $('#pwCheck').css('color', '#ff0000');
    	        upassword2.focus();
    	        return false;
    		} else {
    			$('#pwCheck').html('');
    		}
    		
    		if(upassword1.value != upassword2.value) {
    			$('#pwCheck').html('비밀번호가 일치하지 않습니다.');
    	        $('#pwCheck').css('color', '#ff0000');
    	        upassword2.focus();
    	        return false;
    		} else {
    			$('#pwCheck').html('비밀번호가 일치합니다.');
    	        $('#pwCheck').css('color', '#000000');
    		}
    		
    		var name = /^[가-힣]+$/;
    		
    		if(uname.value == "") {
    			$('#nameCheck').html('이름을 입력하세요.');
    	        $('#nameCheck').css('color', '#ff0000');
    	        uname.focus();
    	        return false;
    		} else {
    			$('#nameCheck').html('');
    		}
    		
    		if(!name.test(uname.value)) {
    			$('#nameCheck').html('이름 형식에 맞춰주세요.');
    	        $('#nameCheck').css('color', '#ff0000');
    	        uname.focus();
    	        return false;
    		} else {
    			$('#nameCheck').html('');
    		}
    		
    		if(zonecode.value == "") {
    			$('#zonecodeCheck').html('주소를 입력하세요.');
    	        $('#zonecodeCheck').css('color', '#ff0000');
    	        zonecode.focus();
    	        return false;
    		} else {
    			$('#zonecodeCheck').html('');
    		}

    		var email = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    			
    		if(uemail.value == "") {
    			$('#emailCheck').html('이메일을 입력하세요.');
    	        $('#emailCheck').css('color', '#ff0000');
    	        uemail.focus();
    	        return false;
    		} else {
    			$('#emailCheck').html('');
    		}
    		
    		if(!email.test(uemail.value)) {
    			$('#emailCheck').html('이메일 형식에 맞춰주세요.');
    	        $('#emailCheck').css('color', '#ff0000');
    	        uemail.focus();
    	        return false;
    		} else {
    			$('#emailCheck').html('');
    		}

    		var tel = /^\d{3}-\d{3,4}-\d{4}$/;
    		
    		if(utel.value == "") {
    			$('#telCheck').html('전화번호를 입력하세요.');
    	        $('#telCheck').css('color', '#ff0000');
    	        utel.focus();
    	        return false;
    		} else {
    			$('#telCheck').html('');
    		}
    		
    		if(!tel.test(utel.value)) {
    			$('#telCheck').html('전화번호 형식에 맞춰주세요.');
    	        $('#telCheck').css('color', '#ff0000');
    	        utel.focus();
    	        return false;
    		} else {
    			$('#telCheck').html('');
    		}

    		document.signupform.submit();
    	}
    </script>
  </head>
  <body>
  <%@ include file="/WEB-INF/views/common/header.jsp" %>
  <%-- <script src="${pageContext.request.contextPath}/resources/js/signup.js"></script> --%>
  <script src="${pageContext.request.contextPath}/resources/js/signup.js"></script>
    <div class="signup2">
      <form name="signupform" class="background col-6" action="${pageContext.request.contextPath}/user/signup2" method="post">
        <div style="text-align: center; margin-bottom: 4%">
          <a href="../main.html"><img src="${pageContext.request.contextPath}/resources/images/logo.png" style="width: 30%" /></a>
        </div>
        <div>
	        <label>* 아이디</label>
	        <input type="text" name="uid" id="uid" value="${user.uid}" placeholder="아이디 입력"/>
	        <c:if test="${error != null}">
				<small style="color:red;" id="idError">${error}</small>		
			</c:if>
			<small id="idCheck"></small>
		</div>
        <div class="row">
          <div class="col-6">
            <label>* 비밀번호</label>
            <input type="password" name="upassword" id="upassword1" value="${user.upassword}" placeholder="비밀번호"/>
            <small>8~16자 영문 대소문자, 숫자, 특수문자</small><br/>
          </div>
          <div class="col-6">
            <label>* 비밀번호 확인</label>
            <input type="password" name="upassword2" id="upassword2" placeholder="비밀번호 확인"/>
            <!-- <small id="pwsameCheck"></small> -->
            <small id="pwCheck"></small>
          </div>
        </div>
        <div class="row">
          <div class="col-6">
            <label>* 이름</label>
            <input type="text" name="uname" id="uname" value="${user.uname}" placeholder="홍길동"/>
            <small id="nameCheck"></small>
          </div>
          <div class="col-6">
            <label>생년월일</label>
            <input type="date" id="ubirth" name="ubirth" value="${user.ubirth}" name="birthday" />
          </div>
        </div>
        <label>* 주소</label>
        <div class="row">
          <div class="col-6">
            <input type="text" id="zonecode" name="uzipcode" value="${user.uzipcode}" placeholder="우편번호"/>
          </div>
          <div class="col-6"><input type="button" class="button" style="margin-bottom: 1em" onclick="execDaumPostcode1()" value="우편번호 찾기" /><br /></div>
        </div>
        <div class="row">
          <div class="col-7"><input type="text" id="uaddress" name="uaddress1" value="${user.uaddress1}" placeholder="주소"/><br /></div>
          <div class="col-5">
            <input type="text" id="detailAddress" name="uaddress2" value="${user.uaddress2}" placeholder="상세주소" />
          </div>
        </div>
        <small id="zonecodeCheck"></small>
        <div>
        	<label>* 이메일</label>
	        <input type="email" name="uemail" id="uemail" value="${user.uemail}"  placeholder="email@gmail.com"/>
	        <small id="emailCheck"></small>
        </div>
        <label>* 휴대전화</label>
        <div class="row mb-2">
          <div class="col-9">
            <input type="tel" name="utel" id="utel" value="${user.utel}"  placeholder="010-****-****"/>
            <small id="telCheck"></small>
          </div>
          <!-- <div class="col-3">
            <input type="button" class="button" name="certification" value="인증번호 받기" />
          </div> -->
        </div>
        <!-- <input type="text" name="certification" placeholder="인증번호를 입력하세요" /> -->
        <br />
        <br />
        <input type="submit" class="button" onclick="signupCheck()" value="제출" />
      </form>
    </div>
  </body>
</html>

<%-- <%@ include file="/WEB-INF/views/common/footer.jsp" %> --%>
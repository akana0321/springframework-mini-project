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
    </script>
  </head>
  <body>
  <%@ include file="/WEB-INF/views/common/header.jsp" %>
  <%-- <script src="${pageContext.request.contextPath}/resources/js/signup.js"></script> --%>
    <div class="signup2">
      <form class="background col-6" action="${pageContext.request.contextPath}/user/signup2" method="post">
        <div style="text-align: center; margin-bottom: 4%">
          <a href="../main.html"><img src="${pageContext.request.contextPath}/resources/images/logo.png" style="width: 30%" /></a>
        </div>
        <label>* 아이디</label>
        <div class="row">
          <div class="col-9">
            <input type="text" name="uid" value="${user.uid}" placeholder="아이디 입력" />
          </div>
          <div class="col-3">
            <input type="button" class="button" name="certification" value="아이디 중복 확인" />
          </div>
        </div>
        <div class="row">
          <div class="col-6">
            <label>* 비밀번호</label>
            <input type="password" name="upassword" value="${user.upassword}" />
          </div>
          <!-- <div class="col-6">
            <label>* 비밀번호 재확인</label>
            <input type="password" name="user_password2" />
          </div> -->
        </div>
        <div class="row">
          <div class="col-6">
            <label>* 이름</label>
            <input type="text" name="uname" value="${user.uname}" placeholder="홍길동" />
          </div>
          <div class="col-6">
            <label>생년월일</label>
            <input type="date" id="ubirth" name="ubirth" value="${user.ubirth}" name="birthday" />
          </div>
        </div>
        <label>* 주소</label>
        <div class="row">
          <div class="col-6">
            <input type="text" id="zonecode" name="uzipcode" value="${user.uzipcode}" placeholder="우편번호" />
          </div>
          <div class="col-6"><input type="button" class="button" style="margin-bottom: 1em" onclick="execDaumPostcode1()" value="우편번호 찾기" /><br /></div>
        </div>
        <div class="row">
          <div class="col-7"><input type="text" id="address" name="uaddress1" value="${user.uaddress1}" placeholder="주소" /><br /></div>
          <div class="col-5">
            <input type="text" id="detailAddress" name="uaddress2" value="${user.uaddress2}" placeholder="상세주소" />
          </div>
        </div>
        <label>* 이메일</label>
        <input type="email" name="uemail" value="${user.uemail}"  placeholder="email@gmail.com" />
        <label>* 휴대전화</label>
        <div class="row mb-2">
          <div class="col-9">
            <input type="tel" name="utel" value="${user.utel}" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" placeholder="010-****-****" />
          </div>
          <!-- <div class="col-3">
            <input type="button" class="button" name="certification" value="인증번호 받기" />
          </div> -->
        </div>
        <!-- <input type="text" name="certification" placeholder="인증번호를 입력하세요" /> -->
        <br />
        <br />

        <!-- <div class="col-6" style="padding-left: 0; ">
          <label>* 병원 등록번호</label>
          <input type="text" name="hospital_number" pattern="[0-9]{8}" placeholder="12345678" />
        </div>
        <div class="row">
          <div class="col-6">
            <label>* 병원 이름</label>
            <input type="text" name="hospital_name" placeholder="홍길동" />
          </div>
          <div class="col-6">
            <label>* 병원 전화번호</label>
            <input type="tel" name="hospital_tel" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" placeholder="02-***-****" />
          </div>
        </div>
        <label>* 병원 주소</label>
        <div class="row">
          <div class="col-6">
            <input type="text" name="addr3" placeholder="우편번호" />
          </div>
          <div class="col-6"><input type="button" class="button" style="margin-bottom: 1em" onclick="execDaumPostcode2()" value="우편번호 찾기" /><br /></div>
        </div>
        <div class="row">
          <div class="col-7"><input type="text" name="addr4" placeholder="주소" /><br /></div>
          <div class="col-5">
            <input type="text" id="detailAddress" placeholder="상세주소" />
          </div>
        </div>

        <div class="row">
          <div class="col-6">
            <label>병원 직원수</label>
            <input type="number" name="hospital_employee" placeholder="20" />
          </div>
          <div class="col-6">
            <label>병원 평수</label>
            <input type="number" name="hospital_employee" placeholder="50" />
          </div>
        </div>
        <div>
          <label>병원 도면</label>
          <div id="image_container"></div>
          <input type="file" value="도안" class="mt-2" onchange="setThumbnail(event);" />
        </div> -->
        <br />
        <br />
        <!-- Spring으로 넘어가면 살리기 -->
        <input type="submit" class="button" value="제출" />
        <!-- <div class="text-center">
                    <a href="../user/signUp2.html" class="btn" style="background-color: #ffb440; color: black; font-size: 1.1em; width: 15%">제출</a>
                </div> -->
      </form>
    </div>
  </body>
</html>

<%-- <%@ include file="/WEB-INF/views/common/footer.jsp" %> --%>
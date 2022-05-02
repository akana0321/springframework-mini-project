<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="../css/header.css" />

    <style>
      .signup {
        background-color: #f1f3f5;
        width: 100%;
      }

      .signup .background {
        padding: 2%;
        background-color: #f1f3f5;
        margin: 0 25%;
      }

      .signup label {
        margin: 5% 0 0 0;
        font-size: 4;
        font-weight: 700;
        margin-bottom: 0.5em;
      }

      .signup input {
        border-width: 0.07em;
        border-radius: 0.2rem;
        border-style: none;
        width: 100%;
        padding: 0.6em;
      }

      .signup .button {
        background-color: #ffb440;
        border: none;
        color: black;
        font-size: medium;
        text-decoration: none;
        cursor: pointer;
      }
    </style>

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
  </head>
  <body>
    <script src="signUp.js"></script>
    <header>
      <a href="../main.html"><img src="/images/logo.png" class="img" /></a>
      <div class="menu" style="height: max-content">
        <div><a href="../studio765/765_advantage.html" class="menubtn">ABOUT US</a></div>
        <div><a href="../studio765/765_pickYourPY.html" class="menubtn">시스템 소개</a></div>
        <div><a href="../portfolio/portfolio.html" class="menubtn">포트폴리오</a></div>
        <div><a href="../question/questionIndex.html" class="menubtn">견적문의</a></div>
        <div><a href="../user/login.html" class="menubtn">로그인</a></div>
        <div><a href="../user/signUp1.html" class="menubtn_clicked">회원가입</a></div>
      </div>
    </header>

    <div class="signup">
      <form class="background col-6" action="/user/login.html" method="get">
        <div style="text-align: center; margin-bottom: 4%">
          <a href="../main.html"><img src="/images/logo.png" style="width: 30%" /></a>
        </div>
        <label>* 아이디</label>
        <div class="row">
          <div class="col-9">
            <input type="text" name="user_ID" placeholder="아이디 입력" />
          </div>
          <div class="col-3">
            <input type="button" class="button" name="certification" value="아이디 중복 확인" />
          </div>
        </div>
        <div class="row">
          <div class="col-6">
            <label>* 비밀번호</label>
            <input type="password" name="user_PW1" value="123456" />
          </div>
          <div class="col-6">
            <label>* 비밀번호 재확인</label>
            <input type="password" name="user_PW2" value="123456" />
          </div>
        </div>
        <div class="row">
          <div class="col-6">
            <label>* 이름</label>
            <input type="text" name="user_name" value="홍길동" />
          </div>
          <div class="col-6">
            <label>생년월일</label>
            <input type="date" id="birthday" name="birthday" />
          </div>
        </div>
        <label>* 주소</label>
        <div class="row">
          <div class="col-6">
            <input type="text" id="zonecode" name="addr1" placeholder="우편번호" />
          </div>
          <div class="col-6"><input type="button" class="button" style="margin-bottom: 1em" onclick="execDaumPostcode1()" value="우편번호 찾기" /><br /></div>
        </div>
        <div class="row">
          <div class="col-7"><input type="text" id="address" name="addr2" placeholder="주소" /><br /></div>
          <div class="col-5">
            <input type="text" id="detailAddress" placeholder="상세주소" />
          </div>
        </div>

        <label>* 이메일</label>
        <input type="email" name="user_email" placeholder="email@gmail.com" />
        <label>* 휴대전화</label>
        <div class="row mb-2">
          <div class="col-9">
            <input type="tel" name="user_phone" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" placeholder="010-****-****" />
          </div>
          <div class="col-3">
            <input type="button" class="button" name="certification" value="인증번호 받기" />
          </div>
        </div>
        <input type="text" name="certification" placeholder="인증번호를 입력하세요" />
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
        <input type="submit" class="button" name="" value="제출" />
        <!-- <div class="text-center">
                    <a href="../user/signUp2.html" class="btn" style="background-color: #ffb440; color: black; font-size: 1.1em; width: 15%">제출</a>
                </div> -->
      </form>
    </div>
  </body>
</html>

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
    <link rel="stylesheet" href="../css/title.css" />
    <link rel="stylesheet" href="../css/login.css" />
    <link rel="stylesheet" href="../css/button.css" />
    <link rel="stylesheet" href="../css/footer.css" />

    <style>
      * {
        font-family: ‘Noto Sans KR’, sans-serif;
      }

      html,
      body {
        margin: 0;
        padding: 0;
        width: 100%;
        /* height: 100%; */
      }

      header {
        position: sticky;
        z-index: 2;
        top: 0;
        width: 100%;
        height: 5em;
      }

      header .img {
        width: 8em;
        margin-top: 0.2em;
        margin-left: 2.5em;
        /* align-items: center; */
      }

      header .menu {
        float: right;
        display: flex;
        height: 100%;
        margin-right: 2.5em;
      }

      header .menubtn {
        font-weight: 600;
        color: black;
        padding: 25% 0;
        width: 6.5em;
        font-size: 1.1rem;
        /* text-decoration: none; */
        justify-content: center;
        cursor: pointer;
        display: flex;
      }

      header .menubtn:hover {
        font-weight: 900;
      }

      .loginmain {
        display: flex;
        flex-direction: column;
        width: 100%;
        height: 100%;
      }

      .loginmain label {
        font-size: 4em;
        font-weight: 700;
      }

      .loginmain .btn {
        display: flex;
        padding: 0;
        margin-top: 10%;
      }
    </style>

    <script>
      var index = 0;
      window.onload = function () {
        slideShow();
      };

      function slideShow() {
        var i;
        var x = document.getElementsByClassName("slide1");
        for (i = 0; i < x.length; i++) {
          x[i].style.display = "none";
        }
        index++;
        if (index > x.length) {
          index = 1;
        }
        x[index - 1].style.display = "block";
        setTimeout(slideShow, 4000);
      }

      function idFindopen() {
        document.getElementById("idFind").style.display = "block";
      }

      function idFindclose() {
        document.getElementById("idFind").style.display = "none";
      }

      function idFindCompleteopen() {
        document.getElementById("idFind").style.display = "none";
        document.getElementById("idFindComplete").style.display = "block";
      }

      function idFindCompleteclose() {
        document.getElementById("idFindComplete").style.display = "none";
      }

      function pwFindopen() {
        document.getElementById("idFindComplete").style.display = "none";
        document.getElementById("pwFind").style.display = "block";
      }

      function pwFindclose() {
        document.getElementById("pwFind").style.display = "none";
      }

      function pwFindCompleteopen() {
        document.getElementById("pwFind").style.display = "none";
        document.getElementById("pwFindComplete").style.display = "block";
      }

      function pwFindCompleteclose() {
        document.getElementById("pwFindComplete").style.display = "none";
      }
    </script>
  </head>
  <body>
    <!-- <header>
      <a href="/main.html"><img src="/images/logo.png" class="img" /></a>
      <div class="menu" style="height: max-content">
        <div><a href="/studio765/765_advantage.html" class="menubtn">ABOUT US</a></div>
        <div><a href="/studio765/765_pickYourPY.html" class="menubtn">시스템 소개</a></div>
        <div><a href="../portfolio/portfolio.html" class="menubtn">포트폴리오</a></div>
        <div><a href="/question/questionIndex.html" class="menubtn">견적문의</a></div>
        <div><a href="/user/login.html" class="menubtn">로그인</a></div>
        <div><a href="/user/signUp1.html" class="menubtn">회원가입</a></div>
      </div>
    </header> -->

    <div class="loginmain">
      <div style="top: 0; position: absolute; z-index: -1; width: 100%; height: 100%">
        <img class="slide1" style="width: 100%; height: 100%" src="../images/main/main9.png" />
        <img class="slide1" style="width: 100%; height: 100%" src="../images/main/main8.png" />
        <img class="slide1" style="width: 100%; height: 100%" src="../images/main/main7.png" />
        <img class="slide1" style="width: 100%; height: 100%" src="../images/main/main6.png" />
        <img class="slide1" style="width: 100%; height: 100%" src="../images/main/main5.png" />
        <img class="slide1" style="width: 100%; height: 100%" src="../images/main/main4.png" />
        <img class="slide1" style="width: 100%; height: 100%" src="../images/main/main3.png" />
        <img class="slide1" style="width: 100%; height: 100%" src="../images/main/main2.png" />
        <img class="slide1" style="width: 100%; height: 100%" src="../images/main/main1.png" />
      </div>
      <div>
        <form class="Form">
          <div class="login-title">로그인</div>
          <div>
            <input type="text" name="LoginId" id="Id" class="form-control" placeholder="아이디" required /><br />
            <input type="password" name="LoginPw" id="Pw" class="form-control" placeholder="비밀번호" required /><br />
            <input type="submit" class="user_button" value="로그인" onclick="location.href='../mypage/mypage.html'" />
          </div>

          <div style="text-align: center">
            <span onclick="idFindopen()" class="findbtn">아이디 찾기</span> | <span onclick="pwFindopen()" class="findbtn">비밀번호 찾기</span> |
            <a href="/user/signUp1.html" class="findbtn">회원가입</a>
          </div>
        </form>
      </div>

      <div class="find_background" id="idFind">
        <div class="form-popup">
          <form class="form-container">
            <div type="button" class="cancel" onclick="idFindclose()"><img src="../images/close.png" width="20em" /></div>
            <div class="login-title">아이디 찾기</div>

            <input type="text" name="FindIdName" id="Name" class="popup_form_control" placeholder="이름" required /><br />
            <input type="tel" name="FindIdTel" id="Tel" class="popup_form_control" placeholder="전화번호" required /><br />

            <!-- <button type="submit" class="btn">아이디 찾기</button> -->
            <!-- <div class="btn" onclick="idFindCompleteopen()">아이디 찾기</div> -->
            <input type="button" class="user_button" onclick="idFindCompleteopen()" value="아이디 찾기" />
          </form>
        </div>
      </div>

      <div class="find_background" id="idFindComplete">
        <div class="form-popup">
          <form class="form-container">
            <div type="button" class="cancel" onclick="idFindCompleteclose()"><img src="../images/close.png" width="20em" /></div>
            <div class="login-title">아이디 찾기</div>

            <div class="findedId">아이디는 user1입니다</div>
            <input type="button" class="user_button" onclick="location.href='../user/login.html'" value="로그인 하기" />

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
            <div type="button" class="cancel" onclick="pwFindclose()"><img src="../images/close.png" width="20em" /></div>
            <div class="login-title">비밀번호 찾기</div>

            <input type="text" name="FindPsName" id="Name" class="popup_form_control" placeholder="이름" required /><br />
            <input type="tel" name="FindPsTel" id="Tel" class="popup_form_control" placeholder="전화번호" required /><br />
            <input type="text" name="FindPsId" id="Id" class="popup_form_control" placeholder="아이디" required /><br />

            <input type="button" class="user_button" onclick="pwFindCompleteopen()" value="비밀번호 찾기" />
          </form>
        </div>
      </div>

      <div class="find_background" id="pwFindComplete">
        <div class="form-popup">
          <form class="form-container">
            <div type="button" class="cancel" onclick="pwFindCompleteclose()"><img src="../images/close.png" width="20em" /></div>
            <div class="login-title">비밀번호 변경</div>

            <input type="password" name="newpassword" id="Pw" class="popup_form_control" placeholder="새로운 비밀번호" required /><br />
            <input type="password" name="checknewpw" id="Pw" class="popup_form_control" placeholder="새로운 비밀번호 확인" required /><br />
            <input type="button" class="user_button" onclick="location.href='../user/login.html'" value="완료" />
          </form>
        </div>
      </div>
    </div>

    <!--  <footer>
      <div class="content">
        <div>
          <img src="/images/footer/logo2.png" class="img" />
          <div style="text-align: center">
            <a href="https://www.instagram.com/osstem/"><img src="../images/footer/instagram.png" style="height: 1.2em; width: 1.2em" /></a>
            <a href="https://www.youtube.com/"><img src="../images/footer/youtube.png" style="height: 1.2em; width: 1.2em" /></a>
            <a href="https://www.facebook.com/OSSTEM/"><img src="../images/footer/facebook.png" style="height: 1.2em; width: 1.2em" /></a>
            <a href="https://www.twitter.com/"><img src="../images/footer/twitter.png" style="height: 1.2em; width: 1.2em" /></a>
          </div>
        </div>
        <div class="inform">
          <p>
            서울시 강서구 마곡중앙12로 3 오스템임플란트(주) <br />
            사업자등록번호 : 112-81-47103 의료기기판매업신고번호 : 제 183호<br />
            대표이사 : 엄태관 통신판매업 신고번호 : 제 2020-서울강서-2751호 광고심의필 : 심의번호 2016-I10-29-1740<br />
            TEL : 02-2016-7000 FAX : 02-2016-7001 프로그램 고객센터 : 1588-7522 프로그램 가입문의 : 1588-7522
          </p>
          <p>COPYRIGHT © OSSTEM IMPLANT CO., LTD. ALL RIGHTS RESERVED.</p>
        </div>
      </div>
    </footer> -->
  </body>
</html>

<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>STUDIO 765</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
    />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="./resources/css/mainheader.css" />
    <link rel="stylesheet" href="./resources/css/footer.css" />
    <style>
    .main {
        display: flex;
        flex-direction: column;
        width: 100%;
        height: 100%;
      }

      .main label {
        font-size: 4em;
        font-weight: 700;
      }

      .main .btn {
        display: flex;
        padding: 0;
        margin-top: 10%;
      }

      .main .maincon {
        top: 0em;
        left: 0em;
        padding: 15em 7em 15em 14em;
        width: 50em;
        height: 100%;
        background-color: #ffffff;
        background-color: rgba( 255, 255, 255, 0.5 );
      }

      .main .mainbtn1 {
        border: 0.08em solid black;
        background-color: black;
        color: white;
        padding: 1rem 1.3rem;
        font-size: 1.3em;
        cursor: pointer;
        text-decoration: none;
      }

      .main .mainbtn2 {
        border: 0.08em solid black;
        color: black;
        padding: 1rem;
        font-size: 1.3em;
        cursor: pointer;
        text-decoration: none;
      }

      .main .mainbtn1:hover,
      .mainbtn2:hover {
        border: 0.08em solid white;
        background-color: white;
        color: black;
      }
    </style>
  </head>
  <body>
  	<script src="./resources/js/main.js"></script>
    <header>
      <a href="main.html"><img src="./resources/images/logo.png" class="img" /></a>
      <div class="menu" style="height: max-content">
        <div><a href="studio765/765_advantage.jsp" class="menubtn">ABOUT US</a></div>
        <div><a href="studio765/765_pickYourPY.jsp" class="menubtn">시스템 소개</a></div>
        <div><a href="../portfolio/portfolio.jsp" class="menubtn">포트폴리오</a></div>
        <div><a href="question/questionIndex.jsp" class="menubtn">견적문의</a></div>
        <div><a href="/user/login.jsp" class="menubtn">로그인</a></div>
        <div><a href="user/signUp1.jsp" class="menubtn">회원가입</a></div>
      </div>
    </header>
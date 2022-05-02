<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Studio765</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/mypage/style_interialQ.css" />
    <script src="${pageContext.request.contextPath }/resources/js/mypage/interialQ.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
</head>
<body>
<div id="interialq" style="width: 80%" class="text-center">
      <table class="mb-5">
        <td id="">
          <h1 class="mb-3"><font color="black" size="10" data-aos="zoom-in" data-aos-duration="1000">상품 문의</font></h1>
          <hr id="titleLine">
        </td>
      </table>
      <div class="bg-white">
        <div class="d-flex flex-column">
          <div class="d-flex shadow mb-3" style="background-color: #ffb3400c" >
            <div class="text-left col-md-7"> 
                <div class="fa fa-3x fa-arrow-circle-left float-left ml-5 mt-5" onclick="location.href='mypage'" id="back" data-aos="fade-in" data-aos-duration="2500"></div>
                <img src="${pageContext.request.contextPath }/resources/images/mypage/chair.png" class="m-5" style="width: 70%; border-radius: 2%;" data-aos="flip-left" data-aos-duration="3000"> 
            </div>
            <div class="col-md-5 mt-5" >
                <div style="margin: 10% 20% 10% 0;" data-aos="fade-in" data-aos-duration="1000" >
                    <sapn style="font-size: 200%; font-weight: 700;" >A체어 인테리어 심플 의자 8colors </sapn>
                </div>
                <div style="margin: 20% 20% 10% 0;" class="text-left">
                    <ul>
                        <div data-aos="fade-up" data-aos-duration="1000"><li class="fa  fa-check mb-5" style="font-size: 1.25em;"> 강선의 철제다리 사용</li></div>
                        <div data-aos="fade-up" data-aos-duration="1500"><li class="fa fa-2x fa-check mb-5" style="font-size: 1.25em;"> 스크래치에 강한 분체도장 방식</li></div>
                        <div data-aos="fade-up" data-aos-duration="2000"><li class="fa fa-2x fa-check mb-5" style="font-size: 1.25em;"> 안정감 있는 사용</li></div>
                        <div data-aos="fade-up" data-aos-duration="2000"><li class="fa fa-2x fa-check mb-5" style="font-size: 1.25em;"> 친환경 도료로 코팅한 8가지 컬러</li></div>
                    </ul>
                </div>
            </div>


          </div>
          <div id="question"> 
            <div class="col-md-12 shadow mb-3" style="background-color: rgb(239, 239, 239);" data-aos="zoom-in-up" data-aos-duration="2000" data-aos-offset="200">
              <div class="text-left mt-2 ml-2" style="font-size: 30px; font-weight: 600; padding-top: 2%;">문의</div>
              <hr/>
              <div class="text-left m-5">
                  <div>
<pre class="ml-3" >
    위의 상품이 ~~~
</pre>
                  </div>
                  <div class="text-right" style="padding-bottom: 2% ;">
                      <span style="font-size: 20px; font-weight: 500; ">2022-04-23 12:00:00</span>
                  </div>
              </div>
            </div>
            <div class="col-md-12 shadow mb-3" style="background-color: white" data-aos="zoom-in-up" data-aos-duration="2000" data-aos-offset="200">
              <div class="text-left mt-2 ml-2" style="font-size: 30px; font-weight: 600; padding-top: 2%;">답변</div>
              <hr/>
              <div class="text-left m-5">
                  <div>
<pre class="ml-3" >
    해당 해당 상품은~~~
</pre>
                  </div>
                  <div class="text-right"  style="padding-bottom: 2% ;">
                      <span style="font-size: 20px; font-weight: 500;">2022-04-23 12:00:00</span>
                  </div>
              </div>
            </div>
          </div>
          
          <div class="col-md-12 shadow" id="inquire" data-aos="fade-out-down" data-aos-duration="3000" data-aos-offset="200">
            <div class="text-left mt-2 ml-2" style="font-size: 30px; font-weight: 600; padding-top: 2%;">문의</div>
            <hr/>
            <form style="margin-top: 5%; margin-bottom: 5%" action="#">
              <div class="col-md-12">
                <div class="form-group m-4">
                  <textarea cols="60" class="form-control" id="content" rows="15" placeholder="문의 내용" style="resize: none" ></textarea>
                </div>
              </div>
              <div class="text-center">
                <div class="form-group m-4  text-right">
                  <intput type="submit" a class="btn btn-light" onclick="question()">문의하기</a>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </body>
</div>
<script>
  AOS.init();
</script>
</body>
</html>
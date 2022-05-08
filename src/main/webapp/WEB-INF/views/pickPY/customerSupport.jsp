<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
    <link rel="stylesheet" type="text/css"
      href="${pageContext.request.contextPath }/resources/css/mypage/style_interialQ.css" />
    <script src="${pageContext.request.contextPath }/resources/js/mypage/interialQ.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

    <% request.setCharacterEncoding("euc-kr"); String productID=request.getParameter("product");
      System.out.println("CustomerSupport=productID:"+productID); %>
  </head>

  <body>
    <div id="interialq" style="width: 80%" class="text-center">
      <table class="mb-5">
        <td id="">
          <h1 class="mb-3 medium-title">제품 문의</font>
          </h1>
          <hr id="titleLine">
        </td>
      </table>
      <div class="bg-white">
        <div class="d-flex flex-column">
          <div class="d-flex shadow mb-3" style="background-color: #ffb3400c">
            <div class="col-md-12 pt-5 text-left">
              <div class="fa fa-3x fa-arrow-circle-left float-left ml-5" onclick="location.href='mypage'" id="back"
                data-aos="fade-in" data-aos-duration="1500"></div>
              <div style="font-size: 40px; color: #343434; font-weight: 700; text-align: center; margin: 0 10%;"
                class="mb-5 " data-aos="fade-up" data-aos-duration="2000">예상 견적서</div>
              <div data-aos="slide-up" data-aos-duration="3000">
                <div>

                </div>
              </div>
            </div>
          </div>


          <div class="col-md-12 shadow" id="inquire" data-aos="fade-out-down" data-aos-duration="3000"
            data-aos-offset="200">
            <div class="text-left mt-2 ml-2" style="font-size: 30px; font-weight: 600; padding-top: 2%;">
              문의
            </div>
            <hr />

            <form style="margin-top: 5%; margin-bottom: 5%" action="#">
              <div class="col-md-12">
                <div class="form-group m-4">
                  <textarea cols="60" class="form-control" id="content" rows="15" placeholder="문의 내용"
                    style="resize: none"></textarea>
                </div>
              </div>
              <div class="text-center">
                <div class="form-group m-4  text-right">
                  <!-- <input type="file" class="btn"> -->
                  <intput type="submit" class="btn btn-light" onclick="question()">문의하기
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

    <script>
      AOS.init();
    </script>
  </body>

  </html>
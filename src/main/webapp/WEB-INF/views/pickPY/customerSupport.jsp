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

    <!-- title CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/aboutus/title.css" />

    <% /* request.setCharacterEncoding("euc-kr"); String productID=request.getParameter("product"); */
      /* System.out.println("CustomerSupport=productID:"+product.pname); */ %>
  </head>

  <body>
    <div id="interialq" style="width: 100%; height:100% left:0;" class="text-center p-0 m-0">
      <div class="bg-white">
        <div class="d-flex flex-column">
          <div  style="background-color: #ffb3400c">
            <div class="col-md-12 p-0 m-0 text-left">
              <!-- <div class="fa fa-3x fa-arrow-circle-left float-left ml-5" style="position:relative" onclick="location.href='productInfo'"
                id="back"></div> -->
              <div style="color: #343434; margin: 0 10%; position:relative" class="medium-title mb-5 ">
                상품문의<br/>
              </div>
              <div>
                <div class="small-title"> ${product.pname }</div>
                <div style="text-align:center;">
                  <img id="background-image"
                    src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1537517988_102268_1.jpg?gif=1&w=1280&h=1280&c=c"
                    width="100px" height="100px" style="position:relative;'" />
                  <br />
                  <br />
                  ${product.pdescription }
                  <br /><br />
                </div>
              </div>
            </div>
          </div>


          <div class="col-md-12" id="inquire">
            <div class="text-center mt-2 ml-2 small-title" >
              문의 내용
            </div>
            <hr />

            <form method="post" modelAttribute="question" action="productCS">
              <div class="col-md-12">
                <div class="form-group m-4">
                  <input type="text" class="form-control" id="content" name="qcontent" placeholder="문의 내용"
                    style="resize: none"></input>
                </div>
              </div>
              <div class="text-center">
                <div class="form-group m-4  text-right">
                  <!-- <input type="file" class="btn"> -->
                  <a href="questionProduct" class="btn  text-center ">문의하기</a>
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
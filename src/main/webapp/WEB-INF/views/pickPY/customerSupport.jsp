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

  </head>

  <body>
    <div id="interialq" style="width: 100%; height:100% left:0;" class="text-center p-0 m-0">
      <div class="bg-white">
        <div class="d-flex flex-column">
          <div style=" ">
            <div class="col-md-12 p-0 m-0 text-left">
              <div style=" margin: 0 10%; position:relative" class="medium-title mb-5 ">
                상품문의<br />
              </div>
              <div>
                <div class="small-title"> ${product.pname }</div>
                <div style="text-align:center;">
                  <img src="${attach.aoname }" width="200rem" height="200rem" style="position:relative;'" />
                  <br />
                  <br />
                  ${product.pdescription }
                  <br /><br />
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-12" id="inquire" style="background-color:white;'">
            <div class="text-center mt-2 ml-2 small-title">
              문의 내용
            </div>
            <hr />

            <form action="questionProduct?productId=${product.pid}" method="post">
              <div class="col-md-12">
                <div class="form-group m-4">
                  <a name="hi" value="what"></a>
                  <input id="qcontent" type="text" name="qcontent" style="line-height: 7rem; width: 100%"><br>
                </div>
              </div>
              <div class="text-center">
                <div class="form-group m-4">
                  <!-- <input type="file" class="btn"> -->
                  <input id="CSbtn" type="submit" class="btn btn-lg" style="color: white; font-size: 1.2em; background-color: #808080;" value="문의하기">
                </div>
              </div>
            </form>
          </div>
			<script>
			$(document).ready(function () {
				$("#CSbtn").click(function (){
					if($("#qcontent").val().length==0){
						alert("내용을 입력해주세요");
						$("#qcontent").focus();
						return false;
					}
				});
			});
			</script>
        </div>
      </div>
    </div>
  </body>

  </html>
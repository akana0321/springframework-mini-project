<%@ page contentType="text/html; charset=UTF-8" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <style>
      body,
      html {
        margin: 0;
        padding: 0;
        height: 100%;
        width: 100%;
      }

      *,
      *:before,
      *:after {
        box-sizing: border-box;
      }

      #product-container {
        height: 100%;
        width: 100%;
        /* margin-left: 20%; */
      }

      #product-svg {
        position: relative;
        z-index: 2;
        background-size: 100%;
        background-repeat: no-repeat;
        background-position: 50%;
        mix-blend-mode: multiply;
      }

      #product-shape {
        fill: #dbed64;
      }

      #background-image {
        position: absolute;
        top:0;
        width: 150pt;
        height: auto;
        z-index: 1;
        margin-left: 23%;
      }

      .colors {
        display: flex;
        position: fixed;
        bottom: 2em;
        right: 2em;
        z-index: 3;
      }

      .color {
        height: 20px;
        width: 20px;
        margin-left: 0.1em;
        border-radius: 18px;
        border: 2px solid #aaa;
        cursor: pointer;
        left: 0;
      }
    </style>

    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <!-- header CSS -->
    <!-- <link rel="stylesheet" href="../css/header.css" /> -->
    <!-- title CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/aboutus/title.css" />
    <!-- button CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/aboutus/button.css" />
  </head>

  <body>
    <div id="product-container">
    <div style="height:200px;">
      <%-- <%@ include file="/WEB-INF/views/pickPY/svg.jsp" %> --%>
      <img id="background-image"
          src="${attach.aoname }"
          alt="" />
          </div>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <div class="small-title"> <br/> ${product.pname } <br/> </div>
        <div id="colors" style="display: flex">
        </div>
        <div style="width:100%;">
        <div style="margin:0; justify-content: center; margin: 1.5em 2em;">
        ${product.pdescription }
        </div>
	        <div id="pCS" type="button" class="btn btn-lg btn-block gray-button px-3" style="color: white; width: fit-content; margin: 1em auto">
	          문의하기
	        </div>
        </div>
        추천 제품 <br/>
        <div class="row" style="margin:0; justify-content: left; margin: 1.5em 2em; width:85%; height: 30%; ">
        
	        <div class="col-6" style="width: 20%; height:20%; text-align:center;">
	        	<img 
          src="${recommandAttach1.aoname }"
          alt="" width="150rem" height="150rem" />
          <br/>${recommand1.pname}
          </div>
           <div class="col-6" style="width: 20%; height:20%; text-align:center;">
	        	<img 
          src="http://m.sortiedesign.kr/web/product/big/202102/64777b3dfee81d65e511589df3c73642.jpg"
          alt="" width="150rem" height="150rem" />
          <br/>${product.pname }
          </div>
	        </div>
	        </div>

        
        <script>
          /* Get product color from DB And add color div */
          $(document).ready(function () {
            /* next page */
            $("#pCS").on('click', function (e) {
              console.log("productId: " + productId);
              $("#product-container").load("customerSupport?productId=" + productId);
              console.log("workin?");
            });

            /* get product SVG */

            /* get product Image  */

            /* get product */
            var productId = '${product.pid}';
            /* get product color */
            var productColorStr = '${product.pcolor}';
            // since product pcolor is String not list | we need to split the colors
            /* var productArr = productColorStr.split(",");

            for (var i = 0; i < productArr.length; i++) {
              $("#colors").append(
                '<div class="color" style="background-color: ' + productArr[i] + '" data-hex="' + productArr[i] + '">' +
                "</div>"
              );
            } */
            /* Get Product Div */
            var els = document.getElementsByClassName("color");
            for (var i = 0; i < els.length; i++) {
              els[i].onclick = fun1;
            }
            /* Change Product Color
          get color from data-hex */
            function fun1(e) {
              const overlay = document.getElementById("product-shape");
              console.log(overlay);
              var color = e.target.getAttribute("data-hex");
              console.log(color);
              overlay.style.fill = color;
            }
          });

        </script>
    </div>
  </body>

  </html>
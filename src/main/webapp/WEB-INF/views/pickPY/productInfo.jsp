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
        top: 0;
        left: 0;
        width: 150pt;
        height: auto;
        z-index: 1;
        /* margin-left: 20%; */
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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <!-- header CSS -->
    <!-- <link rel="stylesheet" href="../css/header.css" /> -->
    <!-- title CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/aboutus/title.css" />
    <!-- button CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/aboutus/button.css" />
  </head>

  <body>
    <div id="product-container">
      <%@ include file="/WEB-INF/views/pickPY/svg.jsp" %>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <div class="small-title"> ${product.pname }</div>
        <div id="colors" style="display: flex">
        </div>
        <img id="background-image"
          src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1537517988_102268_1.jpg?gif=1&w=1280&h=1280&c=c"
          alt="" />
        내용: ${product.pdescription }
        <div id="pCS" type="button" class="btn btn-lg btn-block gray-button" style="color: white; bottom:0;">
          문의하기
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
            var productArr = productColorStr.split(",");

            for (var i = 0; i < productArr.length; i++) {
              $("#colors").append(
                '<div class="color" style="background-color: ' + productArr[i] + '" data-hex="' + productArr[i] + '">' +
                "</div>"
              );
            }
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
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
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

    <!-- Bootstrap CSS -->
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous"
    />
    <!-- header CSS -->
    <!-- <link rel="stylesheet" href="../css/header.css" /> -->
    <!-- title CSS -->
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath }/resources/css/aboutus/title.css"
    />
    <!-- button CSS -->
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath }/resources/css/aboutus/button.css"
    />
  </head>
  <body>
    <div id="product-container">
       <%@ include file="/WEB-INF/views/pickPY/svg.jsp" %>
      <!-- Optional JavaScript -->
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <script
        src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"
      ></script>
      <script
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"
      ></script>
      <script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"
      ></script>
      <div class="small-title"> ${product.pname }</div>
      <div id="colors" style="display: flex">
       <!-- 색상:
        <div
          class="color"
          style="background-color: #e1e851"
          data-hex="#e1e851"
        ></div>
        <div
          class="color"
          style="background-color: #8cd147"
          data-hex="#8cd147"
        ></div>
        <div
          class="color"
          style="background-color: #4a9ccf"
          data-hex="#4a9ccf"
        ></div>
        <div
          class="color"
          style="background-color: #661f45"
          data-hex="#661f45"
        ></div>
        <div
          class="color"
          style="background-color: #1e2024"
          data-hex="#1e2024"
        ></div> -->
      </div>
      <img
        id="background-image"
        src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1537517988_102268_1.jpg?gif=1&w=1280&h=1280&c=c"
        alt=""
      />
      내용: ${product.pdescription }
      <a
        type="button"
        class="btn btn-lg btn-block gray-button"
        href="customerSupport?=${product.pid }"
        style="color: white"
      >
        문의하기
      </a>
      <script>
      /* Get product color from DB And add color div */
         $(document).ready(function () {
        	 /* get product SVG */
        	 
        	 /* get product Image  */
        	 
        /* get product color */
         var productColorStr = '${product.pcolor}';
          // since product pcolor is String not list | we need to split the colors
          var productArr = productColorStr.split(",");
  
          for (var i = 0; i < productArr.length; i++) {
            $("#colors").append(
              '<div class="color" style="background-color: '+productArr[i]+'" data-hex="'+productArr[i]+'">' +
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

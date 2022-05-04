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
      <!-- Product svg Info -->
      <?xml version="1.0" standalone="no"?>
      <!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 20010904//EN" "http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd">
      <svg
        id="product-svg"
        version="1.0"
        xmlns="http://www.w3.org/2000/svg"
        width="150.000000pt"
        height="150.000000pt"
        viewBox="0 0 500.000000 500.000000"
        preserveAspectRatio="xMidYMid meet"
      >
        <g
          transform="translate(000.000000,500.000000) scale(0.100000,-0.100000)"
          fill="#000000"
          stroke="none"
        >
          <path
            id="product-shape"
            d="M2392 1870 c-30 -10 -57 -22 -61 -26 -4 -5 -18 -44 -30 -88 -12 -43
  -51 -145 -86 -227 -80 -186 -95 -236 -95 -318 0 -138 127 -836 166 -913 27
  -54 85 -107 140 -128 79 -29 213 -43 359 -37 149 6 216 25 282 82 74 63 93
  131 174 620 69 413 68 432 -43 685 -31 69 -68 163 -83 210 -34 102 -70 145
  -110 130 -14 -5 -38 -19 -54 -31 -26 -19 -44 -21 -212 -24 -202 -4 -215 -1
  -244 55 -18 34 -30 36 -103 10z"
          />
        </g>
      </svg>
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

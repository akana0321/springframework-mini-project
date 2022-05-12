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
	 <!-- Get PYRoom version(PY) -->
         <%
    	request.setCharacterEncoding("euc-kr");
		int version = Integer.parseInt(request.getParameter("version"));
    	%>
  <body>
    <div id="product-container" style="text-align:center;">
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <div class="medium-title" style="margin-top:15%"> <%=version%>PY</div>
        <div style="margin-top:10%"> 가구를 클릭하여<br/> 상세 정보를 확인해보세요 </div>
        <div id="colors" style="display: flex">
        </div>
        
        
        <script>
          /* Get product color from DB And add color div */
          $(document).ready(function () {
            /* next page */
            $("#pCS").on('click', function (e) {
              $("#product-container").load("customerSupport?productId=" + productId);
            });

          });

        </script>
    </div>
  </body>

  </html>
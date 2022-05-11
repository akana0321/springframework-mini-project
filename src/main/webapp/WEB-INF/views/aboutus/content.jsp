<%@ page contentType="text/html; charset=UTF-8" %>

  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>STUDIO 765</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
      rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mainheader.css" />
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />

    <!-- header CSS -->
    <!-- <link rel="stylesheet" href="../css/header.css"/> -->
    <!-- title CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/aboutus/title.css" />
    <!-- button CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/aboutus/button.css" />
    <!-- underline -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/aboutus/underline.css" />


  </head>

  <body>
    <%@ include file="/WEB-INF/views/common/mainheader.jsp" %> 
      <div style="top: 0; position:absolute; z-index: -1; width: 100%; height: 100%; padding-top:4%; background-image: url('${pageContext.request.contextPath }/resources/images/pickPY/osstembackgroundmd.jpeg'); background-repeat: no-repeat;">
      <%-- <%@ include file="/WEB-INF/views/aboutus/aboutusHeader.jsp" %> --%>
      <%@ include file="/WEB-INF/views/aboutus/aboutus.jsp" %>
  	   <%-- <%@ include file="/WEB-INF/views/aboutus/interiornumber.jsp" %>  --%>
  	  <%-- <%@ include file="/WEB-INF/views/aboutus/advantage.jsp" %> --%>
	<%-- <%@ include file="/WEB-INF/views/aboutus/meetteam.jsp" %> --%>
	</div>
        
      <!-- Optional JavaScript -->
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
      <!-- magic scroll -->
      <script src="//cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.7/ScrollMagic.min.js"></script>
      <script src="//cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.7/plugins/debug.addIndicators.min.js"></script>
  </body>
  </html>
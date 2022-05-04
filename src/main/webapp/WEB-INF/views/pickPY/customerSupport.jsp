<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        
         <!-- title CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/aboutus/title.css" />
    <!-- button CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/aboutus/button.css" />
	
	 <%
    	request.setCharacterEncoding("euc-kr");
		int version = Integer.parseInt(request.getParameter("version"));
		System.out.println("PYRoom = version:"+version);
    	%>
        
  </head>
  <body>
    

    <div class="d-flex row justify-content-center col-sm-12 mt-5" >
        <div class="-sm-3" style="margin-right: 2vh;" >
            <div style="object-fit:contain;"> <img src="${pageContext.request.contextPath }/resources/images/pickPY/k3000b.PNG" style="width:40vh; display: block;"> </div>
            <div class="m-4" >
                <div  style="font-weight: bold;"><font size="6">리프팅 의자</font></div>
                <div>색상: 핑크, 블랙, 레드<br/><br/> A/S 2년 무료 <br/> 고객 평점 1위</div>
            </div>
        </div>
        <div class="col-sm-7">
            <div  class="mb-4" style="font-weight: bold; border-bottom: 0.2rem solid;"><font size="6">문의하기</font></div>
            <input  class="mb-1" type="text" style="height: 100%; width: 100%; background-color: #f1f3f5; border: none; text-align: top;">
            <div class="m-1" style="text-align:center;">
              <div class="text-center">
                <a
                  href="../user/signUp2.html"
                  class="btn gray-button"
                  >문의하기</a
                >
              </div>
            </div>
        </div>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
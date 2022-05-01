<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   <!DOCTYPE html>
<html lang="en">

<head>
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
      rel="stylesheet"
    />
    <style>
      * {
        font-family: ‘Noto Sans KR’, sans-serif;
      }
    </style>
	<meta charset="UTF-8">
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
	<title>Anything Zoomer | Image</title>

	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/pickPY/anythingzoomer.css">

    <link
    rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
    crossorigin="anonymous"
  />

   <!-- header CSS -->
   <link rel="stylesheet" href="../css/header.css" />
  <!-- title CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/aboutus/title.css" />
  <!-- button CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/aboutus/button.css" />

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/jquery.anythingzoomer.js"></script>
	<style>
	/* FOR IMAGE DEMO */
	.small img { width: 60em; height: 53em; margin-top: 5%;}
	.large img { width: 135em; height: 110em; }

	.small img.kyptos { width: 32em; height: 24em; }
	.large img.kyptos { width: 80em; height: 60em; }
	</style>

	<script>
	$(function() {

		$(".zoom").anythingZoomer();

	});
	</script>
</head>
<body >


<div id="main-content" style="position: relative;">
    <div class="small-title" style="position: absolute; top: 0%; right:5%;">마우스를 올려 도면도 상세보기</div>
    <div class="title" style="position: absolute; top: 40%; left:15%;">
        50PY
    </div>
	<div class="zoom m-4" >
		<div class="small">
			<img src="https://i0.wp.com/916er.com/wp-content/uploads/%EC%B9%98%EA%B3%BC%EC%9D%B8%ED%85%8C%EB%A6%AC%EC%96%B405-1.jpg" alt="small rushmore">
		</div>
		<div class="large">
			<img src="https://i0.wp.com/916er.com/wp-content/uploads/%EC%B9%98%EA%B3%BC%EC%9D%B8%ED%85%8C%EB%A6%AC%EC%96%B405-1.jpg" alt="big rushmore">
		</div>
	</div>
    <div class="card-subtitle" style="position: absolute; top: 25%; right:10%;">
        <ul class="card-subtitle list-unstyled mt-3 mb-4 ml-3">
            <li>
              <img src="${pageContext.request.contextPath }/resources/images/pickPY/check.png" class="m-2" />대기실
            </li>
            <li>
              <img src="${pageContext.request.contextPath }/resources/images/pickPY/check.png" class="m-2" />상담실
            </li>
            <li>
              <img src="${pageContext.request.contextPath }/resources/images/pickPY/check.png" class="m-2" />교정
              진료실 3개
            </li>
            <li>
              <img src="${pageContext.request.contextPath }/resources/images/pickPY/check.png" class="m-2" />수술실
            </li>
            <li>
              <img src="${pageContext.request.contextPath }/resources/images/pickPY/check.png" class="m-2" />소독실
            </li>
            <li>
              <img src="${pageContext.request.contextPath }/resources/images/pickPY/check.png" class="m-2" />진료실
              수납기구
            </li>
          </ul>
          <div class="card-div-button mt-5 p-0" style="position: relative;">
                <a
                  type="button"
                  class="btn btn-lg btn-block gray-button"
                  href="PYroom"
                >
                  구경하기
                </a>
                <a
                  type="button"
                  class="btn btn-lg btn-block white-round-button"
                  href="content"
                >
                  이전
                </a>
                <div class="caution m-2">
                  상품 디자인은 실제와 다를 수 있습니다
                </div>
              </div>

    </div>

</div>

</body>

</html>
   
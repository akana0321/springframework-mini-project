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
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mainheader.css" />
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
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/aboutus/title.css" />
    <!-- button CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/aboutus/button.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css" />

  </head>
  <body>
	<%@ include file="/WEB-INF/views/common/mainheader.jsp" %>
	<%@ include file="/WEB-INF/views/common/loginModal.jsp" %>
    <div style="top:0; position:absolute; z-index: -1; width: 100%; height: 100%;">
        <!-- vid -->
        <video src="${pageContext.request.contextPath }/resources/images/pickPY/lastplz.mov" loop muted autoplay width="100%" style="top: 0%;"></video>

        <!-- card -->
      <div>
        <div
          id="pickPYHeader"
          class="col text-center mt-5 mb-5"
          style="width: 100%"
        >
          <div
            class="row-1 align-self-center"
            style="
              width: 40%;
              float: none;
              margin: 0 auto;
              font-weight: bold;
              font-size: 4em;
            "
          >
            <font color="black">Pick Your PY</font>
          </div>
          <div
            class="row-1 align-self-center"
            style="text-align: center; font-size: 1.5em"
          >
            STUDIO 765 3????????? PY??? ???????????????
          </div>
        </div>
        <div id="pickPYBody" class="d-flex justify-content-center row">
          <div id="PYcard" class="col-sm-3 pl-5 pr-3">
            <div
              class="card mb-2 box-shadow"
              style="border-radius: 1rem; height: 100%"
            >
              <div class="card-body" style="padding-bottom: 8rem">
                <h1
                  class="card-title pricing-card-title"
                  style="
                    text-align: center;
                    font-weight: bold;
                    font-size: 2.5em;
                  "
                >
                  <font color="black">50PY</font>
                </h1>
                <ul class="list-unstyled mt-3 mb-4 ml-3">
                  <li>
                    <img
                      src="${pageContext.request.contextPath }/resources/images/pickPY/check.png"
                      class="m-2"
                    />?????????
                  </li>
                  <li>
                    <img
                      src="${pageContext.request.contextPath }/resources/images/pickPY/check.png"
                      class="m-2"
                    />?????????
                  </li>
                  <li>
                    <img src="${pageContext.request.contextPath }/resources/images/pickPY/check.png" class="m-2" />??????
                    ????????? 3???
                  </li>
                  <li>
                    <img
                      src="${pageContext.request.contextPath }/resources/images/pickPY/check.png"
                      class="m-2"
                    />?????????
                  </li>
                  <li>
                    <img
                      src="${pageContext.request.contextPath }/resources/images/pickPY/check.png"
                      class="m-2"
                    />?????????
                  </li>
                  <li>
                    <img
                      src="${pageContext.request.contextPath }/resources/images/pickPY/check.png"
                      class="m-2"
                    />????????? ????????????
                  </li>
                </ul>
                <div
                  style="
                    bottom: 0px;
                    position: absolute;
                    bottom: 1vh;
                    width: 90%;
                    padding-right: 2rem;
                    width: 100%;
                  "
                >
                  <a
                    type="button"
                    class="btn btn-lg btn-block"
                    href="showPY?version=50"
                    style="color: white; background-color: #808080;"
                  >
                    ????????????
                  </a>
                  <div class="m-2" style="text-align: center; font-size: 0.5em">
                    <font color="gray"
                      >?????? ???????????? ????????? ?????? ??? ????????????</font
                    >
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div id="PYcard" class="col-sm-3 pl-4 pr-4">
            <div
              class="card mb-2 box-shadow"
              style="border-radius: 1rem; height: 100%"
            >
              <div class="card-body" style="padding-bottom: 8rem">
                <h1
                  class="card-title pricing-card-title"
                  style="text-align: center; font-weight: bold"
                >
                  <font color="black" size="6">65PY</font>
                </h1>
                <ul class="list-unstyled mt-3 mb-4 ml-3">
                  <li>
                    <img
                      src="${pageContext.request.contextPath }/resources/images/pickPY/check.png"
                      class="m-2"
                    />?????????
                  </li>
                  <li>
                    <img
                      src="${pageContext.request.contextPath }/resources/images/pickPY/check.png"
                      class="m-2"
                    />?????????
                  </li>
                  <li>
                    <img src="${pageContext.request.contextPath }/resources/images/pickPY/check.png" class="m-2" />??????
                    ????????? 3???
                  </li>
                  <li>
                    <img src="${pageContext.request.contextPath }/resources/images/pickPY/check.png" class="m-2" />??????
                    ????????? 3???
                  </li>
                  <li>
                    <img
                      src="${pageContext.request.contextPath }/resources/images/pickPY/check.png"
                      class="m-2"
                    />?????????
                  </li>
                  <li>
                    <img
                      src="${pageContext.request.contextPath }/resources/images/pickPY/check.png"
                      class="m-2"
                    />?????????
                  </li>
                  <li>
                    <img
                      src="${pageContext.request.contextPath }/resources/images/pickPY/check.png"
                      class="m-2"
                    />????????? ????????????
                  </li>
                  <li>
                    <img
                      src="${pageContext.request.contextPath }/resources/images/pickPY/check.png"
                      class="m-2"
                    />?????????
                  </li>
                </ul>
                <div
                  style="
                    bottom: 0px;
                    position: absolute;
                    bottom: 1vh;
                    width: 90%;
                    padding-right: 2rem;
                    width: 100%;
                  "
                >
                <a
                    type="button"
                    class="btn btn-lg btn-block"
                    href="showPY?version=65"
                    style="color: white; background-color: #808080;"
                  >
               ????????????
              </a>
              <div class="m-2 caution" style="text-align: center">
                  ?????? ???????????? ????????? ?????? ??? ????????????
              </div>
                </div>
              </div>
            </div>
          </div>
          <div id="PYcard" class="col-sm-3 pl-3 pr-5">
            <div
              class="card mb-2 box-shadow"
              style="border-radius: 1rem; height: 100%; position: relative"
            >
              <div class="card-body" style="padding-bottom: 8rem">
                <h1
                  class="card-title pricing-card-title"
                  style="text-align: center; font-weight: bold"
                >
                  <font color="black" size="6">100PY</font>
                </h1>
                <ul class="list-unstyled mt-3 mb-4">
                  <ul class="list-unstyled mt-3 mb-4 ml-3">
                    <li>
                      <img
                        src="${pageContext.request.contextPath }/resources/images/pickPY/check.png"
                        class="m-2"
                      />?????????
                    </li>
                    <li>
                      <img
                        src="${pageContext.request.contextPath }/resources/images/pickPY/check.png"
                        class="m-2"
                      />?????????
                    </li>
                    <li>
                      <img
                        src="${pageContext.request.contextPath }/resources/images/pickPY/check.png"
                        class="m-2"
                      />?????? ????????? 3???
                    </li>
                    <li>
                      <img
                        src="${pageContext.request.contextPath }/resources/images/pickPY/check.png"
                        class="m-2"
                      />?????? ????????? 5???
                    </li>
                    <li>
                      <img
                        src="${pageContext.request.contextPath }/resources/images/pickPY/check.png"
                        class="m-2"
                      />?????????
                    </li>
                    <li>
                      <img
                        src="${pageContext.request.contextPath }/resources/images/pickPY/check.png"
                        class="m-2"
                      />?????????
                    </li>
                    <li>
                      <img
                        src="${pageContext.request.contextPath }/resources/images/pickPY/check.png"
                        class="m-2"
                      />????????? ????????????
                    </li>
                    <li>
                      <img
                        src="${pageContext.request.contextPath }/resources/images/pickPY/check.png"
                        class="m-2"
                      />?????????
                    </li>
                    <li>
                      <img
                        src="${pageContext.request.contextPath }/resources/images/pickPY/check.png"
                        class="m-2"
                      />???????????????
                    </li>
                  </ul>
                </ul>
                <div
                  style="
                    bottom: 0px;
                    position: absolute;
                    bottom: 1vh;
                    width: 90%;
                    padding-right: 2rem;
                    width: 100%;
                  "
                >
                  <a
                    type="button"
                    class="btn btn-lg btn-block"
                    href="showPY?version=100"
                    style="color: white; background-color: #808080;"
                  >
                   ????????????
                  </a>
                  <div class="m-2 caution" style="text-align: center">
                      ?????? ???????????? ????????? ?????? ??? ????????????
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    </div>
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
    <a href="${pageContext.request.contextPath }/aboutus/content"><img style="position:fixed; bottom: 1em; left: 1em; width: 3em;" src="${pageContext.request.contextPath }/resources/images/pre.png" /></a>
  </body>
  
</html>

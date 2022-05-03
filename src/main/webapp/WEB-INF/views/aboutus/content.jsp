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
    <div
      style="top: 0; position: absolute; z-index: -1; width: 100%; height: 100%"
    >
      <img
        src="${pageContext.request.contextPath }/resources/images/aboutus/osstembackground.jpeg"
        style="width: 100%; object-fit: cover"
      />
      <div>
        <!-- interior number  -->
      <div class="mt-4">
        <div
          class="d-flex justify-content-center mt-4"
          style="text-align: center; height: fit-content"
        >
          <div class="col-md-4">
            <span class="small-title">치과 인테리어수</span>
          </div>
          <div class="col-md-4">
            <span class="small-title">직원수</span>
          </div>
          <div class="col-md-4">
            <span class="small-title">수상</span>
          </div>
        </div>
        <div class="d-flex justify-content-center" style="text-align: center">
          <div class="col-md-4">
            <span id="count1" class="display-4"></span>
          </div>
          <div class="col-md-4">
            <span id="count2" class="display-4"></span>
          </div>
          <div class="col-md-4">
            <span id="count3" class="display-4"></span>
          </div>
        </div>
      </div>


        <!-- ADVANTAGE -->
        <div class="mb-4">
          <div class="row justify-content-center m-0 my-5" style="width: 80%">
            <div class="title underline">
              왜 <span class="" color="#ffb440">오스템</span>을 선택해야할까요?
            </div>
          </div>
          <div class="d-flex justify-content-center py-3 mt-5">
            <div class="row justify-content-center">
              <div class="col-sm-5 d-flex row mr-4">
                <div class="col-sm-4 p-0">
                  <img
                    src="${pageContext.request.contextPath }/resources/images/aboutus/advanage1.png"
                  style="width: 80%; display: block; margin: auto; left:0"
                  />
                </div>
                <div class="col-sm-8 p-0" style="text-align: center">
                  <div class="small-title my-3">가구 DESGIN</div>
                  <div class="small-subtitle">
                    최적의 진료환경 구축을 위한<br />
                    수납 시스템 적용
                  </div>
                </div>
              </div>
              <div class="col-sm-4 d-flex row p-0 py-4">
                <div class="col-sm-4 p-0">
                  <img
                    src="${pageContext.request.contextPath }/resources/images/aboutus/advanage2.png"
                    style="width: 90%; display: block; margin: auto"
                  />
                </div>
                <div class="col-sm-8 p-0" style="text-align: center">
                  <div class="small-title my-3">배관 DESGIN</div>
                  <div class="small-subtitle">
                    점검 및 청소, 교체가 용이한<br />
                    배관 설계 및 시공
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row justify-content-center py-3">
            <div class="col-sm-4 d-flex row p-4">
              <div class="col-sm-4 p-0">
                <img
                  src="${pageContext.request.contextPath }/resources/images/aboutus/advanage3.png"
                  style="width: 90%; display: block; margin: auto; left:0"
                />
              </div>
              <div class="col-sm-8 p-0" style="text-align: center">
                <div class="small-title my-2">LIGHTING 플랜</div>
                <div class="small-subtitle">
                  각 실별 최적의 조명 설계로<br />
                  편안한 대기실, 상담실,<br />
                  정확한 진료실 구현
                </div>
              </div>
            </div>
            <div class="col-sm-4 d-flex row p-4">
              <div class="col-sm-4 p-0">
                <img
                  src="${pageContext.request.contextPath }/resources/images/aboutus/advanage4.png"
                  style="width: 90%; display: block; margin: auto"
                />
              </div>
              <div class="col-sm-8 p-0" style="text-align: center">
                <div class="small-title my-2">H.I DESGIN</div>
                <div class="small-subtitle">
                  치과 LOGO 디자인 및 간판<br />
                  그리고 서식류 디자인까지<br />
                  토탈 서비스
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- MEET OUR TEAM -->
      <div class="my-3" style="background-color: #f1f3f5; padding-top: 2%">
        <div class="col text-center my-3 pl-0" style="width: 100%">
          <div class="title row-1 align-self-center">
            MEET OUR <span class="circle-sketch-highlight">TEAM</span>
          </div>
          <div class="subtitle row-1 align-self-center">
            국내 최대 규모 <br />
            35명의 전문가로 이루어진 팀과 함께합니다
          </div>
        </div>
        <div class="d-flex justify-content-center row p-5">
          <div class="col-2 m-0 p-0">
            <div>
              <img
                src="${pageContext.request.contextPath }/resources/images/aboutus/employee1.png"
                style="width: 100%; display: block; margin: auto"
              />
            </div>
            <div class="m-4" style="text-align: center">
              <div style="font-weight: bold"><font size="5">김체리</font></div>
              <div id="sns">
                <a href="https://www.instagram.com/"
                  ><img
                    src="${pageContext.request.contextPath }/resources/images/aboutus/instagram.png"
                    style="height: 1.5rem; width: 1.5rem"
                /></a>
                <a href="https://www.youtube.com/"
                  ><img
                    src="${pageContext.request.contextPath }/resources/images/aboutus/youtube.png"
                    style="height: 2rem; width: 2rem"
                /></a>
                <a href="https://www.facebook.com/"
                  ><img
                    src="${pageContext.request.contextPath }/resources/images/aboutus/facebook.png"
                    style="height: 1.5rem; width: 1.5rem"
                /></a>
                <a href="https://www.twitter.com/"
                  ><img
                    src="${pageContext.request.contextPath }/resources/images/aboutus/twitter.png"
                    style="height: 2rem; width: 2rem"
                /></a>
              </div>
            </div>
          </div>
          <div class="col-2 m-0 p-0">
            <div>
              <img
                src="${pageContext.request.contextPath }/resources/images/aboutus/employee2.png"
                style="width: 100%; display: block; margin: auto"
              />
            </div>
            <div class="m-4" style="text-align: center">
              <div style="font-weight: bold"><font size="5">김체리</font></div>
              <div id="sns">
                <a href="https://www.instagram.com/"
                  ><img
                    src="${pageContext.request.contextPath }/resources/images/aboutus/instagram.png"
                    style="height: 1.5rem; width: 1.5rem"
                /></a>
                <a href="https://www.youtube.com/"
                  ><img
                    src="${pageContext.request.contextPath }/resources/images/aboutus/youtube.png"
                    style="height: 2rem; width: 2rem"
                /></a>
                <a href="https://www.facebook.com/"
                  ><img
                    src="${pageContext.request.contextPath }/resources/images/aboutus/facebook.png"
                    style="height: 1.5rem; width: 1.5rem"
                /></a>
                <a href="https://www.twitter.com/"
                  ><img
                    src="${pageContext.request.contextPath }/resources/images/aboutus/twitter.png"
                    style="height: 2rem; width: 2rem"
                /></a>
              </div>
            </div>
          </div>
          <div class="col-2 m-0 p-0">
            <div>
              <img
                src="${pageContext.request.contextPath }/resources/images/aboutus/employee3.png"
                style="width: 100%; display: block; margin: auto"
              />
            </div>
            <div class="m-4" style="text-align: center">
              <div style="font-weight: bold"><font size="5">김체리</font></div>
              <div id="sns">
                <a href="https://www.instagram.com/"
                  ><img
                    src="${pageContext.request.contextPath }/resources/images/aboutus/instagram.png"
                    style="height: 1.5rem; width: 1.5rem"
                /></a>
                <a href="https://www.youtube.com/"
                  ><img
                    src="${pageContext.request.contextPath }/resources/images/aboutus/youtube.png"
                    style="height: 2rem; width: 2rem"
                /></a>
                <a href="https://www.facebook.com/"
                  ><img
                    src="${pageContext.request.contextPath }/resources/images/aboutus/facebook.png"
                    style="height: 1.5rem; width: 1.5rem"
                /></a>
                <a href="https://www.twitter.com/"
                  ><img
                    src="${pageContext.request.contextPath }/resources/images/aboutus/twitter.png"
                    style="height: 2rem; width: 2rem"
                /></a>
              </div>
            </div>
          </div>
          <div class="col-2 m-0 p-0">
            <div>
              <img
                src="${pageContext.request.contextPath }/resources/images/aboutus/employee4.png"
                style="width: 100%; display: block; margin: auto"
              />
            </div>
            <div class="m-4" style="text-align: center">
              <div style="font-weight: bold"><font size="5">김체리</font></div>
              <div id="sns">
                <a href="https://www.instagram.com/"
                  ><img
                    src="${pageContext.request.contextPath }/resources/images/aboutus/instagram.png"
                    style="height: 1.5rem; width: 1.5rem"
                /></a>
                <a href="https://www.youtube.com/"
                  ><img
                    src="${pageContext.request.contextPath }/resources/images/aboutus/youtube.png"
                    style="height: 2rem; width: 2rem"
                /></a>
                <a href="https://www.facebook.com/"
                  ><img
                    src="${pageContext.request.contextPath }/resources/images/aboutus/facebook.png"
                    style="height: 1.5rem; width: 1.5rem"
                /></a>
                <a href="https://www.twitter.com/"
                  ><img
                    src="${pageContext.request.contextPath }/resources/images/aboutus/twitter.png"
                    style="height: 2rem; width: 2rem"
                /></a>
              </div>
            </div>
          </div>
          <div class="col-2 m-0 p-0">
            <div>
              <img
                src="${pageContext.request.contextPath }/resources/images/aboutus/employee5.png"
                style="width: 100%; display: block; margin: auto"
              />
            </div>
            <div class="m-4" style="text-align: center">
              <div style="font-weight: bold"><font size="5">김체리</font></div>
              <div id="sns">
                <a href="https://www.instagram.com/"
                  ><img
                    src="${pageContext.request.contextPath }/resources/images/aboutus/instagram.png"
                    style="height: 1.5rem; width: 1.5rem"
                /></a>
                <a href="https://www.youtube.com/"
                  ><img
                    src="${pageContext.request.contextPath }/resources/images/aboutus/youtube.png"
                    style="height: 2rem; width: 2rem"
                /></a>
                <a href="https://www.facebook.com/"
                  ><img
                    src="${pageContext.request.contextPath }/resources/images/aboutus/facebook.png"
                    style="height: 1.5rem; width: 1.5rem"
                /></a>
                <a href="https://www.twitter.com/"
                  ><img
                    src="${pageContext.request.contextPath }/resources/images/aboutus/twitter.png"
                    style="height: 2rem; width: 2rem"
                /></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- YEARDATE -->
    <script>
      // number counter animation
      document.addEventListener("DOMContentLoaded", () => {
        function counter(id, start, end, duration) {
          let obj = document.getElementById(id),
            current = start,
            range = end - start,
            increment = end > start ? 1 : -1,
            step = Math.abs(Math.floor(duration / range)),
            timer = setInterval(() => {
              current += increment;
              obj.textContent = current;
              if (current == end) {
                clearInterval(timer);
              }
            }, step);
        }
        counter("count1", 0, 600, 4000); //총 인테리어수
        counter("count2", 100, 35, 2500); // 직원 수
        counter("count3", 0, 20, 3000); // 수상 수
      });
    </script>
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
    <!-- magic scroll -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.7/ScrollMagic.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.7/plugins/debug.addIndicators.min.js"></script>
  </body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>STUDIO 765</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/portfolio/style_portfolio.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css" />
    <script src="${pageContext.request.contextPath }/resources/js/portfolio/portfolio.js"></script>

    <link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	<%@ include file="/WEB-INF/views/common/loginModal.jsp" %>
 	<div id="portfolio" class="d-flex flex-column justify-content-center align-content-center mt-5">
		<nav >
            <div class="nav nav-pills justify-content-center" id="nav-tab" role="tablist" >
              <a class="nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true"><strong >50PY</strong></a>
              <a class="nav-link ml-2 mr-2" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false"><strong >65PY</strong></a>
              <a class="nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false"><strong >100PY</strong></a>
            </div>
          </nav>
          
          <div class="tab-content" id="nav-tabContent" style="margin: 3% 5% 0% 5%">
              <!-- 50PY -->
            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                <div id="portfolioImg" class="d-flex justify-content-center m-4"  >
                    <div data-aos="fade-up" data-aos-duration="1000" id="showimg" class="col-md-4" onmouseenter="show('sub_10')" onmouseleave="document.getElementById('sub_10').style.visibility = 'hidden'">
                        <a href="#" class="trigger"><img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_10.jpg"  id="thumbnail" /></a>
                    </div>
                    <div id="content" class="text-left col-md-9 " style="margin-left: 8%;"><strong id="sub_10">좋은 치과</strong></div>
                    
                    <div data-aos="fade-up" data-aos-duration="2000" id="showimg" class="col-md-4" onmouseenter="show('sub_6')" onmouseleave="document.getElementById('sub_6').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_6.jpg"  id="thumbnail" />
                    </div>
                    <div id="content" class="text-center col-md-10"><strong id="sub_6">바른 치과</strong></div>

                    <div data-aos="fade-up" data-aos-duration="3000" id="showimg" class="col-md-4" onmouseenter="show('sub_3')" onmouseleave="document.getElementById('sub_3').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_3.jpg"  id="thumbnail"/>
                    </div>
                    <div id="content" class="text-right col-md-9" style="margin-right: 8%;" ><strong id="sub_3">사과 치과</strong></div>
                </div>
                <div id="portfolioImg" class="d-flex justify-content-center m-4" >
                    <div data-aos="fade-up" data-aos-offset="350" data-aos-duration="1000" id="showimg" class="col-md-4" onmouseenter="show('sub_20')" onmouseleave="document.getElementById('sub_20').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_20.jpg"  id="thumbnail" />
                    </div>
                    <div id="content" class="text-left col-md-9" style="margin-left: 8%;"><strong id="sub_20">서울 위드 치과</strong></div>
                    
                    <div data-aos="fade-up" data-aos-offset="350" data-aos-duration="2000" id="showimg" class="col-md-4" onmouseenter="show('sub_19')" onmouseleave="document.getElementById('sub_19').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_19.jpg"  id="thumbnail" />
                    </div>
                    <div id="content" class="text-center col-md-10" ><strong id="sub_19">스탠다드 치과</strong></div>

                    <div data-aos="fade-up" data-aos-offset="350" data-aos-duration="3000" id="showimg" class="col-md-4" onmouseenter="show('sub_18')" onmouseleave="document.getElementById('sub_18').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_18.jpg"  id="thumbnail"/>
                    </div>
                    <div id="content" class="text-right col-md-9" style="margin-right: 8%;" ><strong id="sub_18">강변 맑은 치과</strong></div>
                </div>
                <div id="portfolioImg" class="d-flex justify-content-center m-4" >
                    <div data-aos="fade-up" data-aos-offset="350" data-aos-duration="1000" data-aos-easing="easw-out-cublic" id="showimg" class="col-md-4" onmouseenter="show('sub_17')" onmouseleave="document.getElementById('sub_17').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_17.jpg"  id="thumbnail" />
                    </div>
                    <div id="content" class="text-left col-md-9" style="margin-left: 8%;"><strong id="sub_17">이로움 치과</strong></div>
                    
                    <div data-aos="fade-up" data-aos-offset="350" data-aos-duration="2000"  data-aos-easing="easw-out-cublic"id="showimg" class="col-md-4" onmouseenter="show('sub_16')" onmouseleave="document.getElementById('sub_16').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_16.jpg"  id="thumbnail" />
                    </div>
                    <div id="content" class="text-center col-md-10" ><strong id="sub_16">이로움 치과</strong></div>

                    <div data-aos="fade-up" data-aos-offset="350" data-aos-duration="3000" data-aos-easing="easw-out-cublic" id="showimg" class="col-md-4" onmouseenter="show('sub_15')" onmouseleave="document.getElementById('sub_15').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_15.jpg"  id="thumbnail"/>
                    </div>
                    <div id="content" class="text-right col-md-9" style="margin-right: 8%;" ><strong id="sub_15">이로움 치과</strong></div>
                </div>
                <div id="portfolioImg" class="d-flex justify-content-center m-4" >
                    <div  data-aos="fade-up" data-aos-offset="150" data-aos-duration="1000" data-aos-easing="easw-out-cublic" id="showimg" class="col-md-4" onmouseenter="show('sub_14')" onmouseleave="document.getElementById('sub_14').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_14.jpg"  id="thumbnail" />
                    </div>
                    <div id="content" class="text-left col-md-9" style="margin-left: 8%;"><strong id="sub_14">이로움 치과</strong></div>
                    
                    <div  data-aos="fade-up" data-aos-offset="150" data-aos-duration="2000" data-aos-easing="easw-out-cublic" id="showimg" class="col-md-4" onmouseenter="show('sub_13')" onmouseleave="document.getElementById('sub_13').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_13.jpg"  id="thumbnail" />
                    </div>
                    <div id="content" class="text-center col-md-10" ><strong id="sub_13">이로움 치과</strong></div>

                    <div  data-aos="fade-up" data-aos-offset="150" data-aos-duration="3000" data-aos-easing="easw-out-cublic" id="showimg" class="col-md-4" onmouseenter="show('sub_12')" onmouseleave="document.getElementById('sub_12').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_12.jpg"  id="thumbnail"/>
                    </div>
                    <div id="content" class="text-right col-md-9" style="margin-right: 8%;" ><strong id="sub_12">이로움 치과.</strong></div>
                </div>
            </div>
            <div class="modal-wrapper">
                <div class="modal ">
                  <div class="content">
                    <section class="body">
                        <div class="container">
                            <div class="testimonial-view">
                                <div id="testimonialCarousel" class="carousel slide" data-ride="carousel">
                                    <div class="head">
                                        <a class="btn-close trigger" href="#">
                                          <i class="fa fa-3x fa-times" aria-hidden="true"></i>
                                        </a>
                                      </div>
                                    <div class="carousel-inner">
                                        <div class="carousel-item active">
                                            <div class="testimonial-block">
                                                <div class="testimonial-block_content position-absolute " id="subtitle">
                                                    <p>상담실</p>
                                                </div>
                                                <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_10.jpg" >
                                                
                                            </div>
                                            
                                        </div>
                                        <div class="carousel-item">
                                            <div class="testimonial-block">
                                                <div class="testimonial-block_content position-absolute " id="subtitle">
                                                    <p>진료실</p>
                                                </div>
                                                <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_9.jpg">
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <div class="testimonial-block">
                                                <div class="testimonial-block_content position-absolute " id="subtitle">
                                                    <p>대기실</p>
                                                </div>
                                                <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_6.jpg">
                                            </div>
                                        </div>
                                    </div>
                                    <a class="carousel-control-prev mt-5" href="#testimonialCarousel" role="button" data-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                    <a class="carousel-control-next mt-5" href="#testimonialCarousel" role="button" data-slide="next">
                                        <span class="carousel-control-next-icon " aria-hidden="true"></span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </section>
                  </div>
                </div>
            </div>
            <!-- 65PY -->
            <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab" >
                <div id="portfolioImg" class="d-flex justify-content-center m-4">
                    <div data-aos="fade-up" data-aos-duration="1000"  id="showimg" class="col-md-4" onmouseenter="show('sub_11')" onmouseleave="document.getElementById('sub_11').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_11.jpg"  id="thumbnail" />
                    </div>
                    <div id="content" class="text-left col-md-10" style="margin-left: 10%;"><strong id="sub_11">이로움 치과</strong></div>
                    
                    <div data-aos="fade-up" data-aos-duration="2000" id="showimg" class="col-md-4" onmouseenter="show('sub_7')" onmouseleave="document.getElementById('sub_7').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_7.jpg"  id="thumbnail" />
                    </div>
                    <div id="content" class="text-center col-md-10" ><strong id="sub_7">초이스 치과</strong></div>

                    <div data-aos="fade-up" data-aos-duration="3000" id="showimg" class="col-md-4" onmouseenter="show('sub_4')" onmouseleave="document.getElementById('sub_4').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_4.jpg"  id="thumbnail"/>
                    </div>
                    <div id="content" class="text-right col-md-10" style="margin-right: 10%;" ><strong id="sub_4">아이디 치과</strong></div>
                </div>
                
                <div id="portfolioImg" class="d-flex justify-content-center m-4" >
                    <div data-aos="fade-up" data-aos-offset="350" data-aos-duration="1000" data-aos-easing="easw-out-cublic" id="showimg" class="col-md-4" onmouseenter="show('sub_17')" onmouseleave="document.getElementById('sub_17').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_17.jpg"  id="thumbnail" />
                    </div>
                    <div id="content" class="text-left col-md-10" style="margin-left: 10%;"><strong id="sub_17">아이디 치과</strong></div>
                    
                    <div data-aos="fade-up" data-aos-offset="350" data-aos-duration="2000"  data-aos-easing="easw-out-cublic"id="showimg" class="col-md-4" onmouseenter="show('sub_16')" onmouseleave="document.getElementById('sub_16').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_16.jpg"  id="thumbnail" />
                    </div>
                    <div id="content" class="text-center col-md-10" ><strong id="sub_16">아이디 치과</strong></div>

                    <div data-aos="fade-up" data-aos-offset="350" data-aos-duration="3000" data-aos-easing="easw-out-cublic" id="showimg" class="col-md-4" onmouseenter="show('sub_15')" onmouseleave="document.getElementById('sub_15').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_15.jpg"  id="thumbnail"/>
                    </div>
                    <div id="content" class="text-right col-md-10" style="margin-right: 10%;" ><strong id="sub_15">아이디 치과</strong></div>
                </div>
                <div id="portfolioImg" class="d-flex justify-content-center m-4" >
                    <div data-aos="fade-up" data-aos-offset="150" data-aos-duration="1000" id="showimg" class="col-md-4" onmouseenter="show('sub_20')" onmouseleave="document.getElementById('sub_20').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_20.jpg"  id="thumbnail" />
                    </div>
                    <div id="content" class="text-left col-md-10" style="margin-left: 10%;"><strong id="sub_20">아이디 치과</strong></div>
                    
                    <div data-aos="fade-up" data-aos-offset="200" data-aos-duration="2000" id="showimg" class="col-md-4" onmouseenter="show('sub_19')" onmouseleave="document.getElementById('sub_19').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_19.jpg"  id="thumbnail" />
                    </div>
                    <div id="content" class="text-center col-md-10" ><strong id="sub_19">아이디 치과.</strong></div>

                    <div data-aos="fade-up" data-aos-offset="250" data-aos-duration="3000" id="showimg" class="col-md-4" onmouseenter="show('sub_18')" onmouseleave="document.getElementById('sub_18').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_18.jpg"  id="thumbnail"/>
                    </div>
                    <div id="content" class="text-right col-md-10" style="margin-right: 10%;" ><strong id="sub_18">아이디 치과</strong></div>
                </div>
                <div id="portfolioImg" class="d-flex justify-content-center m-4" >
                    <div  data-aos="fade-up" data-aos-offset="100" data-aos-duration="1000" data-aos-easing="easw-out-cublic" id="showimg" class="col-md-4" onmouseenter="show('sub_14')" onmouseleave="document.getElementById('sub_14').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_14.jpg"  id="thumbnail" />
                    </div>
                    <div id="content" class="text-left col-md-10" style="margin-left: 10%;"><strong id="sub_14">아이디 치과</strong></div>
                    
                    <div  data-aos="fade-up" data-aos-offset="200" data-aos-duration="2000" data-aos-easing="easw-out-cublic" id="showimg" class="col-md-4" onmouseenter="show('sub_13')" onmouseleave="document.getElementById('sub_13').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_13.jpg"  id="thumbnail" />
                    </div>
                    <div id="content" class="text-center col-md-10" ><strong id="sub_13">아이디 치과</strong></div>

                    <div  data-aos="fade-up" data-aos-offset="300" data-aos-duration="3000" data-aos-easing="easw-out-cublic" id="showimg" class="col-md-4" onmouseenter="show('sub_12')" onmouseleave="document.getElementById('sub_12').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_12.jpg"  id="thumbnail"/>
                    </div>
                    <div id="content" class="text-right col-md-10" style="margin-right: 10%;" ><strong id="sub_12">아이디 치과</strong></div>
                </div>
            </div>
            <!-- 100PY -->
            <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                <div id="portfolioImg" class="d-flex justify-content-center m-4">
                    <div id="showimg" data-aos="fade-up" data-aos-duration="1000" class="col-md-4" onmouseenter="show('sub_1')" onmouseleave="document.getElementById('sub_1').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_1.jpg"  id="thumbnail" />
                    </div>
                    <div id="content" class="text-left col-md-10" style="margin-left: 10%;"><strong id="sub_1">에스플란트 치과</strong></div>
                    
                    <div id="showimg" data-aos="fade-up" data-aos-duration="2000" class="col-md-4" onmouseenter="show('sub_8')" onmouseleave="document.getElementById('sub_8').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_8.jpg"  id="thumbnail" />
                    </div>
                    <div id="content" class="text-center col-md-10" ><strong id="sub_8">보스톤 치과</strong></div>

                    <div id="showimg" data-aos="fade-up" data-aos-duration="3000" class="col-md-4" onmouseenter="show('sub_9')" onmouseleave="document.getElementById('sub_9').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_9.jpg"  id="thumbnail"/>
                    </div>
                    <div id="content" class="text-right col-md-10" style="margin-right: 10%;" ><strong id="sub_9">사랑 치과</strong></div>
                </div>
                <div id="portfolioImg" class="d-flex justify-content-center m-4" >
                    <div  data-aos="fade-up" data-aos-offset="300" data-aos-duration="1000" data-aos-easing="easw-out-cublic" id="showimg" class="col-md-4" onmouseenter="show('sub_14')" onmouseleave="document.getElementById('sub_14').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_14.jpg"  id="thumbnail" />
                    </div>
                    <div id="content" class="text-left col-md-10" style="margin-left: 10%;"><strong id="sub_14">보스톤 치과</strong></div>
                    
                    <div  data-aos="fade-up" data-aos-offset="300" data-aos-duration="2000" data-aos-easing="easw-out-cublic" id="showimg" class="col-md-4" onmouseenter="show('sub_13')" onmouseleave="document.getElementById('sub_13').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_13.jpg"  id="thumbnail" />
                    </div>
                    <div id="content" class="text-center col-md-10" ><strong id="sub_13">보스톤 치과</strong></div>

                    <div  data-aos="fade-up" data-aos-offset="300" data-aos-duration="3000" data-aos-easing="easw-out-cublic" id="showimg" class="col-md-4" onmouseenter="show('sub_12')" onmouseleave="document.getElementById('sub_12').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_12.jpg"  id="thumbnail"/>
                    </div>
                    <div id="content" class="text-right col-md-10" style="margin-right: 10%;" ><strong id="sub_12">보스톤 치과</strong></div>
                </div>
                <div id="portfolioImg" class="d-flex justify-content-center m-4" >
                    <div data-aos="fade-up" data-aos-offset="350" data-aos-duration="1000" id="showimg" class="col-md-4" onmouseenter="show('sub_20')" onmouseleave="document.getElementById('sub_20').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_20.jpg"  id="thumbnail" />
                    </div>
                    <div id="content" class="text-left col-md-10" style="margin-left: 10%;"><strong id="sub_20">보스톤 치과</strong></div>
                    
                    <div data-aos="fade-up" data-aos-offset="350" data-aos-duration="2000" id="showimg" class="col-md-4" onmouseenter="show('sub_19')" onmouseleave="document.getElementById('sub_19').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_19.jpg"  id="thumbnail" />
                    </div>
                    <div id="content" class="text-center col-md-10" ><strong id="sub_19">보스톤 치과</strong></div>

                    <div data-aos="fade-up" data-aos-offset="350" data-aos-duration="3000" id="showimg" class="col-md-4" onmouseenter="show('sub_18')" onmouseleave="document.getElementById('sub_18').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_18.jpg"  id="thumbnail"/>
                    </div>
                    <div id="content" class="text-right col-md-10" style="margin-right: 10%;" ><strong id="sub_18">보스톤 치과</strong></div>
                </div>
                <div id="portfolioImg" class="d-flex justify-content-center m-4" >
                    <div data-aos="fade-up" data-aos-offset="350" data-aos-duration="1000" data-aos-easing="easw-out-cublic" id="showimg" class="col-md-4" onmouseenter="show('sub_17')" onmouseleave="document.getElementById('sub_17').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_17.jpg"  id="thumbnail" />
                    </div>
                    <div id="content" class="text-left col-md-10" style="margin-left: 10%;"><strong id="sub_17">보스톤 치과</strong></div>
                    
                    <div data-aos="fade-up" data-aos-offset="300" data-aos-duration="2000"  data-aos-easing="easw-out-cublic"id="showimg" class="col-md-4" onmouseenter="show('sub_16')" onmouseleave="document.getElementById('sub_16').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_16.jpg"  id="thumbnail" />
                    </div>
                    <div id="content" class="text-center col-md-10" ><strong id="sub_16">보스톤 치과</strong></div>

                    <div data-aos="fade-up" data-aos-offset="300" data-aos-duration="3000" data-aos-easing="easw-out-cublic" id="showimg" class="col-md-4" onmouseenter="show('sub_15')" onmouseleave="document.getElementById('sub_15').style.visibility = 'hidden'">
                        <img src="${pageContext.request.contextPath }/resources/images/portfolio/sub_15.jpg"  id="thumbnail"/>
                    </div>
                    <div id="content" class="text-right col-md-10" style="margin-right: 10%;" ><strong id="sub_15">보스톤 치과</strong></div>
                </div>
                
            </div>
          </div>
    </div>

    <script>
    AOS.init();
    </script>
    <footer style="position:static">
      <div class="content">
        <div>
          <img src="${pageContext.request.contextPath}/resources/images/footer/logo2.png" class="img" />
          <div style="text-align: center">
            <a href="https://www.instagram.com/osstem/"><img src="${pageContext.request.contextPath}/resources/images/footer/instagram.png" style="height: 1.2em; width: 1.2em" /></a>
            <a href="https://www.youtube.com/"><img src="${pageContext.request.contextPath}/resources/images/footer/youtube.png" style="height: 1.2em; width: 1.2em" /></a>
            <a href="https://www.facebook.com/OSSTEM/"><img src="${pageContext.request.contextPath}/resources/images/footer/facebook.png" style="height: 1.2em; width: 1.2em" /></a>
            <a href="https://www.twitter.com/"><img src="${pageContext.request.contextPath}/resources/images/footer/twitter.png" style="height: 1.2em; width: 1.2em" /></a>
          </div>
        </div>
        <div class="inform">
          <p>
            서울시 강서구 마곡중앙12로 3 오스템임플란트(주) <br />
            사업자등록번호 : 112-81-47103 의료기기판매업신고번호 : 제 183호<br />
            대표이사 : 엄태관 통신판매업 신고번호 : 제 2020-서울강서-2751호 광고심의필 : 심의번호 2016-I10-29-1740<br />
            TEL : 02-2016-7000 FAX : 02-2016-7001 프로그램 고객센터 : 1588-7522 프로그램 가입문의 : 1588-7522
          </p>
          <p>COPYRIGHT © OSSTEM IMPLANT CO., LTD. ALL RIGHTS RESERVED.</p>
        </div>
      </div>
    </footer>
</body>


</html>
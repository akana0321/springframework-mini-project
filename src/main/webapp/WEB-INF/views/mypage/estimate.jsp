<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Studio765</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/mypage/style_estimate.css" />
 <script src="//cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.7/ScrollMagic.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.7/plugins/debug.addIndicators.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TweenMax.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.7/plugins/animation.gsap.js"></script>
</head>
<body style="background-image:  url('${pageContext.request.contextPath }/resources/images/mypage/background.jpg'); background-size: cover; background-repeat: no-repeat;">
<div id="interialq" >
    <div  class="text-center" style="padding-right: 10%;" id="table">
            <div style="font-size: 40px; color: #343434; font-weight: 700;" class="mb-5">예상 견적서</div>
        <div>
            <div>  
            <div style="clear: both;">
                <div style="width: 80%;" class="m-auto" >
                    <table class="table text-center" >
                        <tr id="table_top" class="box table-borderless">
                            <th style="width: 70%; text-align: left;" >제품명</th>
                            <th style="width: 10%;">가격</th>
                            <th style="width: 10%">개수</th>
                            <th style="width: 10%">총액</th>
                        </tr>
                        <tr >
                           <td style="text-align: left;">바닥재 : 강화 마루(조립식으로 시공, 친환경 인증)</td>
                           <td>20,000 ₩</td>
                           <td>3</td>
                           <td>60,000 ₩</td>
                        </tr>
                        <tr >
                            <td style="text-align: left;">바닥재 : 강화 마루(조립식으로 시공, 친환경 인증)</td>
                            <td>20,000 ₩</td>
                            <td>3</td>
                            <td>60,000 ₩</td>
                         </tr>
                         <tr >
                            <td style="text-align: left;">바닥재 : 강화 마루(조립식으로 시공, 친환경 인증)</td>
                            <td>20,000 ₩</td>
                            <td>3</td>
                            <td>60,000 ₩</td>
                         </tr>
                         <tr  >
                            <td style="text-align: left;">바닥재 : 강화 마루(조립식으로 시공, 친환경 인증)</td>
                            <td>20,000 ₩</td>
                            <td>3</td>
                            <td>60,000 ₩</td>
                         </tr>
                         <tr >
                            <td style="text-align: left;">바닥재 : 강화 마루(조립식으로 시공, 친환경 인증)</td>
                            <td>20,000 ₩</td>
                            <td>3</td>
                            <td>60,000 ₩</td>
                         </tr>
                         <tr >
                            <td style="text-align: left;">바닥재 : 강화 마루(조립식으로 시공, 친환경 인증)</td>
                            <td>20,000 ₩</td>
                            <td>3</td>
                            <td>60,000 ₩</td>
                         </tr>
                        </table>
                        <div class="table text-left" id="table_bottom" >
                        </div>
                        <div class=" text-left mt-5">
                            <p class="mb-2" style="font-weight: 600;">Invoice Total</p>
                            <p style="font-size: 200%;"><strong>400,000,000₩</strong> </p>
                        </div>
                        <div id = "trigger">
                            <table class="table table-borderless  table-condensed text-right">
                                <tr>
                                    <th style="font-weight: 600; width: 80%;" >SubTotal</th>
                                    <th>399,800,000 ₩</th>
                                </tr>
                                <tr>
                                    <td style="font-weight: 600;">Sales Tax</td>
                                    <td style="font-weight: 600;">200,000 ₩</td>
                                </tr>
                            </table>
                        </div>
                     </div>                          
                </div>
                <div class="btn  text-center " style="opacity: 0;" id="animation">문의하기</div>
                <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                <div class="btn  text-center " style="opacity: 0;" id="animation2">다시하기</div>
            </div>
        </div>
    </div>
</div>
<script>
    var controller = new ScrollMagic.Controller({addIndicators: true});

    var tween = TweenMax.to("#animation", 0.5, {
    scale: 5.0,
    x: -300,
    y: 0,
    opacity: 1
    });

    var scene = new ScrollMagic.Scene({
    triggerElement: "#trigger",

    })
    .setTween(tween)
    .setPin("#animation")
    .addTo(controller);

    var controller2 = new ScrollMagic.Controller({addIndicators: false});

    var tween2 = TweenMax.to("#animation2", 0.5, {
    scale: 5.0,
    x: 300,
    y: -320,
    opacity: 1
    });

    var scene = new ScrollMagic.Scene({
    triggerElement: "#animation",

    })
    .setTween(tween2)
    .addTo(controller2);
  
</script>
</body>
</html>
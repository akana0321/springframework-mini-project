<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Studio 765</title>

    <link rel="stylesheet" hrxef="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/header.css"/>
    <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/title.css"/>

</head>
<body>
    
    <header>
        <div>
            <a href="../main.html"><img src="/images/logo.png" class="img"/></a>
            <div class="menu" style="height: max-content;">
            <div><a href="../studio765/765_advantage.html" class="menubtn">ABOUT US</a></div>
            <div><a href="../studio765/765_pickYourPY.html" class="menubtn">시스템 소개</a></div>
            <div><a href="../portfolio/portfolio.html" class="menubtn">포트폴리오</a></div>
            <div><a href="../question/questionIndex.html" class="menubtn_clicked">견적문의</a></div>
            <div><a href="../user/login.html" class="menubtn">로그인</a></div>
            <div><a href="../user/signUp1.html" class="menubtn">회원가입</a></div>
          </div>
        </div>
    </header>

    <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/question/question_result.css" />
    <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/mypage/style_interialQ.css" />
    <div id="resultContainer">
        <div id="interialq" class="estimate">
            <div class="text-center" style="padding-right: 10%;">
                    <div style="font-size: 40px; color: #343434; font-weight: 700;" class="mb-5">예상 견적서</div>
                <div>
                    <div>  
                    <div style="clear: both;">
                        <div style="width: 80%;" class="m-auto">
                            <table class="table text-center" >
                                <tr id="table_top" class="table-borderless">
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
                                </table>
                                <div class="table text-left" id="table_bottom" >
                                </div>
                                <div class="text-left mt-5">
                                    <p class="mb-2" style="font-weight: 600;">Invoice Total</p>
                                    <p style="font-size: 200%;"><strong>400,000,000₩</strong> </p>
                                </div>
                                <div >
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
                    </div>
                </div>
            </div>
        </div>
        <div>
            <!-- 내용이에요 -->
        </div>
    </div>
</body>
</html>
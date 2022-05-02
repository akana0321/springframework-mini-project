<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Studio 765</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

    <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/header.css"/>
    <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/title.css"/>
    <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/question/question_index.css" />
    <link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/mypage/style_interialQ.css"/>
    
    <script src="${ pageContext.request.contextPath }/resources/js/question/question.js"></script>
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

    <div id="questionFormContainer">
        <div id="progressbarContainer" class="navbar">
            <ul id="progressbar">
                <li class="questionContent01">치과 목적</li>
                <li class="questionContent02">건물 유형</li>
                <li class="questionContent03">바닥재</li>
                <li class="questionContent04">벽지</li>
                <li class="questionContent05">치과용 의자</li>
                <li class="questionContent06">가구</li>
                <li class="questionResult01">완료!</li>
            </ul>
        </div>

        <form id="questionForm" method="post" action="questionValue">
            <div id="questionContainer" class="d-flex justify-content-center align-items-center">
                <div class="fullscrean text-center" style="padding-left: 0; padding-right: 0;">
                    <div id="questionStart" class="fullscrean d-flex flex-column align-items-center" style="padding-left: 7rem;">
                        <p class="card-title mb-5">나의 치과 견적 765Studio와 함께 알아볼까요?</p>
                        <img src="${ pageContext.request.contextPath }/resources/images/question/calc.png" class="mb-5"/>
                        <a onclick="pyInputOpen()" class="btn-start">
                            <div class="wrap-start">
                                <span>시작하기</span>
                            </div>
                        </a>
                    </div>
                <div id="questionPY">
                    <div class="form-popup">
                        <form class="form-container">
                            <div class="cancel" onclick="pyInputClose()" style="margin-top: .25rem;">
                                <img src="${ pageContext.request.contextPath }/resources/images/close.png" width="20em">
                            </div>
                            <div class="card-title" style="height: 30%;">평수를 입력해주세요</div>
                            <div class="d-flex flex-column justify-content-center align-items-center">
                                <div>
                                    <input type="text" name="epy" id="py" placeholder="평수" value="" required  style="border-bottom: 0.1em solid black;"/> 평
                                    <small id="pyHelp" class="form-text text-muted" hidden></small>
                                </div> 
                                <a id="pyComplete" onclick="pyInputComplete()">입력완료</a>
                            </div>
                        </form>
                    </div>
                </div>
                <div id="questionContent01" class="form-group fullscrean" style="display: none; background-color: #f1f3f5;">
                    <p class="card-title" style="padding-left: 10rem;">시공할 치과의 건물 유형을 선택해주세요</p>
                    <div class="d-flex justify-content-center align-content-center" style="padding-left: 10rem;">
                        <!-- 단독 -->
                        <div>
                            <label>
                                <input type="radio" name="ebuildingType" id="house" value="house"/>
                                <div class="card text-center">
                                    <div class="card-header card-title">
                                        단독
                                    </div>
                        
                                    <div class="card-body p-3">
                                        <img src="${ pageContext.request.contextPath }/resources/images/question/house.png" class="card-img"/>
                                    </div>
                                </div>
                            </label>
                        </div>
                        <!-- 상가/오피스텔 -->
                        <div>
                            <label>
                                <input type="radio" name="ebuildingType" id="officetel" value="officetel"/>
                                <div class="card">
                                    <div class="card-header card-title">
                                        상가/오피스텔
                                    </div>
                        
                                    <div class="card-body p-3">
                                        <img src="${ pageContext.request.contextPath }/resources/images/question/officetel.png"  class="card-img"/>
                                    </div>
                                </div>
                            </label>
                        </div>
                    </div>
                    <div class="d-flex justify-content-center align-content-center" style="padding-left: 10rem;">
                        <a href="#questionContent02" onclick="setDisplay('questionContent02')" class="btn-move-even"><img id="arrow" src="${ pageContext.request.contextPath }/resources/images/question/arrow.png"/></a>
                    </div>
                </div>
                <div id="questionContent02" class="form-group fullscrean" style="display: none;">
                    <p class="card-title mb-5" style="padding-left: 10rem;">치과의 목적을 선택해주세요</p>
                    <div class="d-flex justify-content-center align-content-center" style="padding-left: 10rem;">
                        <!-- 일반치과 -->
                        <div>
                            <label>
                                <input type="radio" name="edentalType" id="normalDental" value="normal"/>
                                <div class="card">
                                    <div class="card-header card-title" for="normalDental">
                                        일반치과
                                    </div>
                        
                                    <div class="card-body mb-1">
                                        <img src="${ pageContext.request.contextPath }/resources/images/question/normal.PNG" class="card-img mb-2"/>
                                        <ul class="small-title">
                                            <li>X-RAY 실</li>
                                            <li>메이크업 실</li>
                                        </ul>
                                    </div>
                                </div>
                            </label>
                        </div>
                        <!-- 교정치과 -->
                        <div>
                            <label>
                                <input type="radio" name="edentalType" id="barcesDental" value="barces"/>
                                    <div class="card">
                                        <div class="card-header card-title">
                                            교정치과
                                        </div>
                            
                                        <div class="card-body">
                                            <img src="${ pageContext.request.contextPath }/resources/images/question/braces.PNG"  class="card-img"/>
                                            <ul class="small-title">
                                                <li>기공실</li>
                                                <li>예진실</li>
                                            </ul>
                                        </div>
                                    </div>
                            </label>
                        </div>
                        <!-- 어린이치과 -->
                        <div>
                            <label>
                                <input type="radio" name="edentalType" id="childrenDental" value="children">
                                <div class="card card-title">
                                    <div class="card-header">
                                        어린이 치과
                                    </div>
                        
                                    <div class="card-body">
                                        <img src="${ pageContext.request.contextPath }/resources/images/question/children.PNG"  class="card-img"/>
                                        <ul class="small-title">
                                            <li>놀이방 시설</li>
                                            <li>어린이용 치과의자</li>
                                        </ul>
                                    </div>
                                </div>
                            </label>
                        </div>
                    </div>              
                    <a href="#questionContent03" onclick="setDisplay('questionContent03')" class="btn-move-odd" style="padding-left: 8rem;"><img id="arrow" src="${ pageContext.request.contextPath }/resources/images/question/arrow.png"/></a>
                </div>
                <div id="questionContent03" class="form-group fullscrean" style="display: none; background-color: #f1f3f5;">
                    <p class="card-title" style="padding-left: 10rem;">바닥재를 선택해주세요</p>
                    <div class="d-flex justify-content-center align-content-center" style="padding-left: 10rem;">
                        <!-- 강화마루 -->
                        <div>
                            <label>
                                <input type="radio" name="efloorType" id="floorLaminate" value="laminate"/>
                                <div class="card">
                                    <div class="card-header card-title">
                                        강화마루
                                    </div>
                        
                                    <div class="card-body mb-1">
                                        <img src="${ pageContext.request.contextPath }/resources/images/question/laminate.PNG" class="card-img"/>
                                        <ul class="small-title">
                                            <li>조립식으로 시공</li>
                                            <li>친환경 인증</li>
                                        </ul>
                                    </div>
                                </div>
                            </label>
                        </div>
                        <!-- 강마루 -->
                        <div>
                            <label>
                                <input type="radio" name="efloorType" id="floorGangmaru" value="gangmaru"/>
                                <div class="card">
                                    <div class="card-header card-title">
                                        강마루
                                    </div>
                        
                                    <div class="card-body">
                                        <img src="${ pageContext.request.contextPath }/resources/images/question/gangmaru.PNG"  class="card-img"/>
                                        <ul class="small-title">
                                            <li>본드를 사용하여 밀착시공</li>
                                            <li>습기에 강하고 난방 효율 좋음</li>
                                        </ul>
                                    </div>
                                </div>
                            </label>
                        </div>
                        <!-- 대리석 -->
                        <div>
                            <label>
                                <input type="radio" name="efloorType" id="floorMarble" value="marble"/>
                                <div class="card">
                                    <div class="card-header card-title">
                                        대리석
                                    </div>
                        
                                    <div class="card-body">
                                        <img src="${ pageContext.request.contextPath }/resources/images/question/marble.PNG"  class="card-img"/>
                                        <ul class="small-title">
                                            <li>본드를 사용하여 밀착시공</li>
                                            <li>내구성 우수, 반영구적</li>
                                        </ul>
                                    </div>
                                </div>
                            </label>
                        </div>
                    </div>
                    <a href="#questionContent04" onclick="setDisplay('questionContent04')" class="btn-move-even" style="padding-left: 8rem;"><img id="arrow" src="${ pageContext.request.contextPath }/resources/images/question/arrow.png"/></a>
                </div>
                <div id="questionContent04" class="form-group fullscrean" style="display: none;">
                    <p class="card-title" style="padding-left: 10rem;">시공할 벽지를 선택해주세요</p>
                    <div class="d-flex justify-content-center align-content-center" style="padding-left: 10rem;">
                        <!-- 합지 -->
                        <div>
                            <label>
                                <input type="radio" name="ewallType" id="wallPaper" value="paper"/>
                                <div class="card">
                                    <div class="card-header card-title">
                                        합지
                                    </div>
                        
                                    <div class="card-body">
                                        <img src="${ pageContext.request.contextPath }/resources/images/question/paper.PNG" class="card-img"/>
                                        <ul class="small-title">
                                            <li>친환경적인 순수 종이 재질</li>
                                            <li>내구성이 다소 떨어짐</li>
                                            <li>저렴한 가격</li>
                                        </ul>
                                    </div>
                                </div>
                            </label>
                        </div>
                        <!-- 실크벽지 -->
                        <div>
                            <label>
                                <input type="radio" name="ewallType" id="wallSilk" value="silk"/>
                                <div class="card">
                                    <div class="card-header card-title">
                                        실크벽지
                                    </div>
                        
                                    <div class="card-body">
                                        <img src="${ pageContext.request.contextPath }/resources/images/question/silk.PNG"  class="card-img"/>
                                        <ul class="small-title">
                                            <li>이음매가 없어 깔끔한 디자인</li>
                                            <li>PVC 코팅으로 인해 내구성 높음</li>
                                            <li>가격대 중간</li>
                                        </ul>
                                    </div>
                                </div>
                            </label>
                        </div>
                        <!-- 대리석 -->
                        <div>
                            <label>
                                <input type="radio" name="ewallType" id="wallMarble" value="marble"/>
                                <div class="card">
                                    <div class="card-header card-title">
                                        대리석
                                    </div>
                        
                                    <div class="card-body">
                                        <img src="${ pageContext.request.contextPath }/resources/images/question/marble.PNG"  class="card-img"/>
                                        <ul class="small-title">
                                            <li>천연 재질이기 때문에 친환경적</li>
                                            <li>고급스러운 외관, 견고한 내구성</li>
                                            <li>가격대 높음</li>
                                        </ul>
                                    </div>
                                </div>
                            </label>
                        </div>
                    </div>
                    <a href="#questionContent05" onclick="setDisplay('questionContent05')" class="btn-move-odd" style="padding-left: 8rem;"><img id="arrow" src="${ pageContext.request.contextPath }/resources/images/question/arrow.png"/></a>
                </div>
                <div id="questionContent05" class="form-group fullscrean"  style="display: none; background-color: #f1f3f5;">
                    <p class="card-title" style="padding-left: 10rem;">치과용 의자 수량을 선택해주세요</p>
                    <div class="d-flex justify-content-center align-content-center" style="padding-left: 10rem;">
                        <!-- K3000B -->
                        <div>
                            <label>
                                <div class="card">
                                    <div class="card-header card-title">
                                        K3000B
                                    </div>
                        
                                    <div class="card-body">
                                        <img src="${ pageContext.request.contextPath }/resources/images/question/k3000b.PNG" class="card-img"/>
                                        <ul class="small-title">
                                            <li>환자, 의사 모두에게 인체공학적</li>
                                            <li>고품질, 고성능 의료 장비 탑재</li>
                                        </ul>
                                    </div>
                                    <div class="card-footer">
                                        <div class="d-flex justify-content-center align-items-center mb-3">
                                            <a onclick="javascript:fnCalCount('m', 'k3000bCount');" class="counting btn btn-lg">-</a>
                                            <input type="text" name="ek3000b" id="k3000bCount" class="countingInput" value="0" readonly="readonly"/>
                                            <a onclick="javascript:fnCalCount('p', 'k3000bCount');" class="counting btn">+</a>
                                        </div>
                                    </div>
                                </div>
                            </label>
                        </div>
                        <!-- K5000B -->
                        <div>
                            <label>
                                <div class="card">
                                    <div class="card-header card-title">
                                        K5000B
                                    </div>
                        
                                    <div class="card-body">
                                        <img src="${ pageContext.request.contextPath }/resources/images/question/k5000b.PNG"  class="card-img"/>
                                        <ul class="small-title">
                                            <li>K3000B의 후속 모델</li>
                                            <li>더욱 편리하고 직관적으로 진화</li>
                                        </ul>
                                    </div>
                                    <div class="card-footer">
                                        <div class="d-flex justify-content-center align-items-center mb-3">
                                            <a onclick="javascript:fnCalCount('m', 'k5000bCount');" class="counting btn btn-sm">-</a>
                                            <input type="text" name="ek5000b" id="k5000bCount" class="countingInput" value="0" readonly="readonly"/>
                                            <a onclick="javascript:fnCalCount('p', 'k5000bCount');" class="counting btn btn-sm">+</a>
                                        </div>
                                    </div>
                                </div>
                            </label>
                        </div>
                        <!-- S2100Z -->
                        <div>
                            <label>
                                <div class="card">
                                    <div class="card-header card-title">
                                        S2100Z
                                    </div>
                        
                                    <div class="card-body">
                                        <img src="${ pageContext.request.contextPath }/resources/images/question/s2100z.PNG"  class="card-img"/>
                                        <ul class="small-title">
                                            <li>어린이 맞춤 제작</li>
                                            <li>아이들에게 친숙한 디자인</li>
                                        </ul>
                                    </div>
                                    <div class="card-footer">
                                        <div class="d-flex justify-content-center align-items-center mb-3">
                                            <a onclick="javascript:fnCalCount('m', 's2100zCount');" class="counting btn btn-sm">-</a>
                                            <input type="text" name="es2100z" id="s2100zCount" class="countingInput" value="0" readonly="readonly"/>
                                            <a onclick="javascript:fnCalCount('p', 's2100zCount');" class="counting btn btn-sm">+</a>
                                        </div>
                                    </div>
                                </div>
                            </label>
                        </div>
                    </div>
                    <a href="#questionContent06" onclick="setDisplay('questionContent06')" class="btn-move-even" style="padding-left: 8rem; margin-top: 0%;"><img id="arrow" src="${ pageContext.request.contextPath }/resources/images/question/arrow.png"/></a>
                </div>
                <div id="questionContent06" class="form-group fullscrean text-center mb-5" style="display: none;">
                    <p class="card-title" style="padding-left: 10rem;">가구 수량을 선택해주세요</p>
                    <!-- 가구 수량 선택 테이블 -->
                    <div class="col-md-9 d-flex justify-content-center align-items-center" style="padding-left: 10rem;">
                        <table class="table table-borderless">
                            <thead>
                                <tr>
                                    <th id="grayTh" scope="col" style="width: 50%;">상품</th>
                                    <th scope="col" style="width: 20%;">가격</th>
                                    <th scope="col" style="width: 10%;">수량</th>
                                    <th scope="col" style="width: 20%;">총액</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th id="grayTh" scope="row" style="width: 50%;">
                                        <div class="d-flex">
                                            <img src="${ pageContext.request.contextPath }/resources/images/question/item03.png" class="col-md-4"/>
                                            <div class="col-md-6 d-flex flex-column justify-content-center align-items-center">
                                                <span style="font-size: 2rem;">마카롱 테이블</span>
                                                <span>color: white</span>
                                            </div>
                                        </div>
                                    </th>
                                    <td style="width: 20%;">
                                        <div class="d-flex flex-column justify-content-center align-items-center mt-5">
                                            <p class="subtitle mt-5">₩ 40,000</p>
                                        </div>
                                    </td>
                                    <td style="width: 10%;">
                                        <div class="d-flex justify-content-center align-items-center mt-5">
                                            <span><a onclick="javascript:fnCalCountNSum('m', 'furniture1Count', 'furniture1', 'furniture1Sum');" class="counting btn btn-sm mt-3">-</a></span>
                                            <span><input type="text" name="efurniture1" id="furniture1Count" class="countingInput mt-3" value="0" readonly/></span>
                                            <span><a onclick="javascript:fnCalCountNSum('p', 'furniture1Count', 'furniture1', 'furniture1Sum');" class="counting btn btn-sm mt-3">+</a></span>
                                        </div>
                                    </td>
                                    <td style="width: 20%;">
                                        <div class="d-flex justify-content-center align-items-center align-content-between" style="margin-top: 2.4rem;">
                                            <input type="text" id="furniture1Sum" class="countingInput flex-grow-1 mt-3" style="padding-top: 1.7em;" value="₩ 0" readonly/>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th id="grayTh" scope="row" style="width: 50%;">
                                        <div class="d-flex">
                                            <img src="${ pageContext.request.contextPath }/resources/images/question/item03.png" class="col-md-4"/>
                                            <div class="col-md-6 d-flex flex-column justify-content-center align-items-center">
                                                <span style="font-size: 2rem;">블랑드 테이블</span>
                                                <span>color: ivory</span>
                                            </div>
                                        </div>
                                    </th>
                                    <td style="width: 20%;">
                                        <div class="d-flex flex-column justify-content-center align-items-center mt-5">
                                            <p class="subtitle mt-5">₩ 30,000</p>
                                        </div>
                                    </td>
                                    <td style="width: 10%;">
                                        <div class="d-flex justify-content-center align-items-center mt-5">
                                            <span><a onclick="javascript:fnCalCountNSum('m', 'furniture2Count', 'furniture2', 'furniture2Sum');" class="counting btn btn-sm mt-3">-</a></span>
                                            <span><input type="text" name="efurniture2" id="furniture2Count" class="countingInput mt-3" value="0" readonly/></span>
                                            <span><a onclick="javascript:fnCalCountNSum('p', 'furniture2Count', 'furniture2', 'furniture2Sum');" class="counting btn btn-sm mt-3">+</a></span>
                                        </div>
                                    </td>
                                    <td style="width: 20%;">
                                        <div class="d-flex justify-content-center align-items-center align-content-between" style="margin-top: 2.4rem;">
                                            <input type="text" id="furniture2Sum" class="countingInput flex-grow-1 mt-3" style="padding-top: 1.7em;" value="₩ 0" readonly/>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th id="grayTh" scope="row" style="width: 50%;">
                                        <div class="d-flex">
                                            <img src="${ pageContext.request.contextPath }/resources/images/question/item03.png" class="col-md-4"/>
                                            <div class="col-md-6 d-flex flex-column justify-content-center align-items-center">
                                                <span style="font-size: 2rem;">블랑드 체어</span>
                                                <span>color: ivory, white</span>
                                            </div>
                                        </div>
                                    </th>
                                    <td style="width: 20%;">
                                        <div class="d-flex flex-column justify-content-center align-items-center mt-5">
                                            <p class="subtitle mt-5">₩ 30,000</p>
                                        </div>
                                    </td>
                                    <td style="width: 10%;">
                                        <div class="d-flex justify-content-center align-items-center mt-5">
                                            <span><a onclick="javascript:fnCalCountNSum('m', 'furniture3Count', 'furniture3', 'furniture3Sum');" class="counting btn btn-sm mt-3">-</a></span>
                                            <span><input type="text" name="efurniture3" id="furniture3Count" class="countingInput mt-3" value="0" readonly/></span>
                                            <span><a onclick="javascript:fnCalCountNSum('p', 'furniture3Count', 'furniture3', 'furniture3Sum');" class="counting btn btn-sm mt-3">+</a></span>
                                        </div>
                                    </td>
                                    <td style="width: 20%;">
                                        <div class="d-flex justify-content-center align-items-center align-content-between"  style="margin-top: 2.4rem;">
                                            <input type="text" id="furniture3Sum" class="countingInput flex-grow-1 mt-3" style="padding-top: 1.7em;" value="₩ 0" readonly/>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="d-flex justify-content-center align-items-center" style="padding-left: 10rem; margin-top: 0%;">
                        <a href="#questionResult01" onclick="setDisplay('questionResult01')" class="btn-move-odd"><img id="arrow" src="${ pageContext.request.contextPath }/resources/images/question/arrow.png"/></a>
                    </div>
                </div>

                <div id="questionResult01" class="fullscrean" style="display: none; background-color: #f1f3f5; padding-left: 10rem;">    
                    <p class="card-title">나만의 치과에 최적화된 결과가 도착했습니다!</p>
                    <img src="${ pageContext.request.contextPath }/resources/images/question/bill.png" class="mb-5"/>
                    <div class="spin-btn d-flex justify-content-center align-content-center">
                        <!-- 이거 submit으로 만들어주기 -->
                        <span>
                            <a href="javascript:submitForm()" class="btn-end"></a>
                        </span>
                    </div>
                </div>
            </div>
        </form>    
    </div>
</body>
</html>
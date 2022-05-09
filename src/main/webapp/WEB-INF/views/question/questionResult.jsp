<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Studio765</title>
<link rel="stylesheet"	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
<script	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script	src="//cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.7/ScrollMagic.min.js"></script>
<script	src="//cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.7/plugins/debug.addIndicators.min.js"></script>
<script	src="//cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TweenMax.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.7/plugins/animation.gsap.js"></script>

<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/mainheader.css" />
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/title.css" />
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/question/question_result.css" />
</head> <!-- background-image:url('${ pageContext.request.contextPath }/resources/images/mypage/backgroundimg.jpg') -->
<body style="background-color: #DFDFDF; background-image:url('${ pageContext.request.contextPath }/resources/images/mypage/backgroundImg2.jpg')" >
	<%@ include file="/WEB-INF/views/common/mainheader.jsp"%>
	<div id="questionResult" >
		<div class="text-center" id="table" >
			
			<div>
				<div>
					<div class="d-flex">
					
					
					<div class="col-md-4 p-3 shadow" style="margin:1% 0% 5% 3%; background-color: #E1E1E1" >
					<div class="row">
							<div class="col-md-12 mb-3 text-center">
							<span style="font-weight: 700; font-size: 1.5em">바닥재</span>
							</div>
							<div class="col-md-4 mb-3" >
								<img src='${ pageContext.request.contextPath }/resources/images/question/laminate.PNG' style="width:100%; height: 100%; border: solid">
								<span>강화마루</span>
							</div>
							<div class="col-md-4 mb-3">
								<img src='${ pageContext.request.contextPath }/resources/images/question/gangmaru.PNG' style="width:100%; height: 100%">
								<span>강마루</span>
							</div>
							<div class="col-md-4 mb-3">
								<img src='${ pageContext.request.contextPath }/resources/images/question/marble.PNG' style="width:100%; height: 100%">
								<span>대리석</span>
							</div>
							<div class="col-md-12 mb-3 mt-5 text-center" >
							<span style="font-weight: 700; font-size: 1.5em">벽지</span>
							</div>
							<div class="col-md-4 mb-3">
								<img src='${ pageContext.request.contextPath }/resources/images/question/silk.PNG' style="width:100%; height: 100%">
								<span>합지</span>
							</div>
							<div class="col-md-4 mb-3">
								<img src='${ pageContext.request.contextPath }/resources/images/question/paper.PNG' style="width:100%; height: 100%; border: solid">
								<span>실크</span>
							</div>
							<div class="col-md-4 mb-3">
								<img src='${ pageContext.request.contextPath }/resources/images/question/marble.PNG' style="width:100%; height: 100%">
								<span>대리석</span>
							</div>
							<div class="col-md-12 mb-3 mt-5 text-center">
							<span style="font-weight: 700; font-size: 1.5em">의자</span>
							</div>
							<div class="col-md-4 mb-3">
								<img src='${ pageContext.request.contextPath }/resources/images/question/k3000b.PNG' style="width:100%; height: 100%">
								<span>k3000b</span>
							</div>
							<div class="col-md-4 mb-3">
								<img src='${ pageContext.request.contextPath }/resources/images/question/k5000b.PNG' style="width:100%; height: 100%; border: solid">
								<span>k5000b</span>
							</div>
							<div class="col-md-4 mb-3">
								<img src='${ pageContext.request.contextPath }/resources/images/question/s2100z.PNG' style="width:100%; height: 100%; border: solid">
								<span>s2100z</span>
							</div>
							
							<div class="col-md-12 mb-3 mt-5 text-center">
							<span style="font-weight: 700; font-size: 1.5em">가구</span>
							</div>
							<div class="col-md-4 mb-3">
								<img src='${ pageContext.request.contextPath }/resources/images/question/item03.png' style="width:100%; height: 100%">
								<span>마카롱 테이블</span>
							</div>
							<div class="col-md-4 mb-3">
								<img src='${ pageContext.request.contextPath }/resources/images/question/item03.png' style="width:100%; height: 100%; border: solid">
								<span>블랑드 테이블</span>
							</div>
							<div class="col-md-4 mb-3">
								<img src='${ pageContext.request.contextPath }/resources/images/question/item03.png' style="width:100%; height: 100%; border: solid;">
								<span>마카롱 체어</span>
							</div>
					</div>
					
					

					</div>
					
						<div style="width: 70%; padding:3% 3% 5% 3%; background-color: white; margin: 1% 3% 5% 0%" class="shadow cal-md-8">
							<div id="tableContainer">
								<span style="font-size: 2.5rem; color: #343434; font-weight: 700;">예상 견적서</span>
								<h4 style="margin-top: 5%; font-weight: 600">바닥재 & 벽지</h4> <%-- about us에서 가져오기 --%>
								<table class="table text-center ">
									<tr id="table_top" class="box table-borderless">
										<th style="width: 50%; text-align: left;">재질</th>
										<th style="width: 10%;">평당 단가</th>
										<th style="width: 10%">평수</th>
										<th style="width: 10%">총액</th>
									</tr>
									<tr>
										<td style="text-align: left;">
										<c:choose>
											<c:when test="${ estimate.efloorType eq 'laminate'}">바닥재 - 강화마루</c:when>
											<c:when test="${ estimate.efloorType eq 'gangmaru'}">바닥재 - 강마루</c:when>
											<c:when test="${ estimate.efloorType eq 'marble'}">바닥재 - 대리석</c:when>
											</c:choose>
										</td>
										<td> <fmt:formatNumber value="${ priceMap[estimate.efloorType]}" pattern="#,###"/> ₩</td>
										<td> <fmt:formatNumber value="${ estimate.epy }" pattern="#,###"/> 평</td>
										<td> <fmt:formatNumber value="${ estimate.floorTotalPrice }" pattern="#,###"/> ₩</td>
									</tr>
									<tr>
										<td style="text-align: left;">
										<c:choose>
											<c:when test="${ estimate.ewallType eq 'paper'}">벽지 - 합지</c:when>
											<c:when test="${ estimate.ewallType eq 'silk'}">벽지 - 실크</c:when>
											<c:when test="${ estimate.ewallType eq 'marble'}">벽지 - 대리석</c:when>
											</c:choose>
										</td>
										<td> <fmt:formatNumber value="${ priceMap[estimate.ewallType]}" pattern="#,###"/> ₩</td>
										<td> <fmt:formatNumber value="${ estimate.epy }" pattern="#,###"/> 평</td>
										<td> <fmt:formatNumber value="${ estimate.wallTotalPrice }" pattern="#,###"/> ₩</td>
									</tr>
								</table>
								<div class="table text-left" id="table_bottom"></div>
								<br/><br/>
								<h4 style="font-weight: 600">치과 의자 & 가구</h4> <%-- about us에서 가져오기 --%>
								<table class="table text-center">
									<tr id="table_top" class="box table-borderless">
										<th style="width: 50%; text-align: left;">제품명</th>
										<th style="width: 10%;">가격</th>
										<th style="width: 10%">개수</th>
										<th style="width: 10%">총액</th>
									</tr>
									
									<c:if test="${ estimate.ek3000b != 0 }">
										<tr>
											<td  style="text-align: left;"> 치과의자 - K3000B </td>
											<td> <fmt:formatNumber value="${ priceMap['k3000b']}" pattern="#,###"/> ₩</td>
											<td> <fmt:formatNumber value="${ estimate.ek3000b }" pattern="#,###"/></td>
											<td> <fmt:formatNumber value="${ estimate.k3000bTotalPrice }" pattern="#,###"/> ₩</td>
										</tr>
									</c:if>
									<c:if test="${ estimate.ek5000b != 0 }">
										<tr>
											<td  style="text-align: left;"> 치과의자 - K5000B </td>
											<td> <fmt:formatNumber value="${ priceMap['k5000b']}" pattern="#,###"/> ₩</td>
											<td> <fmt:formatNumber value="${ estimate.ek5000b }" pattern="#,###"/></td>
											<td> <fmt:formatNumber value="${ estimate.k5000bTotalPrice }" pattern="#,###"/> ₩</td>
										</tr>
									</c:if>
									<c:if test="${ estimate.es2100z != 0 }">
										<tr>
											<td  style="text-align: left;"> 치과의자 - S2100Z </td>
											<td> <fmt:formatNumber value="${ priceMap['s2100z']}" pattern="#,###"/> ₩</td>
											<td> <fmt:formatNumber value="${ estimate.es2100z }" pattern="#,###"/></td>
											<td> <fmt:formatNumber value="${ estimate.s2100zTotalPrice }" pattern="#,###"/> ₩</td>
										</tr>
									</c:if>
									<c:if test="${ estimate.efurniture1 != 0 }">
										<tr>
											<td  style="text-align: left;"> 가구 - 마카롱 테이블 </td>
											<td> <fmt:formatNumber value="${ priceMap['furniture1']}" pattern="#,###"/> ₩</td>
											<td> <fmt:formatNumber value="${ estimate.efurniture1 }" pattern="#,###"/></td>
											<td> <fmt:formatNumber value="${ estimate.furniture1TotalPrice }" pattern="#,###"/> ₩</td>
										</tr>
									</c:if>
									<c:if test="${ estimate.efurniture2 != 0 }">
										<tr>
											<td  style="text-align: left;"> 가구 - 블랑드 테이블 </td>
											<td> <fmt:formatNumber value="${ priceMap['furniture2']}" pattern="#,###"/> ₩</td>
											<td> <fmt:formatNumber value="${ estimate.efurniture2 }" pattern="#,###"/></td>
											<td> <fmt:formatNumber value="${ estimate.furniture2TotalPrice }" pattern="#,###"/> ₩</td>
										</tr>
									</c:if>
									<c:if test="${ estimate.efurniture3 != 0 }">
										<tr>
											<td  style="text-align: left;"> 가구 - 마카롱 체어 </td>
											<td> <fmt:formatNumber value="${ priceMap['furniture3']}" pattern="#,###"/> ₩</td>
											<td> <fmt:formatNumber value="${ estimate.efurniture3 }" pattern="#,###"/></td>
											<td> <fmt:formatNumber value="${ estimate.furniture3TotalPrice }" pattern="#,###"/> ₩</td>
										</tr>
									</c:if>
								</table>
								<div class="table text-left" id="table_bottom"></div>
								<br/>
								<%-- 건물 유형 & 치과 유형 --%>
								<div class="d-flex">
								
									<table class="table text-center col-md-4" >
										<tr id="table_top" class="box table-borderless">
											<th style="width: 70%; text-align: left;">유형</th>
											<th style="width: 30%">추가 비율</th>
										</tr>
										<tr>
											<td style="text-align: left;">
											<c:choose>
												<c:when test="${ estimate.ebuildingType eq 'house'}">건물유형 - 단독</c:when>
												<c:when test="${ estimate.ebuildingType eq 'officetel'}">건물유형 - 상가/오피스텔</c:when>
											</c:choose>
											</td>
											<td> × <fmt:formatNumber value="${ estimate.buildingWeight }" pattern=".00"/> </td>
										</tr>
										<tr>
											<td style="text-align: left;">
											<c:choose>
												<c:when test="${ estimate.edentalType eq 'normal'}">치과유형 - 일반 치과</c:when>
												<c:when test="${ estimate.edentalType eq 'braces'}">치과유형 - 교정 치과</c:when>
												<c:when test="${ estimate.edentalType eq 'children'}">치과유형 - 어린이 치과</c:when>
											</c:choose>
											</td>
											<td> × <fmt:formatNumber value="${ estimate.dentalWeight }" pattern=".00"/> </td>
										</tr>
									</table>
									<div class="col-md-4 mb-5 p-0">
									<table class="table table-borderless  table-condensed text-right  p-0">
										<tr>
											<th style="font-weight: 600; width: 50%;">SubTotal</th>
											<th > <fmt:formatNumber value="${ estimate.totalPrice * 0.9 }" pattern="#,###"/> ₩</th>
										</tr>
										<tr>
											<td style="font-weight: 600;">Sales Tax</td>
											<td style="font-weight: 600;"> <fmt:formatNumber value="${ estimate.totalPrice * 0.1 }" pattern="#,###"/> ₩</td>
										</tr>
									</table>
								</div>
							
								
								<div class=" text-left col-md-4" style="margin-top:10%; padding-left:10%">
									<p class="mb-2" style="font-weight: 600;">Invoice Total</p>
									<p style="font-size: 200%;">
										<strong> <fmt:formatNumber value="${ estimate.totalPrice }" pattern="#,###"/> ₩</strong>
									</p>
								</div>

								
							</div>
							
						</div>
						<div onclick="location.href='${ pageContext.request.contextPath }/mypage/mypage'" class="btn float" style="background-color: #ffb440;  width:20%; margin-top:5%"><span style="font-size: 1.5em">문의하기</span>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>
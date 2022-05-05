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
</head>
<body style="background-image:  url('${pageContext.request.contextPath }/resources/images/mypage/background.jpg'); background-size: cover; background-repeat: no-repeat;">
	<%@ include file="/WEB-INF/views/common/mainheader.jsp"%>
	<div id="questionResult">
		<div class="text-center" id="table">
			<div style="font-size: 2.5rem; color: #343434; font-weight: 700;"
				class="mb-5">예상 견적서</div>
			<div>
				<div>
					<div style="clear: both;">
						<div style="width: 80%;" class="m-auto">
							<div id="tableContainer">
								<h4>바닥재 & 벽지</h4> <%-- about us에서 가져오기 --%>
								<table class="table text-center">
									<tr id="table_top" class="box table-borderless">
										<th style="width: 70%; text-align: left;">재질</th>
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
								<h4>치과 의자 & 가구</h4> <%-- about us에서 가져오기 --%>
								<table class="table text-center">
									<tr id="table_top" class="box table-borderless">
										<th style="width: 70%; text-align: left;">제품명</th>
										<th style="width: 10%;">가격</th>
										<th style="width: 10%">개수</th>
										<th style="width: 10%">총액</th>
									</tr>
									
									<c:if test="${ estimate.ek3000b != 0 }">
										<tr>
											<td  style="text-align: left;"> 치과의자 - K3000B </td>
											<td> <fmt:formatNumber value="${ priceMap[estimate.ek3000b]}" pattern="#,###"/> ₩</td>
											<td> <fmt:formatNumber value="${ estimate.ek3000b }" pattern="#,###"/></td>
											<td> <fmt:formatNumber value="${ estimate.k3000bTotalPrice }" pattern="#,###"/> ₩</td>
										</tr>
									</c:if>
									<c:if test="${ estimate.ek5000b != 0 }">
										<tr>
											<td  style="text-align: left;"> 치과의자 - K5000B </td>
											<td> <fmt:formatNumber value="${ priceMap[estimate.ek5000b]}" pattern="#,###"/> ₩</td>
											<td> <fmt:formatNumber value="${ estimate.ek5000b }" pattern="#,###"/></td>
											<td> <fmt:formatNumber value="${ estimate.k5000bTotalPrice }" pattern="#,###"/> ₩</td>
										</tr>
									</c:if>
									<c:if test="${ estimate.es2100z != 0 }">
										<tr>
											<td  style="text-align: left;"> 치과의자 - S2100Z </td>
											<td> <fmt:formatNumber value="${ priceMap[estimate.es2100z]}" pattern="#,###"/> ₩</td>
											<td> <fmt:formatNumber value="${ estimate.es2100z }" pattern="#,###"/></td>
											<td> <fmt:formatNumber value="${ estimate.s2100zTotalPrice }" pattern="#,###"/> ₩</td>
										</tr>
									</c:if>
									<c:if test="${ estimate.efurniture1 != 0 }">
										<tr>
											<td  style="text-align: left;"> 가구 - 마카롱 테이블 </td>
											<td> <fmt:formatNumber value="${ priceMap[estimate.efurniture1]}" pattern="#,###"/> ₩</td>
											<td> <fmt:formatNumber value="${ estimate.efurniture1 }" pattern="#,###"/></td>
											<td> <fmt:formatNumber value="${ estimate.furniture1TotalPrice }" pattern="#,###"/> ₩</td>
										</tr>
									</c:if>
									<c:if test="${ estimate.efurniture2 != 0 }">
										<tr>
											<td  style="text-align: left;"> 가구 - 블랑드 테이블 </td>
											<td> <fmt:formatNumber value="${ priceMap[estimate.efurniture2]}" pattern="#,###"/> ₩</td>
											<td> <fmt:formatNumber value="${ estimate.efurniture2 }" pattern="#,###"/></td>
											<td> <fmt:formatNumber value="${ estimate.furniture2TotalPrice }" pattern="#,###"/> ₩</td>
										</tr>
									</c:if>
									<c:if test="${ estimate.efurniture3 != 0 }">
										<tr>
											<td  style="text-align: left;"> 가구 - 마카롱 체어 </td>
											<td> <fmt:formatNumber value="${ priceMap[estimate.efurniture3]}" pattern="#,###"/> ₩</td>
											<td> <fmt:formatNumber value="${ estimate.efurniture3 }" pattern="#,###"/></td>
											<td> <fmt:formatNumber value="${ estimate.furniture3TotalPrice }" pattern="#,###"/> ₩</td>
										</tr>
									</c:if>
								</table>
								<div class="table text-left" id="table_bottom"></div>
								<br/>
								<%-- 건물 유형 & 치과 유형 --%>
								<table class="table text-center" style="width: 50%;">
									<tr id="table_top" class="box table-borderless">
										<th style="width: 70%; text-align: left;">유형</th>
										<th style="width: 30%">전체 금액의 추가 비율</th>
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
								
								<div class=" text-left mt-5">
									<p class="mb-2" style="font-weight: 600;">Invoice Total</p>
									<p style="font-size: 200%;">
										<strong> <fmt:formatNumber value="${ estimate.totalPrice }" pattern="#,###"/> ₩</strong>
									</p>
								</div>
							</div>
							
							<br/><br/>
							<div id="trigger">
								<table class="table table-borderless  table-condensed text-right">
									<tr>
										<th style="font-weight: 600; width: 80%;">SubTotal</th>
										<th> <fmt:formatNumber value="${ estimate.totalPrice * 0.9 }" pattern="#,###"/> ₩</th>
									</tr>
									<tr>
										<td style="font-weight: 600;">Sales Tax</td>
										<td style="font-weight: 600;"> <fmt:formatNumber value="${ estimate.totalPrice * 0.1 }" pattern="#,###"/> ₩</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					<a href="questionSending" class="btn  text-center " style="opacity: 0;" id="animation">문의하기</a>
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
					<a href="questionIndex" class="btn  text-center " style="opacity: 0;" id="animation2">다시하기</a>
				</div>
			</div>
		</div>
	</div>
<script>
	var controller = new ScrollMagic.Controller({
		addIndicators : true
	});

	var tween = TweenMax.to("#animation", 0.5, {
		scale : 5.0,
		x : -300,
		y : 0,
		opacity : 1
	});

	var scene = new ScrollMagic.Scene({
		triggerElement : "#trigger",

	}).setTween(tween).setPin("#animation").addTo(controller);

	var controller2 = new ScrollMagic.Controller({
		addIndicators : false
	});

	var tween2 = TweenMax.to("#animation2", 0.5, {
		scale : 5.0,
		x : 300,
		y : -320,
		opacity : 1
	});

	var scene = new ScrollMagic.Scene({
		triggerElement : "#animation",

	}).setTween(tween2).addTo(controller2);
</script>
</body>
</html>
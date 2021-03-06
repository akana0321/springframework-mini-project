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
<link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css" />
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/header.css" />
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/title.css" />
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/question/question_result.css" />
</head> <!-- background-image:url('${ pageContext.request.contextPath }/resources/images/mypage/backgroundimg.jpg') -->
<body style="background-color: white">
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<div id="questionResult" >
		<div class="text-center" id="table" data-aos="fade-in" data-aos-duration="2000" >
			
			<div>
				<div>
					<div class="d-flex" >
					
					
					<div class="col-md-4 p-5 shadow" style="margin:1% 0% 5% 3%; background-color: #E1E1E1" >
					<div class="row">
							<div class="col-md-12 mb-3 text-center">
							<span style="font-weight: 700; font-size: 1.5em">?????????</span>
							</div>
							<div class="col-md-4 mb-3" >
								<img src='${ pageContext.request.contextPath }/resources/images/question/laminate.PNG' style="width:100%; height: 100%; border: solid">
								<span>????????????</span>
							</div>
							<div class="col-md-4 mb-3">
								<img src='${ pageContext.request.contextPath }/resources/images/question/gangmaru.PNG' style="width:100%; height: 100%">
								<span>?????????</span>
							</div>
							<div class="col-md-4 mb-3">
								<img src='${ pageContext.request.contextPath }/resources/images/question/marble.PNG' style="width:100%; height: 100%">
								<span>?????????</span>
							</div>
							<div class="col-md-12 mb-3 mt-5 text-center" >
							<span style="font-weight: 700; font-size: 1.5em">??????</span>
							</div>
							<div class="col-md-4 mb-3">
								<img src='${ pageContext.request.contextPath }/resources/images/question/silk.PNG' style="width:100%; height: 100%">
								<span>??????</span>
							</div>
							<div class="col-md-4 mb-3">
								<img src='${ pageContext.request.contextPath }/resources/images/question/paper.PNG' style="width:100%; height: 100%; border: solid">
								<span>??????</span>
							</div>
							<div class="col-md-4 mb-3">
								<img src='${ pageContext.request.contextPath }/resources/images/question/marble.PNG' style="width:100%; height: 100%">
								<span>?????????</span>
							</div>
							<div class="col-md-12 mb-3 mt-5 text-center">
							<span style="font-weight: 700; font-size: 1.5em">??????</span>
							</div>
							<div class="col-md-4 mb-3">
								<img src='${ pageContext.request.contextPath }/resources/images/question/k3000b.PNG' style="width:100%; height: 100%">
								<span>K3000B</span>
							</div>
							<div class="col-md-4 mb-3">
								<img src='${ pageContext.request.contextPath }/resources/images/question/k5000b.PNG' style="width:100%; height: 100%; border: solid">
								<span>K5000B</span>
							</div>
							<div class="col-md-4 mb-3">
								<img src='${ pageContext.request.contextPath }/resources/images/question/s2100z.PNG' style="width:100%; height: 100%; border: solid">
								<span>S2100Z</span>
							</div>
							
							<div class="col-md-12 mb-3 mt-5 text-center">
							<span style="font-weight: 700; font-size: 1.5em">??????</span>
							</div>
							<div class="col-md-4 mb-3">
								<img src='http://www.bians.co.kr/shopimages/buy4in/mobile/3/1055003_represent' style="width:100%; height: 100%">
								<span>??????</span>
							</div>
							<div class="col-md-4 mb-3">
								<img src='http://m.sortiedesign.kr/web/product/big/202102/64777b3dfee81d65e511589df3c73642.jpg' style="width:100%; height: 100%; border: solid">
								<span>?????????</span>
							</div>
							<div class="col-md-4 mb-3">
								<img src='http://img.danawa.com/prod_img/500000/390/939/img/14939390_1.jpg?shrink=330:330&_v=20210806111240' style="width:100%; height: 100%; border: solid;">
								<span>??????</span>
							</div>
					</div>
					
					

					</div>
					
						<div style="width: 70%; padding:3% 3% 5% 3%; background-color: white; margin: 1% 3% 5% 0%" class="shadow cal-md-8">
							<div id="tableContainer">
								<span style="font-size: 2.5rem; color: #343434; font-weight: 700;">?????? ?????????</span>
								<h4 style="margin-top: 5%; font-weight: 600">????????? & ??????</h4> <%-- about us?????? ???????????? --%>
								<table class="table text-center ">
									<tr id="table_top" class="box table-borderless">
										<th style="width: 50%; text-align: left;">??????</th>
										<th style="width: 10%;">?????? ??????</th>
										<th style="width: 10%">??????</th>
										<th style="width: 10%">??????</th>
									</tr>
									<tr>
										<td style="text-align: left;">
										<c:choose>
											<c:when test="${ estimate.efloorType eq 'laminate'}">????????? - ????????????</c:when>
											<c:when test="${ estimate.efloorType eq 'gangmaru'}">????????? - ?????????</c:when>
											<c:when test="${ estimate.efloorType eq 'marble'}">????????? - ?????????</c:when>
											</c:choose>
										</td>
										<td> <fmt:formatNumber value="${ priceMap[estimate.efloorType]}" pattern="#,###"/> ???</td>
										<td> <fmt:formatNumber value="${ estimate.epy }" pattern="#,###"/> ???</td>
										<td> <fmt:formatNumber value="${ estimate.floorTotalPrice }" pattern="#,###"/> ???</td>
									</tr>
									<tr>
										<td style="text-align: left;">
										<c:choose>
											<c:when test="${ estimate.ewallType eq 'paper'}">?????? - ??????</c:when>
											<c:when test="${ estimate.ewallType eq 'silk'}">?????? - ??????</c:when>
											<c:when test="${ estimate.ewallType eq 'marble'}">?????? - ?????????</c:when>
											</c:choose>
										</td>
										<td> <fmt:formatNumber value="${ priceMap[estimate.ewallType]}" pattern="#,###"/> ???</td>
										<td> <fmt:formatNumber value="${ estimate.epy }" pattern="#,###"/> ???</td>
										<td> <fmt:formatNumber value="${ estimate.wallTotalPrice }" pattern="#,###"/> ???</td>
									</tr>
								</table>
								<div class="table text-left" id="table_bottom"></div>
								<br/><br/>
								<h4 style="font-weight: 600">?????? ?????? & ??????</h4> <%-- about us?????? ???????????? --%>
								<table class="table text-center">
									<tr id="table_top" class="box table-borderless">
										<th style="width: 50%; text-align: left;">?????????</th>
										<th style="width: 10%;">??????</th>
										<th style="width: 10%">??????</th>
										<th style="width: 10%">??????</th>
									</tr>
									
									<c:if test="${ estimate.ek3000b != 0 }">
										<tr>
											<td  style="text-align: left;"> ???????????? - K3000B </td>
											<td> <fmt:formatNumber value="${ priceMap['k3000b']}" pattern="#,###"/> ???</td>
											<td> <fmt:formatNumber value="${ estimate.ek3000b }" pattern="#,###"/></td>
											<td> <fmt:formatNumber value="${ estimate.k3000bTotalPrice }" pattern="#,###"/> ???</td>
										</tr>
									</c:if>
									<c:if test="${ estimate.ek5000b != 0 }">
										<tr>
											<td  style="text-align: left;"> ???????????? - K5000B </td>
											<td> <fmt:formatNumber value="${ priceMap['k5000b']}" pattern="#,###"/> ???</td>
											<td> <fmt:formatNumber value="${ estimate.ek5000b }" pattern="#,###"/></td>
											<td> <fmt:formatNumber value="${ estimate.k5000bTotalPrice }" pattern="#,###"/> ???</td>
										</tr>
									</c:if>
									<c:if test="${ estimate.es2100z != 0 }">
										<tr>
											<td  style="text-align: left;"> ???????????? - S2100Z </td>
											<td> <fmt:formatNumber value="${ priceMap['s2100z']}" pattern="#,###"/> ???</td>
											<td> <fmt:formatNumber value="${ estimate.es2100z }" pattern="#,###"/></td>
											<td> <fmt:formatNumber value="${ estimate.s2100zTotalPrice }" pattern="#,###"/> ???</td>
										</tr>
									</c:if>
									<c:if test="${ estimate.efurniture1 != 0 }">
										<tr>
											<td  style="text-align: left;"> ?????? - ?????? </td>
											<td> <fmt:formatNumber value="${ priceMap['furniture1']}" pattern="#,###"/> ???</td>
											<td> <fmt:formatNumber value="${ estimate.efurniture1 }" pattern="#,###"/></td>
											<td> <fmt:formatNumber value="${ estimate.furniture1TotalPrice }" pattern="#,###"/> ???</td>
										</tr>
									</c:if>
									<c:if test="${ estimate.efurniture2 != 0 }">
										<tr>
											<td  style="text-align: left;"> ?????? - ????????? </td>
											<td> <fmt:formatNumber value="${ priceMap['furniture2']}" pattern="#,###"/> ???</td>
											<td> <fmt:formatNumber value="${ estimate.efurniture2 }" pattern="#,###"/></td>
											<td> <fmt:formatNumber value="${ estimate.furniture2TotalPrice }" pattern="#,###"/> ???</td>
										</tr>
									</c:if>
									<c:if test="${ estimate.efurniture3 != 0 }">
										<tr>
											<td  style="text-align: left;"> ?????? - ?????? </td>
											<td> <fmt:formatNumber value="${ priceMap['furniture3']}" pattern="#,###"/> ???</td>
											<td> <fmt:formatNumber value="${ estimate.efurniture3 }" pattern="#,###"/></td>
											<td> <fmt:formatNumber value="${ estimate.furniture3TotalPrice }" pattern="#,###"/> ???</td>
										</tr>
									</c:if>
								</table>
								<div class="table text-left" id="table_bottom"></div>
								<br/>
								<%-- ?????? ?????? & ?????? ?????? --%>
								<div class="d-flex">
								
									<table class="table text-center col-md-4" >
										<tr id="table_top" class="box table-borderless">
											<th style="width: 70%; text-align: left;">??????</th>
											<th style="width: 30%">?????? ??????</th>
										</tr>
										<tr>
											<td style="text-align: left;">
											<c:choose>
												<c:when test="${ estimate.ebuildingType eq 'house'}">???????????? - ??????</c:when>
												<c:when test="${ estimate.ebuildingType eq 'officetel'}">???????????? - ??????/????????????</c:when>
											</c:choose>
											</td>
											<td> ?? <fmt:formatNumber value="${ estimate.buildingWeight }" pattern=".00"/> </td>
										</tr>
										<tr>
											<td style="text-align: left;">
											<c:choose>
												<c:when test="${ estimate.edentalType eq 'normal'}">???????????? - ?????? ??????</c:when>
												<c:when test="${ estimate.edentalType eq 'braces'}">???????????? - ?????? ??????</c:when>
												<c:when test="${ estimate.edentalType eq 'children'}">???????????? - ????????? ??????</c:when>
											</c:choose>
											</td>
											<td> ?? <fmt:formatNumber value="${ estimate.dentalWeight }" pattern=".00"/> </td>
										</tr>
									</table>
									<div class="col-md-4 mb-5 p-0">
									<table class="table table-borderless  table-condensed text-right  p-0">
										<tr>
											<th style="font-weight: 600; width: 50%;">SubTotal</th>
											<th > <fmt:formatNumber value="${ estimate.totalPrice * 0.9 }" pattern="#,###"/> ???</th>
										</tr>
										<tr>
											<td style="font-weight: 600;">Sales Tax</td>
											<td style="font-weight: 600;"> <fmt:formatNumber value="${ estimate.totalPrice * 0.1 }" pattern="#,###"/> ???</td>
										</tr>
									</table>
								</div>
							
								
								<div class=" text-left col-md-4" style="margin-top:10%; padding-left:10%">
									<p class="mb-2" style="font-weight: 600;">Invoice Total</p>
									<p style="font-size: 200%;">
										<strong> <fmt:formatNumber value="${ estimate.totalPrice }" pattern="#,###"/> ???</strong>
									</p>
								</div>

								
							</div>
							
						</div style="text-align: center;">
						<div onclick="location.href='questionSending'" class="btn btn-lg" style="width:10em; color: white; background-color: #808080;">????????????
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

</body>
<script>
    AOS.init();
</script>
</html>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
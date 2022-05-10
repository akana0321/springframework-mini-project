<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/mypage/style_interialQ.css" />
    <script src="${pageContext.request.contextPath }/resources/js/mypage/interialQ.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css" />

<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
	<div id="interialq" style="width: 80%; margin: 6% 0% 7% 10%" class="text-center">
      <table class="mb-5">
      <tr>
        <td>
          <h1 class="mb-3"><font color="black" size="10" data-aos="zoom-in" data-aos-duration="1000">인테리어 문의</font></h1>
          <hr id="titleLine">
        </td>
       </tr>
      </table>
      <div class="bg-white d-flex row">
      <div class="row">
      <div class="col-md-8">
      
        <div class="d-flex flex-column" >
          <div class="d-flex shadow mb-3" style="background-color: white">
            <div class="col-md-12 pt-5 text-left">
              <div class="fa fa-3x fa-arrow-circle-left float-left ml-5" onclick="location.href='mypage'" id="back" data-aos="fade-in" data-aos-duration="1500"></div>
                <div style="font-size: 40px; color: #343434; font-weight: 700; text-align: center; margin: 0 10%;" class="mb-5 " data-aos="fade-up" data-aos-duration="2000">예상 견적서</div>
              <div data-aos="zoom-in" data-aos-duration="2000">
                <div>
                  <div style="clear: both">
                    <div style="width: 90%" class="m-auto">
                      <div id="tableContainer" >
								
								<h4 style="margin-top: 5%; font-weight: 600" class="text-center">바닥재 & 벽지</h4> <%-- about us에서 가져오기 --%>
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
								<h4 style="font-weight: 600" class="text-center">치과 의자 & 가구</h4> <%-- about us에서 가져오기 --%>
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
											<th style="width: 60%; text-align: left;">유형</th>
											<th style="width: 40%">추가 비율</th>
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
										<c:if test="${ estimate.EEvent == 1 }">
											<tr>
												<td style="font-weight: 600; color:red">Discount</td>
												<td style="font-weight: 600; color:red"> - <fmt:formatNumber value="${ estimate.totalPrice * 0.1 }" pattern="#,###"/> ₩</td>
											</tr>
										</c:if>
									</table>
								</div>
							
								
								<div class=" text-left col-md-4" style="margin-top:10%; padding-left:5%">
									<p class="mb-2" style="font-weight: 600;">Invoice Total</p>
									<c:if test="${ estimate.EEvent == 1 }">
										<p style="font-size: 200%;">
											<strong> <fmt:formatNumber value="${ estimate.totalPrice }" pattern="#,###"/> ₩</strong>
										</p>
									</c:if>
									<c:if test="${ estimate.EEvent != 1 }">
										<p style="font-size: 200%;">
											<strong> <fmt:formatNumber value="${ estimate.totalPrice * 0.9 }" pattern="#,###"/> ₩</strong>
										</p>
									</c:if>
								</div>
							</div>
						</div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          </div>
          <div class="col-md-4 " style="overflow: scroll; height: 1060px;">
          <div id="question" > 
          <c:forEach var="comment" items="${CommentList}" varStatus="counting">
            <c:if test="${comment.uid eq sessionUid}">
           <div id=${comment.cno} class="col-md-12 shadow mb-3" style="background-color: rgb(239, 239, 239); ">
              <div class="text-left mt-2 ml-2" style="font-size: 30px; font-weight: 600; padding-top: 2%;">문의</div>
              <div id="minus" style="margin-left:70%; top:0; right:1%;" class="position-absolute" >
              <form method="post" action="removeQuestion">
              <input name="cno" value=${comment.cno } style="visibility: hidden; ">
              <input type="submit"  class="btn btn-light" value="삭제하기">
              </form>
              </div>
 				<br>
              <hr/>
              <div class="text-left m-5">
                  <div>
<pre class="ml-3" style="overflow: scroll;">
${comment.ccontent}
</pre>
                  </div>
                  <div class="text-right"  style="padding-bottom: 2% ;">
                      <span style="font-size: 20px; font-weight: 500;">${comment.cdate}</span>
                  </div>
              </div>
            </div>
          </c:if>
          <c:if test="${comment.uid ne sessionUid}">
           <div class="col-md-12 shadow mb-3" style="background-color: white;">
              <div class="text-left mt-2 ml-2" style="font-size: 30px; font-weight: 600; padding-top: 2%;">답변</div>
              <hr/>
              <div class="text-left m-5">
                  <div>
<pre class="ml-3" style="overflow: scroll;">
${comment.ccontent}
</pre>
                  </div>
                  <div class="text-right"  style="padding-bottom: 2% ;">
                      <span style="font-size: 20px; font-weight: 500;">${comment.cdate}</span>
                  </div>
              </div>
            </div>
          </c:if>
           </c:forEach>
          </div>
          </div>
          <div class="col-md-12">
          <div class="col-md-12 shadow" id="inquire" data-aos="fade-out-down" data-aos-duration="3000" data-aos-offset="200">
            <div class="text-left mt-2 ml-2" style="font-size: 30px; font-weight: 600; padding-top: 2%;">
              문의
            </div>
            <hr/>
            
            <form style="margin-top: 5%; margin-bottom: 5%" action="questionQ" method="POST">
              <div class="col-md-12">
                <div class="form-group m-4">
                  <textarea cols="60" class="form-control" name="ccontent" rows="15" placeholder="문의 내용" style="resize: none" ></textarea>
                </div>
              </div>
              <div class="text-center">
                <div class="form-group m-4  text-right">
                  <input type="submit"  class="btn btn-light" value="문의하기">
                </div>
                <script type="text/javascript">
			      function clickimg(event) {
	
			  		const attach = document.querySelector("#file").files[0];
					//${"#attach"}[0].files[0];
					
					//Multipart/form-data
					const formData = new FormData();
					formData.append("cattach", attach);
					
					//Ajax로 서버로 전송
					$.ajax({
						url: "QuestionFileUpload",
						method: "post",
						data: formData,
						cache: false,		// 파일이 포함되어 있으니, 브라우저 메모리에 저장 x
						processData: false, // title=xxx&desc=yyy 식으로 x
						contentType: false	// 파트마다 Content-Type이 포함되기 때문에 따로 헤더에 Content-Type에 추가 x
					})
				}
                
                </script>
              </div>
            </form>
          </div>
          </div>
          </div>
        </div>
      </div>

    <script>
      AOS.init();
    </script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Studio765</title>
	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    
    <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/mypage/mypage.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/mypage/style_mypage.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/mypage/style_FAQ.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css" />

</head>
<body style="background-color: #F2F2F2">
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<div id="mypage">
	<section class="my-5">
		<div style="margin : 0px 8%"  >
			
			<div class=" rounded-lg d-block d-sm-flex shadow-lg " style="width: 100%; background-color: white; " data-aos="fade-in" data-aos-duration="3000">
				<div class="profile-tab-nav border-right mt-2">
					<div class="p-4">
						<div class="img-circle text-center mb-3" style="position: relative;" >
							<div id="userimg" data-aos="zoom-out" data-aos-duration="2000" >
							<c:if test="${userimg.aoname ne null}">	
								<img src="${pageContext.request.contextPath}/resources/images/mypage/${userimg.aoname}" alt="Image" class="shadow" style="width: 200px; height: 200px;">
							</c:if>
							<c:if test="${userimg.aoname eq null}">
								<img src="${pageContext.request.contextPath}/resources/images/mypage/basicimg.png" alt="Image" class="shadow" style="width: 200px; height: 200px;">
							
							</c:if>
							</div>
								<div class="fa fa-2x fa-camera  btn float-right " id="imgchange"  onclick="changeUserImg()" data-aos="zoom-out" data-aos-duration="3000">
							</div>
						</div>
						<input type="file" id="myimg" oninput="clickimg(event)">
						<h4 class="text-center" style="font-weight: 700;">${user.uname}</h4>
					</div>
					<div class="text-right ">
						<a class="mr-3" href="x" style="color: black; "> ?????? ??????</a>
					</div>
					<div class="nav flex-column nav-tabs mt-3" style="background-color: #f1f3f5;" role="tablist" aria-orientation="vertical" >
						<a class="nav-link active" id="account-tab" data-toggle="pill" href="#account" role="tab" aria-controls="account" style="color: black;">
							<i class="fa fa-user text -center mr-1"></i> 
							??? ??????
						</a>
						<a class="nav-link" id="password-tab" data-toggle="pill" href="#password" role="tab" aria-controls="password" aria-selected="false" style="color: black;">
							<i class="fa fa-hospital-o text-center mr-1"></i> 
							?????? ??????
						</a>
						<a class="nav-link" id="security-tab" data-toggle="pill" href="#security" role="tab" aria-controls="security" aria-selected="false" style="color: black;">
							<i class="fa fa-history text-center mr-1"></i> 
							?????? ??????
						</a>
						<a class="nav-link" id="faq-tab" data-toggle="pill" href="#faq" role="tab" aria-controls="faq" aria-selected="false" style="color: black;">
							<i class="fa fa-question text-center mr-1"></i> 
							?????? ?????? ??????
						</a>
						
					</div>
					
				</div>
				<div class="tab-content p-4 p-md-5 " id="v-pills-tabContent">
					<div class="tab-pane fade show active" id="account" role="tabpanel" aria-labelledby="account-tab">
						<form method="post" action="myInfo">
						<h3 class="mb-4"><strong>??? ??????</strong></h3>
						<div class="form-group">
							<div class="row">
								<div class="col-md-6">
									<label>??????</label>
									<input type="text" class="form-control" value="${user.uname}" name="uname" readonly>
								</div>
								<div class="col-md-6">
									<label>????????????</label>
									<input type="date" class="form-control" value="${user.ubirth}" name="ubirth">
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<div class="row">
								<div class="col-md-6">
									<label>????????????</label>
									<input type="text" class="form-control" value="${user.utel}" name="utel">
								</div>
								<div class="col-md-6">
									<label>?????????</label>
									<input type="text" class="form-control" value="${user.uemail}" name="uemail">
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label>??????</label>
							<div>
								<div class="row">
									<div class="col-md-6">
										<input class="form-control" type="text"  name="uzipcode" value="${user.uzipcode}" placeholder="????????????" />
									</div>
									<div class="col-md-6">
										<input class="form-control" type="button" class="button" style="background-color: #808080; color: white;" onclick="execDaumPostcode3()" value="???????????? ??????" /><br />
									</div>
								</div>
								<div class="row">
									<div class="col-md-8">
										<input class="form-control" type="text"  name="uaddress1" value="${user.uaddress1}" placeholder="??????" /><br />
									</div>
									<div class="col-md-4">
										<input class="form-control" type="text" id="detailAddress" placeholder="????????????" value="${user.uaddress2}"  name="uaddress2"/>
									</div>
								</div>
							</div>
						</div>
						<hr class="mb-5">
						<h4 class="mb-3"><strong>???????????? ??????</strong></h4>
						
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>????????? ????????????</label>
								  	<input type="password" class="form-control" name="newPass">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>???????????? ?????????</label>
								  	<c:if test="${error != null}">
												<span class="" style="color:red; font-size:0.5em" role="alert">
			  								${error}
										</span>			
									</c:if>
								  	<input type="password" class="form-control" name="reNewPass">
								</div>
							</div>
						</div>
						<div class="mt-5 text-center">
							<input type="submit" class="btn" style="color: white; background-color: #808080;" value="????????????">
						</div>
						</form>
					</div>
					
					<div class="tab-pane fade" id="password" role="tabpanel" aria-labelledby="password-tab">
					
						<div id="addinfo">
						
							<h3 class="mb-5"><strong>?????? ??????</strong></h3>
							
							<c:if test="${dentistSize != 0}">
								<c:forEach var="dentist" items="${dentistArray}" varStatus="status">
									<form method="post" modelAttribute="dentist" action="dentalInfo">
										<script>window.onload = function checkNumber(){count = ${status.count};}</script>
										<div><button class='fa fa-minus mr-2' onclick="removeinfoR(${status.count})" style="background-color: white; border:0px"></button><strong> ?????? ?????? ${status.count}</strong></div>
										<hr>
										<div class="row mb-3">
									    	
									    		<div class="col-md-6">
									    			<label for="hnumber">?????? ?????? ??????</label>
									            	<input type="text" id="dnumber_${status.count}" class="form-control" value="${dentist.dnumber}" name="dnumber" />
									    		</div>
									       
								        </div>
								        <div class="row mb-3">
									        <div class="col-md-6">
									           	<label>?????? ??????</label>
									           	<input type="text" class="form-control" value="${dentist.dname}" name="dname"/>
									        </div>
									        <div class="col-md-6">
									         	<label>?????? ????????????</label>
									         	<input type="text" class="form-control" value="${dentist.dtel}" name="dtel"/>
									        </div>
								        </div>
								     
										<div class="form-group ">
											<label>?????? ??????</label>
											<div>
												<div class="row mb-3">
													<div class="col-md-6">
														<input class="form-control" type="text"  name="dzipcode" value="${dentist.dzipcode}" placeholder="????????????" />
													</div>
													<div class="col-md-6">
														<input class="form-control" type="button" class="button" style="background-color: #808080; color: white;" onclick="execDaumPostcode3()" value="???????????? ??????" /><br />
													</div>
												</div>
												<div class="row mb-3">
													<div class="col-md-8">
														<input class="form-control" type="text"  name="daddress1" value="${dentist.daddress1}" placeholder="??????" /><br />
													</div>
													<div class="col-md-4">
														<input class="form-control" type="text" id="detailAddress" placeholder="????????????" value="${dentist.daddress2}"  name="daddress2"/>
													</div>
												</div>
											</div>
										</div>
								        <div class="row mb-3">
									        <div class="col-md-6">
									           	<label>?????? ?????????</label>
									           	<input type="number" class="form-control"  name="demployees" value="${dentist.demployees}">
									        </div>
									        <div class="col-md-6">
									           	<label>?????? ??????</label>
									         	<input type="number" class="form-control"  name="dpy" value="${dentist.dpy}">
									        </div>
								        </div>
								        
								      	<div>
								         	<label>?????? ??????</label>
								          	<br>
											<div id="image_container_${status.count}"></div>							
											<input type="file" multiple class="mt-2" id="dentalimg${status.count}" oninput="setThumbnailF(event,'image_container_${status.count}','dentalimg${status.count}')">
												<c:forEach var="attach" items="${dentist.dattaches}" varStatus="val">
													<br><div id='${status.count}_${val.count}' class="fa fa-minus pr-2" onclick="removeFile(this.id,'dnumber_${status.count}')">${attach.asname}</div>
												</c:forEach>
					          			</div>
					        			<div class="col-md-6  text-right">
											<input class="btn" type="submit" style="color: white; background-color: #808080;" value="????????????">
										</div>
					    			</form>
								</c:forEach>
							</c:if>
							<c:if test="${dentistSize == 0}">
								<div>?????? ????????? ????????????.</div>
							</c:if>
						</div>
						<div class="col-md-12" >
							<div class="mt-5 d-flex ">
								<div class="col-md-6 text-left">
									<div class="fa fa-plus " onclick="addinfo()">
									</div>
								</div>
								
							</div>
						</div>
						
					</div>
					
					<div class="tab-pane fade" id="security" role="tabpanel" aria-labelledby="security-tab">
						<h3 class="mb-5"><strong>?????? ??????</strong></h3>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group " id="content">
									<h4 class="mb-4"><a class="btn" onclick="requestAjaxIn()" id="int_btn"><strong>???????????? ??????</strong></a> 
										<a class="btn" onclick="requestAjaxPr()" id="pro_btn">?????? ??????</a></h4>
									<table class="col-md-12 table table-borderless">
										<tr id="tbt" >
											<th style="width: 10%;">??????</th>
											<th id="line">?????? ??????</th>
											<th>?????? ??????</th>
										</tr>
										<c:forEach var="question" items="${getUidQuestionIn}" varStatus="counting">
										<tr id="tb">
											<td>${counting.count}</td>
											<td id="line"><a href="interialQ">${question.qcontent}</a></td>
											<td>${question.qdate}</td>
											</a>
										</tr>
										</c:forEach>
									</table>
								</div>
								
							</div>
						</div>	
					</div>

					<div class="tab-pane fade h-100" id="faq" role="tabpanel" aria-labelledby="faq-tab">
						<div id="faq">
							<section class="main-content">
								<div class="container">
									<h3 class="mb-5"><strong>?????? ?????? ??????</strong></h3>
									<br>		
									<div class="row">
										<div class="col-sm-12">
											<div id="accordion">
												<div class="accordion-card">
													<div class="accordion-card__header" id="headingOne" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
														<h5 class="mb-0">
															<span style="font-size: 1.5em; font-weight: 600">Q .</span>
															<span>Studio 765????????? ?????? ?????? ??????????</span>
														</h5>
														<i class="fa fa-caret-down drop-icon"></i>
													</div>					  
													<div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
														<div class="accordion-card__body">
															<span style="font-size: 1.5em; font-weight: 600">A .</span>
															<span> ??????????????? ?????? ????????? ????????? ?????? ???????????? ???????????????.</span>
														</div>
													</div>
												</div>
												<div class="accordion-card">
													<div class="accordion-card__header collapsed" id="headingTwo" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
														<h5 class="mb-0">
															<span style="font-size: 1.5em; font-weight: 600">Q .</span>
															<span>????????? ????????? ????????? ????????? ??? ??? ??????????</span>
														</h5>
														<i class="fa fa-caret-down drop-icon"></i>
													</div>
													<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
														<div class="accordion-card__body">
															<span style="font-size: 1.5em; font-weight: 600">A .</span>
															<span> ??? ????????? ?????? ????????? ????????? ?????? ?????? ???????????????.</span>
														</div>
													</div>
												</div>
												<div class="accordion-card">
													<div class="accordion-card__header collapsed" id="headingThree" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
														<h5 class="mb-0">
															<span style="font-size: 1.5em; font-weight: 600">Q .</span>
															<span>?????? ????????? ?????? ?????? ?????? ??????????????? ????????? ??????????</span>
														</h5>
														<i class="fa fa-caret-down drop-icon"></i>
													</div>
													<div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
														<div class="accordion-card__body">
															<span style="font-size: 1.5em; font-weight: 600">A .</span>
															<span> ?????? ????????? ?????? 09:00 ~ 18:00 (?????? & ????????? ??????)??????, ??????????????? 1120-1334 ?????????.</span>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</section>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
<script>
    AOS.init();
</script>

   <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>
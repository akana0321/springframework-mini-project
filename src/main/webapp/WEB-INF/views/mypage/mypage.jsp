<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Studio765</title>
	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="/webapp/resources/css/mypage/style_mypage.css">
	<link rel="stylesheet" type="text/css" href="/webapp/resources/css/mypage/style_FAQ.css">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    
    <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/mypage/mypage.js"></script>
</head>
<body>
<div id="mypage">
	<section class="py-5 my-5">
		<div style="margin : 0px 8%"  >
			<h1 class="mb-5 " style=" width: 40%; float:none; margin:0 90px; font-weight: bold; font-size:3em" data-aos="fade-in" data-aos-duration="1000" >My Page </h1>
			<div class=" rounded-lg d-block d-sm-flex shadow-lg " style="width: 100%; background-color: #faf5ee4e; " data-aos="fade-in" data-aos-duration="3000">
				<div class="profile-tab-nav border-right mt-2">
					<div class="p-4">
						<div class="img-circle text-center mb-3" style="position: relative;" >
							<div id="userimg" data-aos="zoom-out" data-aos-duration="2000" >	
								<img src="${pageContext.request.contextPath }/resources/images/mypage/user.jpg" alt="Image" class="shadow" style="width: 200px; height: 200px;">
							</div>
								<div class="fa fa-2x fa-camera  btn float-right " id="imgchange"  onclick="changeUserImg()" data-aos="zoom-out" data-aos-duration="3000">
							</div>
						</div>
						<input type="file" id="myimg" oninput="clickimg()">
						<h4 class="text-center" style="font-weight: 700;">회원 이름</h4>
					</div>
					<div class="text-right ">
						<a class="mr-3" href="#" style="color: black; "> 회원 탈퇴</a>
					</div>
					<div class="nav flex-column nav-tabs mt-3" style="background-color: #fcc57396;"  role="tablist" aria-orientation="vertical" >
						<a class="nav-link active" id="account-tab" data-toggle="pill" href="#account" role="tab" aria-controls="account" style="color: black;">
							<i class="fa fa-user text -center mr-1"></i> 
							내 정보
						</a>
						<a class="nav-link" id="password-tab" data-toggle="pill" href="#password" role="tab" aria-controls="password" aria-selected="false" style="color: black;">
							<i class="fa fa-hospital-o text-center mr-1"></i> 
							병원 정보
						</a>
						<a class="nav-link" id="security-tab" data-toggle="pill" href="#security" role="tab" aria-controls="security" aria-selected="false" style="color: black;">
							<i class="fa fa-history text-center mr-1"></i> 
							문의 내역
						</a>
						<a class="nav-link" id="faq-tab" data-toggle="pill" href="#faq" role="tab" aria-controls="faq" aria-selected="false" style="color: black;">
							<i class="fa fa-question text-center mr-1"></i> 
							자주 묻는 질문
						</a>
						
					</div>
					
				</div>
				<div class="tab-content p-4 p-md-5 " id="v-pills-tabContent">
					<div class="tab-pane fade show active" id="account" role="tabpanel" aria-labelledby="account-tab">
						<h3 class="mb-4"><strong>내 정보</strong></h3>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>이름</label>
								  	<input type="text" class="form-control col-md-6" value="name">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>생년월일</label>
								  	<input type="date" class="form-control col-md-6" value="연락처">
								</div>
							</div>

							<div class="col-md-6">
								<div class="form-group">
								  	<label>휴대전화</label>
								  	<input type="text" class="form-control col-md-6" value="연락처">
								</div>
							</div>
							
							<div class="col-md-6">
								<div class="form-group">
								  	<label>이메일</label>
								  	<input type="text" class="form-control col-md-8" value="user@company.com">
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<label>주소</label>
									<div class="row">
										<div class="col-md-12 row">
											<div class="col-md-6">
												<input class="form-control col-md-8" type="text"  name="userAddr1" placeholder="우편번호" />
											</div>
											<div class="col-md-6">
												<input class="form-control col-md-6" type="button" class="button" style="margin-bottom: 1em" onclick="execDaumPostcode1()" value="우편번호 찾기" /><br />
											</div>
										</div>
										<div class="col-md-12 row">
											<div class="col-md-6">
												<input class="form-control col-md-12" type="text"  name="userAddr2" placeholder="주소" /><br />
											</div>
											<div class="col-md-6">
												<input class="form-control col-md-6" type="text" id="detailAddress" placeholder="상세주소" />
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<hr class="mb-5">
						<h4 class="mb-3"><strong>비밀번호 변경</strong></h4>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>이전 비밀번호</label>
								  	<input type="password" class="form-control col-md-8">
								</div>
							</div>
						</div>
						
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>새로운 비밀번호</label>
								  	<input type="password" class="form-control col-md-8">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>비밀번호 재확인</label>
								  	<input type="password" class="form-control col-md-8">
								</div>
							</div>
						</div>
						<div class="mt-5 text-right">
							<button class="btn  " style="background-color: rgba(128, 128, 128, 0.614); color:white;"><strong>저장하기</strong></button>
						</div>
					</div>
					
					<div class="tab-pane fade" id="password" role="tabpanel" aria-labelledby="password-tab">
						<div id="addinfo">
							<h3 class="mb-5"><strong>병원 정보</strong></h3>
							
							<!-- <div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label>병원 등록 번호</label>
										<input type="text" class="form-control col-md-4" value="병원 등록 번호">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>병원 이름</label>
										<input type="text" class="form-control col-md-6" value="병원 이름">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>병원 전화번호</label>
										<input type="text" class="form-control col-md-6" value="연락처">
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<label>병원 주소</label>
										<div class="row">
										<div class="col-md-12 row">
											<div class="col-md-6">
												<input class="form-control col-md-8" type="text" id="zonecode" name="addr1" placeholder="우편번호" />
											</div>
											<div class="col-md-6">
												<input class="form-control col-md-6" type="button" class="button" style="margin-bottom: 1em" onclick="execDaumPostcode2()" value="우편번호 찾기" /><br />
											</div>
										</div>
										<div class="col-md-12 row">
											<div class="col-md-6">
												<input class="form-control col-md-12" type="text" id="address" name="addr2" placeholder="주소" /><br />
											</div>
											<div class="col-md-6">
												<input class="form-control col-md-6" type="text" id="detailAddress" placeholder="상세주소" />
											</div>
										</div>
									</div>
									</div>
								</div>
								
								<div class="col-md-6">
									<div class="form-group ">
										<label>병원 직원수</label>
										<input type="number" class="form-control col-md-6" value="30">
									</div>
								</div>
								<div class="col-md-12"></div>
								<div class="col-md-6">
									<div class="form-group">
										<label>병원 평수</label>
										<input type="number" class="form-control col-md-6" value="65">
									</div>
								</div>
								<div class="col-md-12 mt-2">
									<div class="form-group">
										<label>병원 도면</label>
										<br>
										<div id="image_container0" ></div>
										<input  type="file"  value="도안" class="mt-2" onchange="setThumbnail(event,'image_container0');" >
									</div>
								</div>
							</div> -->
						</div>
						<div class="col-md-12" >
							<div class="mt-5 d-flex ">
								<div class="col-md-6 text-left">
									<div class="fa fa-plus " onclick="addinfo()">
									</div>
								</div>
								<div class="col-md-6  text-right">
								<button class="btn  " style="background-color: rgba(128, 128, 128, 0.614); color:white;"><strong>저장하기</strong></button>
								</div>
							</div>
						</div>
					</div>
					
					<div class="tab-pane fade" id="security" role="tabpanel" aria-labelledby="security-tab">
						<h3 class="mb-5"><strong>문의 내역</strong></h3>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group " id="content">
									<h4 class="mb-4"><a class="btn" onclick="requestAjaxIn()" id="int_btn"><strong>인테리어 문의</strong></a> 
										<a class="btn" onclick="requestAjaxPr()" id="pro_btn">상품 문의</a></h4>
									<table class="col-md-12 table table-borderless">
										
										<tr id="tbt" >
											<th style="width: 10%;">번호</th>
											<th id="line">문의 내용</th>
											<th>문의 일자</th>
										</tr>
										
										<tr id="tb">
											<td>1</td>
											<td id="line"><a href="interialQ.html">인테리어 문의</a></td>
											<td>2022/04/18</td>
											</a>
										</tr>
										<tr id="tb">
											<td>1</td>
											<td id="line">인테리어 문의</td>
											<td>2022/04/18</td>
										</tr>
										<tr id="tb">
											<td>1</td>
											<td id="line">인테리어 문의</td>
											<td>2022/04/18</td>
										</tr>
										<tr id="tb">
											<td>1</td>
											<td id="line">인테리어 문의</td>
											<td>2022/04/18</td>
										</tr>
										<tr id="tb">
											<td>1</td>
											<td id="line">인테리어 문의</td>
											<td>2022/04/18</td>
										</tr>
										<tr id="tb">
											<td>1</td>
											<td id="line">인테리어 문의</td>
											<td>2022/04/18</td>
										</tr>
										<tr id="tb">
											<td>1</td>
											<td id="line">인테리어 문의</td>
											<td>2022/04/18</td>
										</tr>

									</table>
								</div>
								
							</div>
						</div>	
					</div>

					<div class="tab-pane fade h-100" id="faq" role="tabpanel" aria-labelledby="faq-tab">
						<div id="faq">
							<section class="main-content">
								<div class="container">
									<h3 class="mb-5"><strong>자주 묻는 질문</strong></h3>
									<br>		
									<div class="row">
										<div class="col-sm-12">
											<div id="accordion">
												<div class="accordion-card">
													<div class="accordion-card__header" id="headingOne" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
														<h5 class="mb-0">
															<span>질문 1</span>
														</h5>
														<i class="fa fa-caret-down drop-icon"></i>
													</div>					  
													<div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
														<div class="accordion-card__body">
															답변1
														</div>
													</div>
												</div>
												<div class="accordion-card">
													<div class="accordion-card__header collapsed" id="headingTwo" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
														<h5 class="mb-0">
															<span>질문 2</span>
														</h5>
														<i class="fa fa-caret-down drop-icon"></i>
													</div>
													<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
														<div class="accordion-card__body">
															답변2
														</div>
													</div>
												</div>
												<div class="accordion-card">
													<div class="accordion-card__header collapsed" id="headingThree" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
														<h5 class="mb-0">
															<span>질문 3</span>
														</h5>
														<i class="fa fa-caret-down drop-icon"></i>
													</div>
													<div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
														<div class="accordion-card__body">
															답변3
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- <a class="btn mt-3" id="back" onclick="location.href='mypage.html'">뒤로가기</a> -->
								</div>
							</section>
						</div>
					</div>

					
					
				</div>
				<!-- <div class="flex-column">
					<img src="../images/mypage/qna.png" class="btn btn-outline-light m-1" onclick="location.href='FAQ.html'" width="100px" height="100px" id="qna">
				</div> -->
			</div>
		</div>
	</section>
</div>
<script>
    AOS.init();
</script>
</body>
</html>
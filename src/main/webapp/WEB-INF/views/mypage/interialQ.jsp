<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<body>
	<div id="interialq" style="width: 80%" class="text-center">
      <table class="mb-5">
        <td id="">
          <h1 class="mb-3"><font color="black" size="10" data-aos="zoom-in" data-aos-duration="1000">인테리어 문의</font></h1>
          <hr id="titleLine">
        </td>
      </table>
      <div class="bg-white">
        <div class="d-flex flex-column" >
          <div class="d-flex shadow mb-3" style="background-color: #ffb3400c">
            <div class="col-md-12 pt-5 text-left">
              <div class="fa fa-3x fa-arrow-circle-left float-left ml-5" onclick="location.href='mypage'" id="back" data-aos="fade-in" data-aos-duration="1500"></div>
                <div style="font-size: 40px; color: #343434; font-weight: 700; text-align: center; margin: 0 10%;" class="mb-5 " data-aos="fade-up" data-aos-duration="2000">예상 견적서</div>
              <div data-aos="slide-up" data-aos-duration="3000">
                <div>
                  <div style="clear: both">
                    <div style="width: 70%" class="m-auto">
                      <table class="table text-center">
                        <tr id="table_top" class="table-borderless">
                          <th style="width: 70%; text-align: left">제품명</th>
                          <th style="width: 10%">가격</th>
                          <th style="width: 10%">개수</th>
                          <th style="width: 10%">총액</th>
                        </tr>
                        <tr>
                          <td style="text-align: left">바닥재 : 강화 마루(조립식으로 시공, 친환경 인증)</td>
                          <td>20,000 ₩</td>
                          <td>3</td>
                          <td>60,000 ₩</td>
                        </tr>
                        <tr>
                          <td style="text-align: left">바닥재 : 강화 마루(조립식으로 시공, 친환경 인증)</td>
                          <td>20,000 ₩</td>
                          <td>3</td>
                          <td>60,000 ₩</td>
                        </tr>
                        <tr>
                          <td style="text-align: left">바닥재 : 강화 마루(조립식으로 시공, 친환경 인증)</td>
                          <td>20,000 ₩</td>
                          <td>3</td>
                          <td>60,000 ₩</td>
                        </tr>
                        <tr>
                          <td style="text-align: left">바닥재 : 강화 마루(조립식으로 시공, 친환경 인증)</td>
                          <td>20,000 ₩</td>
                          <td>3</td>
                          <td>60,000 ₩</td>
                        </tr>
                        <tr>
                          <td style="text-align: left">바닥재 : 강화 마루(조립식으로 시공, 친환경 인증)</td>
                          <td>20,000 ₩</td>
                          <td>3</td>
                          <td>60,000 ₩</td>
                        </tr>
                        <tr>
                          <td style="text-align: left">바닥재 : 강화 마루(조립식으로 시공, 친환경 인증)</td>
                          <td>20,000 ₩</td>
                          <td>3</td>
                          <td>60,000 ₩</td>
                        </tr> 
                      </table>
                      <div class="table text-left" id="table_bottom"></div>
                      <div class="text-left mt-5">
                        <p class="mb-2" style="font-weight: 600">Invoice Total</p>
                        <p style="font-size: 200%"><strong>400,000,000₩</strong></p>
                      </div>
                      <div>
                        <table class="table table-borderless table-condensed text-right">
                          <tr>
                            <th style="font-weight: 600; width: 80%">SubTotal</th>
                            <th>399,800,000 ₩</th>
                          </tr>
                          <tr>
                            <td style="font-weight: 600">Sales Tax</td>
                            <td style="font-weight: 600">200,000 ₩</td>
                          </tr>
                        </table>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div id="question"> 
           <c:forEach var="comment" items="${CommentList}" varStatus="counting">
           <c:if test="${comment.uid eq sessionUid}">
           <div id=${comment.cno} class="col-md-12 shadow mb-3" style="background-color: rgb(239, 239, 239);"  data-aos="zoom-in-up" data-aos-duration="2000" data-aos-offset="200">
              <div class="text-left mt-2 ml-2" style="font-size: 30px; font-weight: 600; padding-top: 2%;">문의</div>
              <div id="minus" style="margin-left:70%" >
              <form method="post" action="removeQuestion">
              <input name="cno" value=${comment.cno } style="visibility: hidden;">
              <input type="submit"  class="btn btn-light" value="삭제하기">
              </form>
              </div>
              <!--  
              <script type="text/javascript"> 
              function removeQuestion(value){
            		const formData = new FormData();
            			formData.append("QuestionValue", value);
            			console.log(value);
            			//Ajax로 서버로 전송
            			$.ajax({
            				url: "removeQuestion",
            				method: "post",
            				data: formData,
            				cache: false,		// 파일이 포함되어 있으니, 브라우저 메모리에 저장 x
            				processData: false, // title=xxx&desc=yyy 식으로 x
            				contentType: false	// 파트마다 Content-Type이 포함되기 때문에 따로 헤더에 Content-Type에 추가 x
            			})
            	}

              </script>
              -->
              <hr/>
              <div class="text-left m-5">
                  <div>
<pre class="ml-3" >
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
           <div class="col-md-12 shadow mb-3" style="background-color: white;"  data-aos="zoom-in-up" data-aos-duration="2000" data-aos-offset="200">
              <div class="text-left mt-2 ml-2" style="font-size: 30px; font-weight: 600; padding-top: 2%;">답변</div>
              <hr/>
              <div class="text-left m-5">
                  <div>
<pre class="ml-3" >
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
           <!-- 
            <div class="col-md-12 shadow mb-3" style="background-color: rgb(239, 239, 239);"  data-aos="zoom-in-up" data-aos-duration="2000" data-aos-offset="200">
              <div class="text-left mt-2 ml-2" style="font-size: 30px; font-weight: 600; padding-top: 2%;">문의</div>
              <hr/>
              <div class="text-left m-5">
                  <div>
<pre class="ml-3" >
    위의 견적서로 ~~~
</pre>
                  </div>
                  <div class="text-right"  style="padding-bottom: 2% ;">
                      <span style="font-size: 20px; font-weight: 500;">2022-04-23 12:00:00</span>
                  </div>
              </div>
            </div>
            <div class="col-md-12 shadow mb-3" style="background-color: white" data-aos="zoom-in-up" data-aos-duration="2000" data-aos-offset="200">
              <div class="text-left mt-2 ml-2" style="font-size: 30px; font-weight: 600; padding-top: 2%;">답변</div>
              <hr/>
              <div class="text-left m-5">
                  <div>
<pre class="ml-3" >
    해당 견적서를 토대로~~~
</pre>
                  </div>
                  <div class="text-right"  style="padding-bottom: 2% ;">
                      <span style="font-size: 20px; font-weight: 500;">2022-04-23 12:00:00</span>
                  </div>
              </div>
            </div>
          </div>
           -->
          </div>
          <div class="col-md-12 shadow" id="inquire" data-aos="fade-out-down" data-aos-duration="3000" data-aos-offset="200">
            <div class="text-left mt-2 ml-2" style="font-size: 30px; font-weight: 600; padding-top: 2%;">
              문의
            </div>
            <hr/>
            
            <form style="margin-top: 5%; margin-bottom: 5%" action="question" method="POST">
              <div class="col-md-12">
                <div class="form-group m-4">
                  <textarea cols="60" class="form-control" name="ccontent" rows="15" placeholder="문의 내용" style="resize: none" ></textarea>
                </div>
              </div>
              <div class="text-center">
                <div class="form-group m-4  text-right">
                  <input id="cattach" type="file" class="btn form-control-file" name="cattach" oninput="uploadFile(event)" multiple>
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


    <script>
      AOS.init();
    </script>
</body>
</html>
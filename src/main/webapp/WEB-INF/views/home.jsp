<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>STUDIO 765</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mainheader.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footerMain.css" />
  </head>
<%@ include file="/WEB-INF/views/common/mainheader.jsp" %>

<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
<div class="main">
      <div style="top: 0; position: absolute; z-index: -1; width: 100%; height: 100%;">
        <img class="slide1" style="width: 100vw; height: 100vh;" src="./resources/images/main/main1.png" />
        <img class="slide1" style="width: 100vw; height: 100vh;" src="./resources/images/main/main2.png" />
        <img class="slide1" style="width: 100vw; height: 100vh;" src="./resources/images/main/main3.png" />
        <img class="slide1" style="width: 100vw; height: 100vh;" src="./resources/images/main/main4.png" />
        <img class="slide1" style="width: 100vw; height: 100vh;" src="./resources/images/main/main5.png" />
        <img class="slide1" style="width: 100vw; height: 100vh;" src="./resources/images/main/main6.png" />
        <img class="slide1" style="width: 100vw; height: 100vh;" src="./resources/images/main/main7.png" />
        <img class="slide1" style="width: 100vw; height: 100vh;" src="./resources/images/main/main8.png" />
        <img class="slide1" style="width: 100vw; height: 100vh;" src="./resources/images/main/main8.png" />
      </div>
      <div class="maincon" style="position: absolute; z-index: 1;">
        <label>
          독보적 1위<br/>
          치과 인테리어
        </label>
        <p style="font-size: 1.3em">
          진료 환경에 최적화된 레이아웃 설계와 고객 취향에 맞는 <br />
          차별화된 디자인, 그리고 완벽한 시공 품질까지
        </p>
        <div class="btn ml-0">
        	<c:if test="${sessionUid == null}">
	        	<div class="mr-3">
	           		<a href="${pageContext.request.contextPath}/user/login" class="mainbtn1">튜토리얼 시작</a>
	          	</div>
	          	<div>
	            	<a href="${pageContext.request.contextPath}/aboutus/content" class="mainbtn2">비회원으로 시작</a>
	          	</div>
        	</c:if>
          	<c:if test="${sessionUid != null}">
          		<a href="${pageContext.request.contextPath}/aboutus/content" class="mainbtn1">튜토리얼 시작</a>
          	</c:if>
        </div>
      </div>
    </div>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
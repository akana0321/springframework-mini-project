<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <header>
      <a href="${pageContext.request.contextPath}/home"><img src="${pageContext.request.contextPath}/resources/images/logo.png" class="img" /></a>
      <div class="menu" style="height: max-content">
        <div><a href="${pageContext.request.contextPath}/aboutus/content" class="menubtn">ABOUT US</a></div>
        <div><a href="${pageContext.request.contextPath}/pickPY/content" class="menubtn">시스템 소개</a></div>
        <div><a href="${pageContext.request.contextPath}/portfolio/portfolio" class="menubtn">포트폴리오</a></div>
        <c:if test="${sessionUid == null}">
        	<div><a onclick="callModal()" class="menubtn">견적문의</a></div>
        </c:if>
        <c:if test="${sessionUid != null}">
			<div><a href="${pageContext.request.contextPath}/question/questionIndex" class="menubtn">견적문의</a></div>
		</c:if>
        <div>
        	<c:if test="${sessionUid == null}">
				<a href="${pageContext.request.contextPath}/user/login" class="menubtn">로그인</a>
			</c:if>
			<c:if test="${sessionUid != null}">
				<a href="${pageContext.request.contextPath}/user/logout" class="menubtn">로그아웃</a>
			</c:if>
        </div>
        <div>
        	<c:if test="${sessionUid == null}">
				<a href="${pageContext.request.contextPath}/user/signup1" class="menubtn">회원가입</a>
			</c:if>
			<c:if test="${sessionUid != null}">
				<a href="${pageContext.request.contextPath}/mypage/mypage" class="menubtn">마이페이지</a>
			</c:if>
        </div>
      </div>
    </header>
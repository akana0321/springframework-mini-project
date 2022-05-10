<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h4 class="mb-4">
  <a class="btn" onclick="requestAjaxIn()" id="int_btn">인테리어 문의</a> <a class="btn" onclick="requestAjaxPr()" id="pro_btn"><strong>상품 문의</strong></a>
</h4>
<table class="col-md-12 table table-borderless">
  <tr id="tbt">
    <th style="width: 10%;">번호</th>
    <th id="line">문의 내용</th>
    <th>문의 일자</th>
  </tr>
  
  <c:forEach var="question" items="${getUidQuestionPro}" varStatus="counting">
	<tr id="tb">
		<td>${counting.count}</td>
		<td id="line"><a href="interialP">${question.qcontent}</a></td>
		<td>${question.qdate}</td>

	</tr>
	</c:forEach>
  
</table>

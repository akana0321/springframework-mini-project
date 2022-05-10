<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Studio 765</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    
    <script>
	    $(document).ready(function (){
	        $("#myModal").modal("show");
	    });
    </script>
</head>
<body>
<%-- modal --%>
<div class="modal fade" tabindex="-1" id="myModal" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">사용 권한이 없습니다.</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>로그인 후 사용하실 수 있는 메뉴입니다.</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn" onclick="location.href='goBackHome'" style="background-color: #ffb440; color:white;">확인</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>
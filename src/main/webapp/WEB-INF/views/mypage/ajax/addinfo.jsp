<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
</h4>
	<form method="post" modelAttribute="dentist" action="dentalInfoAdd">
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label for="hnumber">병원 등록 번호</label>
                <input type="text" class="form-control col-md-12" value="1111" name="dnumber"/>
            </div>
        </div>
        <div class="col-md-6"></div>
        <div class="col-md-6">
            <div class="form-group">
                <label>병원 이름</label>
                <input type="text" class="form-control col-md-12" value="병원 이름" name="dname"/>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label>병원 전화번호</label>
                <input type="text" class="form-control col-md-12" value="연락처" name="dtel"/>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <label>병원 주소</label>
                <div class="row">
                    <div class="col-md-12 row">
                        <div class="col-md-6">
                            <input class="form-control col-md-12" type="text" id="zonecode" placeholder="우편번호" name="dzipcode"/>
                        </div>
                        <div class="col-md-6">
                            <input id="buttonForFind" class="form-control col-md-12" type="button" class="button" style="background-color: #808080; color: white;" value="우편번호 찾기" /><br />
                        </div>
                    </div>
                    <div class="col-md-12 row">
                        <div class="col-md-8">
                            <input class="form-control col-md-12" type="text" id="address" placeholder="주소" name="daddress1" /><br />
                        </div>
                        <div class="col-md-4">
                            <input class="form-control col-md-12" type="text" id="detailAddress" placeholder="상세주소" name="daddress2"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="col-md-6">
            <div class="form-group ">
                <label>병원 직원수</label>
                <input type="number" class="form-control col-md-6" value="30" name="demployees">
            </div>
        </div>
        <div class="col-md-12"></div>
        <div class="col-md-6">
            <div class="form-group">
                <label>병원 평수</label>
                <input type="number" class="form-control col-md-6" value="60" name="dpy">
            </div>
        </div>
        <div class="col-md-12 mt-2">
            <div class="form-group">
                <label>병원 도면</label>
                <br>
              

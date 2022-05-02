<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
</h4>
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <label>병원 등록 번호</label>
                <input type="text" class="form-control col-md-4" value="병원 등록 번호">
            </div>
        </div>
        <div class="col-md-7">
            <div class="form-group">
                <label>병원 이름</label>
                <input type="text" class="form-control col-md-8" value="병원 이름">
            </div>
        </div>
        <div class="col-md-5">
            <div class="form-group">
                <label>병원 전화번호</label>
                <input type="text" class="form-control col-md-8" value="연락처">
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <label>병원 주소</label>
                <div class="row">
                    <div class="col-md-12 row">
                        <div class="col-md-6">
                            <input class="form-control col-md-8" type="text" id="zonecode" placeholder="우편번호" />
                        </div>
                        <div class="col-md-6">
                            <input id="buttonForFind" class="form-control col-md-6" type="button" class="button" style="margin-bottom: 1em" value="우편번호 찾기" /><br />
                        </div>
                    </div>
                    <div class="col-md-12 row">
                        <div class="col-md-6">
                            <input class="form-control col-md-12" type="text" id="address" placeholder="주소" /><br />
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
              <!-- <div id="image_container2"></div>
                <input type="file"  value="도안" class="mt-2" onchange="setThumbnail(event,'image_container1');" >
          </div>
        </div>

    </div> -->
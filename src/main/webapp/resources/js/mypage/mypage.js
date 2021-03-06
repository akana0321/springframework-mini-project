//상품 문의
function requestAjaxPr() {
	  $.ajax({
	    url: "ajax/product",
	    method: "post",
	    data: { pageNo: 1 },
	    success: function (data) {
	      $("#content").html(data);
	    },
	    error: function (response) {
	      console.log(response.status);
	    },
	  });

	  var let = document.getElementById("int_btn");
	  let.innerHTML="<strong>";
	}
	
//인테리어 문의
function requestAjaxIn() {
  $.ajax({
    url: "ajax/interial",
    method: "post",
    data: { pageNo: 1 },
    success: function (data) {
      $("#content").html(data);
    },
    error: function (response) {
      console.log(response.status);
    },
  });
}

//추가된 병원 수를 세기 위한 변수
var count = 0;

// 병원 추가
function addinfo(){
  
  var add = document.getElementById("addinfo");
  count += 1;
  var tmp ="<hr>";
  tmp += "<h4 class='mb-5 '>";
  tmp +=  "<div class='fa fa-minus-circle mr-2' onclick='removeinfo("+count+")' ></div>";
  tmp += "병원 정보<span style='font-size: 5px;'>(추가)</span>";
  

$.ajax({
	url: "ajax/addinfo",
	method: "post",
	data: { pageNo: 1 },
	success: function (data) {
	  tmp += data;
	  tmp += "<div id='image_container" + count;
	  tmp += "'></div><input type='file' id='dentalimg"+count+"'  name='dattaches' onchange=\"setThumbnail(event,'image_container" + count;
	  tmp += "','dentalimg"+count+"');\" ></div></div>";
	  tmp += "<div style='margin: 0 auto;'><input class='btn' type='submit' style='color: white; background-color: #808080;' value='저장하기'></div></div> </form>";
	  
	  let div = document.createElement("div");
	  div.setAttribute("id",count);
	  div.setAttribute("data-aos","fade-out ");
	  div.setAttribute("data-aos-duration","1000");
	  div.innerHTML = tmp;
	  add.appendChild(div);
	  
	  document.getElementById("zonecode").setAttribute("id","zonecode" + count);
	  document.getElementById("address").setAttribute("id","address"+count);
	
	  document.getElementById("buttonForFind").setAttribute("id","buttonForFind"+count);
	  document.getElementById("buttonForFind" + count).setAttribute("onclick", "execDaumPostcode2("+count+")");
	
	    },
	    error: function (response) {
	      console.log(response.status);
	    },
	 });
}
//기존 병원 정보 삭제
function removeinfoR(value){
	const sendData = document.getElementById("dnumber_"+value).getAttribute("value");
	console.log(sendData);
	
	const formData = new FormData();
	formData.append("sendData", sendData);
	//Ajax로 서버로 전송
	$.ajax({
		url: "removeinfoR",
		method: "post",
		data: formData,
		cache: false,		// 파일이 포함되어 있으니, 브라우저 메모리에 저장 x
		processData: false, // title=xxx&desc=yyy 식으로 x
		contentType: false	// 파트마다 Content-Type이 포함되기 때문에 따로 헤더에 Content-Type에 추가 x
	}).done((data) => {
		console.log(data);
		if(data.result === "success") {
			window.alert("병원 정보 삭제 완료");
		}
	});
}
	
//추가된 병원 정보 삭제
function removeinfo(value){
  let div = document.getElementById(value);
  div.remove();
}

//병원 정보에 업로드된 파일 삭제
function removeFile(value,idx){
	console.log(value);
	var removeF = document.getElementById(value).innerText;
	const sendData = document.getElementById(idx).getAttribute("value");
	var sendDataR = removeF + " " + sendData;
	console.log(sendDataR);
	
  	var div = document.getElementById(value);
 	div.remove();
 	
 	const formData = new FormData();
	formData.append("sendData", sendDataR);
	
	$.ajax({
		url: "removeFile",
		method: "post",
		data: formData,
		cache: false,		
		processData: false, 
		contentType: false	
	})
}


//유저 프로필 이미지 변경
function changeUserImg() {
  let myImg = document.getElementById("myimg");
  myImg.click();
}
	
//이미지 변경 클릭 이벤트
function clickimg(event) {
   	var reader = new FileReader();
	reader.onload = function (event) {
	var img = document.createElement("img");
	img.setAttribute("src", event.target.result);
 	img.setAttribute("style", "width: 200px; height: 200px; object-fit: cover;");
 	img.setAttribute("class","shadow")
	$("#userimg").html(img);
	};
	reader.readAsDataURL(event.target.files[0]);
 
	const attach = document.querySelector("#myimg").files[0];
	
	//Multipart/form-data
	const formData = new FormData();
	formData.append("attach", attach);
	
	//Ajax로 서버로 전송
	$.ajax({
		url: "fileuploadAjax",
		method: "post",
		data: formData,
		cache: false,		
		processData: false, 
		contentType: false	
	}).done((data) => {
		console.log(data);
		if(data.result === "success") {
			window.alert("프로필 이미지 변경 완료");
		}
	});
}
	

//추가하는 병원 정보 업로드 파일 미리보기
function setThumbnail(event,idx,imgNum) {
  var reader = new FileReader();
  reader.onload = function (event) {
    var img = document.createElement("img");
    img.setAttribute("src", event.target.result);
    img.setAttribute("style", "width: 80%; height: 80%; border:solid; border-radius:1%;object-fit: cover;");
    $("#" + idx).html(img);
  };
  reader.readAsDataURL(event.target.files[0]);

  
  const attach = document.querySelector("#"+imgNum).files[0];
	
	//Multipart/form-data
	const formData2 = new FormData();
	formData2.append("attach", attach);
	
	//Ajax로 서버로 전송
	$.ajax({
		url: "fileuploadAjax2",
		method: "post",
		data: formData2,
		cache: true,		
		processData: false, 
		contentType: false	
	})
  
  
}

//업로드 파일 미리보기
function setThumbnailF(event,idx,imgNum) {
  var reader = new FileReader();
  reader.onload = function (event) {
    var img = document.createElement("img");
    img.setAttribute("src", event.target.result);
    img.setAttribute("style", "width: 80%; height: 80%; border:solid; border-radius:1%;object-fit: cover;");
    $("#" + idx).html(img);
  };
  reader.readAsDataURL(event.target.files[0]);
  
  const attach = document.querySelector("#"+imgNum).files[0];
	//${"#attach"}[0].files[0];
	console.log(attach);
	//Multipart/form-data
	const formData1 = new FormData();
	formData1.append("attach", attach);
	
	//Ajax로 서버로 전송
	$.ajax({
		url: "fileuploadAjax2",
		method: "post",
		data: formData1,
		cache: true,		
		processData: false, 
		contentType: false	
	})
}

//회원 주소
function execDaumPostcode1(infoNum) {
  new daum.Postcode({
    oncomplete: function (data) {
      var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
          var extraRoadAddr = ''; // 도로명 조합형 주소 변수

          // 법정동명이 있을 경우 추가
          if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
              extraRoadAddr += data.bname;
          }
          // 건물명이 있고, 공동주택일 경우 추가
          if(data.buildingName !== '' && data.apartment === 'Y'){
             extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
          }
          // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열
          if(extraRoadAddr !== ''){
              extraRoadAddr = ' (' + extraRoadAddr + ')';
          }
          // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가
          if(fullRoadAddr !== ''){
              fullRoadAddr += extraRoadAddr;
          }

          console.log(data.zonecode);//우편번호
          console.log(fullRoadAddr);//주소정보
          $("[id=zonecode"+infoNum+"]").val(data.zonecode);
          $("[id=address"+infoNum+"]").val(fullRoadAddr);
    }
  }).open();
}
	
	

//병원 주소
function execDaumPostcode2(num) {
  new daum.Postcode({
    oncomplete: function (data) {
      var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
          var extraRoadAddr = ''; // 도로명 조합형 주소 변수

          // 법정동명이 있을 경우 추가
          if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
              extraRoadAddr += data.bname;
          }
          // 건물명이 있고, 공동주택일 경우 추가
          if(data.buildingName !== '' && data.apartment === 'Y'){
             extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
          }
          // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열
          if(extraRoadAddr !== ''){
              extraRoadAddr = ' (' + extraRoadAddr + ')';
          }
          // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가
          if(fullRoadAddr !== ''){
              fullRoadAddr += extraRoadAddr;
          }

          console.log(data.zonecode);//우편번호
          console.log(fullRoadAddr);//주소정보

          $("[id=zonecode"+num+"]").val(data.zonecode);
          $("[id=address"+num+"]").val(fullRoadAddr);
 
    }
  }).open();
}
	
function execDaumPostcode3() {

  new daum.Postcode({
    oncomplete: function (data) {
      var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
          var extraRoadAddr = ''; // 도로명 조합형 주소 변수
          // 법정동명이 있을 경우 추가
          if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
              extraRoadAddr += data.bname;
          }
          // 건물명이 있고, 공동주택일 경우 추가
          if(data.buildingName !== '' && data.apartment === 'Y'){
             extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
          }
          // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열
          if(extraRoadAddr !== ''){
              extraRoadAddr = ' (' + extraRoadAddr + ')';
          }
          // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가
          if(fullRoadAddr !== ''){
              fullRoadAddr += extraRoadAddr;
          }

          console.log(data.zonecode);//우편번호
          console.log(fullRoadAddr);//주소정보
          $("[name=uzipcode]").val(data.zonecode);
          $("[name=uaddress1]").val(fullRoadAddr);

    }
  }).open();
}

function requestAjaxPr() {
	  $.ajax({
	    url: "ajax/product",
	    method: "get",
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

	function requestAjaxIn() {
	  $.ajax({
	    url: "ajax/interial",
	    method: "get",
	    data: { pageNo: 1 },
	    success: function (data) {
	      $("#content").html(data);
	    },
	    error: function (response) {
	      console.log(response.status);
	    },
	  });
	}

	// 병원 추가
	var count = 0;
	var addrNum = 0;

	function addinfo(){
	  var add = document.getElementById("addinfo");
	  count += 1;
	  var tmp ="<hr>";
	  tmp += "<h4 class='mb-5 '>";
	  tmp +=  "<div class='fa fa-minus-circle mr-2' onclick='removeinfo("+count+")' ></div>";
	  tmp += "병원 정보<span style='font-size: 5px;'>(추가)</span>";
	  

	    $.ajax({
	    url: "ajax/addinfo",
	    method: "get",
	    data: { pageNo: 1 },
	    success: function (data) {
	      tmp += data;
	      tmp += "<div id='image_container" + count;
	      tmp += "'></div><input type='file'  value='도안' name='dattaches' class='mt-2' onchange=\"setThumbnail(event,'image_container" + count;
	      tmp += "');\"></div></div></div>";
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

	function removeinfo(value){
	  let div = document.getElementById(value);
	  div.remove();
	}


	function changeUserImg() {
	  let myImg = document.getElementById("myimg");
	  myImg.click();
	  //<img src="../images/mypage/user.jpg" alt="Image" class="shadow" style="width: 70%; height: 70%;">
	}
	function clickimg() {
	   var tmp = document.getElementById("myimg");
	  console.log(tmp.files);
	  
	  var userimg = document.getElementById("userimg");
	  var data = "<img src='${pageContext.request.contextPath }/resources/images/mypage/";
	  data += tmp.files[0].name;
	  data += "' alt='Image' class='shadow' style='width: 20px; height: 20px; object-fit: cover;'>";
	  userimg.innerHTML = data;
	}

	function setThumbnail(event,idx) {
	  var reader = new FileReader();
	  reader.onload = function (event) {
	    var img = document.createElement("img");
	    img.setAttribute("src", event.target.result);
	    img.setAttribute("style", "width: 80%; height: 80%; border:solid; border-radius:1%;object-fit: cover;");
	    $("#" + idx).html(img);
	  };
	  reader.readAsDataURL(event.target.files[0]);
	}


	//회원 주소
	function execDaumPostcode1() {

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
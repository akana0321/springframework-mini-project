//이용약관 전체 동의
function checkSelectAll() {
  // 전체 체크박스
  const checkboxes = document.querySelectorAll('input[name="agreement"]');
  // 선택된 체크박스
  const checked = document.querySelectorAll('input[name="agreement"]:checked');
  // select all 체크박스
  const selectAll = document.querySelector('input[name="selectall"]');

  if (checkboxes.length === checked.length) {
    selectAll.checked = true;
  } else {
    selectAll.checked = false;
  }
}

function selectAll(selectAll) {
  const checkboxes = document.getElementsByName("agreement");

  checkboxes.forEach((checkbox) => {
    checkbox.checked = selectAll.checked;
  });
}

$(function() {
	$('#upassword1').keyup(function(){
      $('#pwCheck').html('');
    });

    $('#upassword2').keyup(function(){
        if($('#upassword1').val() != $('#upassword2').val()){
          $('#pwCheck').html('비밀번호가 일치하지 않습니다.');
          $('#pwCheck').css('color', '#ff0000');
        } else{
          $('#pwCheck').html('비밀번호가 일치합니다.');
          $('#pwCheck').css('color', '#000000');
        }

    });
});

function inputCheck() {
    if (document.regFrm.id.value == "") {
        alert("아이디를 입력해 주세요.");
        document.regFrm.id.focus();
        return;
    }
 
    if (document.regFrm.pwd.value == "") {
        alert("비밀번호를 입력해 주세요.");
        document.regFrm.pwd.focus();
        return;
    }
 
    if (document.regFrm.pwd.value == "") {
        alert("비밀번호를 확인해 주세요.");
        document.regFrm.pwd.focus();
        return;
    }
 
    if (document.regFrm.pwd.value != document.regFrm.repwd.value)
    {
        alert("비밀번호가 일치하지 않습니다.");
        document.regFrm.repwd.value = "";
        document.regFrm.id.focus();
        return;
    }
 
    if (document.regFrm.name.value == "") {
        alert("이름을 입력해 주세요");
        document.regFrm.name.focus();
        return;
    }
 
    if (document.regFrm.birthday.value == "") {
        alert("생년월일을 입력해주세요.");
        document.regFrm.birthday.focus();
        return;
    }
 
    if (document.regFrm.email.value == "") {
        alert("이메일을 입력해 주세요.");
        document.regFrm.email.focus();
        return;
    }
 
    var str = document.regFrm.email.value;
    var atPos = str.indexOf('@');
    var atLastPos = str.lastIndexOf('@');
    var dotPos = str.indexOf('.');
    var spacePos = str.indexOf('');
    var commaPos = str.indexOf(',');
    var eMailSize = str.length;
    if (atPos > 1 && atPos == atLastPos && dotPos > 3 && spacePos == -1
            && commaPos == -1 && atPos + 1 < dotPos && dotPos + 1 < eMailSize)
        ;
    else {
        alert('E-mail 주소 형식이 잘못되었습니다. /n/r 다시 입력해주세요!');
        document.regFrm.email.focus();
        return;
        // 이메일 형식을 검사하는 부분입니다.
    }
 
    if (document.regFrm.zipcode.value == "") {
        alert("우편번호를 검색해 주세요.");
        return;
    }
 
    if (document.regFrm.job.value == "") {
        alert("직업을 선택해 주세요");
        document.regFrm.job.focus();
        return;
    }
 
    document.regFrm.submit();
}
 
function win_close() {
    self.close();
}
 

//회원 주소
/* function execDaumPostcode1() {
  	new daum.Postcode({
    	oncomplete: function(data) {
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
} */
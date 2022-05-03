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

//회원 주소
function execDaumPostcode() {
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
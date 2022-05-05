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
      $('#pwsameCheck').html('');
    });

    $('#upassword2').keyup(function(){
        if($('#upassword1').val() != $('#upassword2').val()){
          $('#pwsameCheck').html('비밀번호가 일치하지 않습니다.');
          $('#pwsameCheck').css('color', '#ff0000');
        } else{
          $('#pwsameCheck').html('비밀번호가 일치합니다.');
          $('#pwsameCheck').css('color', '#000000');
        }
    });
});
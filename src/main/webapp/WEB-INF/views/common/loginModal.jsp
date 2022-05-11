<%@ page contentType="text/html; charset=UTF-8" %>
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
                <button type="button" class="btn" data-dismiss="modal" style="background-color: #808080; color:white;">확인</button>
            </div>
        </div>
    </div>
</div>
<script>
	function callModal() {
		$("#myModal").modal("show");
		$(".modal-backdrop").removeAttr('position');
	}
</script>
function voteCheck() {
	if (frm.V_JUMIN.value.length == 0) {
		alert("주민번호가 입력되지 않았습니다!")
		frm.V_JUMIN.focus();
	}
	else if (frm.V_NAME.value.length == 0) {
		alert("성명이 입력되지 않았습니다!")
		frm.V_NAME.focus();
	}
	else if (frm.M_NO.value == 0) {
		alert("후보번호기 선택되지 않았습니다!")
		frm.M_NO.focus();
	}
	else if (frm.V_NAME.value.length == 0) {
		alert("성명이 입력되지 않았습니다!")
		frm.V_NAME.focus();
	}
	else if (frm.V_TIME.value.length == 0) {
		alert("투표시간이 입력되지 않았습니다!")
		frm.V_TIME.focus();
	}
	else if (frm.V_AREA.value.length == 0) {
		alert("투표장소가 입력되지 않았습니다!")
		frm.V_AREA.focus();
	}
	else if (frm.V_CONFIRM.value === "") {
		alert("유권자확인이 선택되지 않았습니다!")
		frm.V_CONFIRM.focus();
	}
	else {
		alert("투표하기 정보가 정상적으로 등록 되었습니다.");
		/*document.frm.submit();*/
		window.location('index.jsp');
	}
}

function res() {
	alert("정보를 지우고 처음부터 다시 입혁합니다!");
	document.frm.reset();
	frm.V_JUMIN.focus();
}
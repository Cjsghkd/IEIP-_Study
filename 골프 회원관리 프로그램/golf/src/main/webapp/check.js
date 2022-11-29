function insertCheck() {
	if (frm.month.value.length == 0) {
		alert("수강월이 입력되지 않았습니다.");
		frm.month.focus();
	}
	else if (frm.c_name.value.length == 0) {
		alert("회원명이 선택되지 않았습니다.");
		frm.c_name.focus();
	}
	else if (frm.c_no.value.length == 0) {
		alert("회원번호가 입력되지 않았습니다.");
		frm.c_no.focus();
	}
	else if (frm.address.value.length == 0) {
		alert("강의장소가 선택되지 않았습니다.");
		frm.address.focus();
	}
	else if (frm.class_name.value.length == 0) {
		alert("강의명이 선택되지 않았습니다.");
		frm.class_name.focus();
	}
	else if (frm.class_price.value.length == 0) {
		alert("수강료가 입력되지 않았습니다.");
		frm.class_price.focus();
	}
	else {
		alert("수강신청이 정상적으로 완료되었습니다!");
		window.location('index.jsp');
	}
}

function res() {
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	document.frm.reset();
	frm.month.focus();
}
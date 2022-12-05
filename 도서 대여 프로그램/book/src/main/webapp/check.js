function borrow() {
	if(frm.bor_no.value.length == 0) {
		alert("대여번호가 입력되지 않았습니다");
		frm.bor_no.focus();
	}
	else if(frm.m_name.value == 0) {
		alert("고객이름이 입력되지 않았습니다");
		frm.m_name.focus();
	}
	else if(frm.m_no.value.length == 0) {
		alert("고객번호가 입력되지 않았습니다");
		frm.m_no.focus();
	}
	else if(frm.job.value === "") {
		alert("직업이 입력되지 않았습니다");
		frm.job.focus();
	}
	else if(frm.bookname.value == 0) {
		alert("도서명이 입력되지 않았습니다");
		frm.bookname.focus();
	}
	else if(frm.bor_date.value == 0) {
		alert("대여날짜가 입력되지 않았습니다");
		frm.bor_date.focus();
	}
	else {
		alert("대여 완료");
		document.frm.submit();
	}
}

function res() {
	alert("처음부터 다시 입력!");
	document.frm.reset();
	frm.m_name.focus();
}
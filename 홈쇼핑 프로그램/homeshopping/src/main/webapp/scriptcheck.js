function insertcheck() {
	if(frm.custno.value.length == 0) {
		alert("회원번호가 입력되지 않았습니다.");
		frm.custno.focus();
	}
	else if(frm.custname.value.length == 0) {
		alert("회원성명이 입력되지 않았습니다.");
		frm.custname.focus();
	}
	else if(frm.phone.value.length == 0) {
		alert("회원전화가 입력되지 않았습니다.");
		frm.phone.focus();
	}
	else if(frm.address.value.length == 0) {
		alert("회원주소가 입력되지 않았습니다.");
		frm.address.focus();
	}
	else if(frm.joindate.value.length == 0) {
		alert("가입일자가 입력되지 않았습니다.");
		frm.joindate.focus();
	}
	else if(frm.grade.value.length == 0) {
		alert("고객등급이 입력되지 않았습니다.");
		frm.grade.focus();
	}
	else if(frm.city.value.length == 0) {
		alert("도시코드가 입력되지 않았습니다.");
		frm.city.focus();
	}
	else {
		alert("회원등록이 완료되었습니다!");
		document.frm.submit();
	}
}

function search() {
	window.location('memberlist.jsp');
}
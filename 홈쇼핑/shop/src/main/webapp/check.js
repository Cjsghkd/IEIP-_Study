function insert() {
	if (frm.custname.value.length == 0) {
		alert("회원성명이 입력되지 않았습니다.")
		frm.custname.foucs();
		return false;
	}
	if (frm.phone.value.length == 0) {
		alert("회원전화가 입력되지 않았습니다.")
		frm.phone.foucs();
		return false;
	}
	if (frm.address.value.length == 0) {
		alert("회원주소가 입력되지 않았습니다.")
		frm.address.foucs();
		return false;
	}
	if (frm.joindate.value.length == 0) {
		alert("가입일자가 입력되지 않았습니다.")
		frm.joindate.foucs();
		return false;
	}
	if (frm.grade.value.length == 0) {
		alert("고객등급이 입력되지 않았습니다.")
		frm.grade.foucs();
		return false;
	}
	if (frm.city.value.length == 0) {
		alert("도시코드가 입력되지 않았습니다.")
		frm.city.foucs();
		return false;
	}
	
	alert("회원등록이 완료 되었습니다!")
	document.frm.submit();
	return true;
}

function search() {
	window.location = 'memberlist.jsp';
	return true;
}

function modify() {
	if (frm.custname.value.length == 0) {
		alert("회원성명이 입력되지 않았습니다.")
		frm.custname.foucs();
		return false;
	}
	if (frm.phone.value.length == 0) {
		alert("회원전화가 입력되지 않았습니다.")
		frm.phone.foucs();
		return false;
	}
	if (frm.address.value.length == 0) {
		alert("회원주소가 입력되지 않았습니다.")
		frm.address.foucs();
		return false;
	}
	if (frm.joindate.value.length == 0) {
		alert("가입일자가 입력되지 않았습니다.")
		frm.joindate.foucs();
		return false;
	}
	if (frm.grade.value.length == 0) {
		alert("고객등급이 입력되지 않았습니다.")
		frm.grade.foucs();
		return false;
	}
	if (frm.city.value.length == 0) {
		alert("도시코드가 입력되지 않았습니다.")
		frm.city.foucs();
		return false;
	}
	
	alert("회원정보수정이 완료 되었습니다!")
	document.frm.submit();
	return true;
}
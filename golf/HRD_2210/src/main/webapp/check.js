function insert() {
	if (frm.month.value.length == 0) {
		alert("수강월이 입력되지 않았습니다.");
		frm.month.focus();
		return false;
	}
	else if (frm.custmor_name.value == 0) {
		alert("회원명이 선택되지 않았습니다.");
		frm.custmor_name.foucs();
		return false;
	}
	else if (frm.place.value == 0) {
		alert("강의장소가 선택되지 않았습니다.");
		frm.place.foucs();
		return false;
	}
	else if (frm.class_name.value == 0) {
		alert("강의명이 선택되지 않았습니다.");
		frm.class_name.foucs();
		return false;
	}
	else {
		alert("수강신청이 완료되었습니다!");
		document.frm.submit();
		return true;
	}
}

function rewrite() {
	alert("정보를 지우고 처음부터 다시 입력합니다.");
	document.frm.reset();
}

function getvalue(custmor_number) {
	document.getElementById("custmor_number").value = custmor_number;
	c_no = custmor_number;
}

function getvalue2(price) {
	if (c_no >= 20000)
		document.getElementById("price").value = price / 2;
	else
		document.getElementById("price").value = price;	
}
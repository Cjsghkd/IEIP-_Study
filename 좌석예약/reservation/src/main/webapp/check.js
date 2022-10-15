function addCheck() {
	if (insert_tbl.resvno.value.length == 0) {
		alert("예약번호가 입력되지 않았습니다.");
		insert_tbl.resvno.foucs();
		return false;
	}
	else if (insert_tbl.empno.value.length == 0) {
		alert("사원번호가 입력되지 않았습니다.");
		insert_tbl.empno.foucs();
		return false;
	}
	else if (insert_tbl.resvdate.value.length == 0) {
		alert("근무일자가 입력되지 않았습니다.");
		insert_tbl.resvdate.foucs();
		return false;
	}
	else if (insert_tbl.seatno.value.length == 0) {
		alert("좌석번호가 입력되지 않았습니다.");
		insert_tbl.seatno.foucs();
		return false;
	}
	
	else 
	alert("좌석예약정보가 등록되었습니다!");	
	document.insert_tbl.submit();
	return true;
}

function res() {
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	document.frm.reset();
}

function search() {
	if (list_tbl.empno.value.length == 0) {
		alert("사원번호가 입력되지 않았습니다.")
		list_tbl.empno.foucs();
		return false;
	}
	else
	document.list_tbl.submit();
	return true;
}

function home() {
	window.location='index.jsp';
}
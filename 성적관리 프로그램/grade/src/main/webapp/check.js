function gradeCheck() {
	if(frm.sid.value.length == 0) {
		alert("학번이 입력되지 않았습니다!");
		frm.sid.fouse();
	}
	else if(frm.subcode.value == 0) {
		alert("교과코드가 입력되지 않았습니다!");
		frm.subcode.fouse();
	}
	else if(frm.midscore.value.length == 0) {
		alert("중간이 입력되지 않았습니다!");
		frm.midscore.fouse();
	}
	else if(frm.finalscore.value.length == 0) {
		alert("기말이 입력되지 않았습니다!");
		frm.finalscore.fouse();
	}
	else if(frm.attend.value.length == 0) {
		alert("출석이 입력되지 않았습니다!");
		frm.attend.fouse();
	}
	else if(frm.report.value.length == 0) {
		alert("레포트가 입력되지 않았습니다!");
		frm.report.fouse();
	}
	else if(frm.etc.value.length == 0) {
		alert("기타가 입력되지 않았습니다!");
		frm.etc.fouse();
	}
	else {
		alert("성적정보가 정상적으로 등록되었습니다!");
		document.frm.submit();
	}
}

function res() {
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	document.frm.reset();
}
function orderCheck() {
	if (frm.orderno.value.length <= 0) {
		alert("주문번호가 입력되지 않았습니다");
		frm.orderno.fouse();
		return false;
	}
	else if (frm.custno.value.length <= 0) {
		alert("고객번호가 입력되지 않았습니다");
		frm.custno.fouse();
		return false;
	}
	else if (frm.custname.value.length <= 0) {
		alert("고객이름이 입력되지 않았습니다");
		frm.custname.fouse();
		return false;
	}
	else if (frm.drink[0].checked == false && frm.drink[1].checked == false && frm.drink[2].checked == false && frm.drink[3].checked == false && frm.drink[4].checked == false) {
		alert("메뉴번호가 선택되지 않았습니다");
		frm.drink.fouse();
		return false;
	}
	else if (frm.amount.value.length <= 0) {
		alert("수량이 선택되지 않았습니다.");
		frm.amount.fouse();
		return false;
	}
	else if (frm.orderdate.value.length <= 0) {
		alert("주문일자가 입력되지 않았습니다.");
		frm.orderdate.fouse();
		return false;
	}
	else {
		alert("주문 완료");
		document.frm.submit();
		window.location('orderlist.jsp');
	}
}

function modifyCheck() {
	alert("수정 완료");
	document.frm.submit();
	window.location('orderlist.jsp');
}

function res() {
	alert("다시 시작");
	document.frm.reset();
	frm.custno.fouse();
}
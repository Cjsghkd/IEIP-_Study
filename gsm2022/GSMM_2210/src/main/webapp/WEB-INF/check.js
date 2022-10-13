function ordercheck() {
	if(document.ordertable.orderno.value.length == 0) {
		alert("주문번호가 비어있습니다.");
		document.ordertable.orderno.focus();
		return false;
	}
	if(document.ordertable.custno.value.length == 0) {
		alert("고객번호가 비어있습니다.");
		document.ordertable.custno.focus();
		return false;
	}
	if(document.ordertable.custname.value.length == 0) {
		alert("고객이름이 비어있습니다.");
		document.ordertable.custname.focus();
		return false;
	}
	if(document.ordertable.drink[0].checked == false && document.ordertable.drink[1].checked == false && document.ordertable.drink[2].checked == false && document.ordertable.drink[3].checked == false && document.ordertable.drink[4].checked == false) {
		alert("메뉴번호가 비어있습니다.");
		document.ordertable.drink.focus();
		return false;
	}
	if(document.ordertable.date.value.length == 0) {
		alert("주문일자가 비어있습니다.");
		document.ordertable.date.focus();
		return false;
	}
	success()
	return true;
}

function success() {
	alert("주문완료 되었습니다.");
	window.location("index.jsp");
}

function rewrite() {
	alert("처음부터 다시 시작");
	document.ordertable.orderno.value = "";
	document.ordertable.custno.value = "";
	document.ordertable.custname.value = "";
	document.ordertable.drink.selected = false;
	document.ordertable.date.value = "";
}
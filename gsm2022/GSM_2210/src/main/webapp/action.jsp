<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="db.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>action</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	PreparedStatement pstmt = null;
	String orderno = request.getParameter("orderno");
	String custno = request.getParameter("custno");
	String custname = request.getParameter("custname");
	String drink = request.getParameter("drink");
	String amount = request.getParameter("amount");
	String date = request.getParameter("date");
	String mode = request.getParameter("mode");
	String sql = "";
	try{
	
	switch(mode){
		case "insert":
			sql = "insert into order_tbl values(?, ?, ?, ?, ?, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, orderno);
			pstmt.setString(2, custno);
			pstmt.setString(3, custname);
			pstmt.setString(4, drink);
			pstmt.setString(5, amount);
			pstmt.setString(6, date);
			pstmt.executeUpdate();
			%>
			<jsp:forward page="orderlist.jsp"></jsp:forward>
			<%
			break;
		case "modify":
			sql = "update order_tbl set custno=?, custname=?, menuno=?, amount=?, orderdate=? where orderno = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, custno);
			pstmt.setString(2, custname);
			pstmt.setString(3, drink);
			pstmt.setString(4, amount);
			pstmt.setString(5, date);
			pstmt.setString(6, orderno);
			
			pstmt.executeUpdate();
			%>
			<jsp:forward page="orderlist.jsp"></jsp:forward>
			<%
			break;
		case "delete":
			sql = "delete from order_tbl where orderno = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, orderno);
			
			pstmt.executeUpdate();
			%>
			<jsp:forward page="orderlist.jsp"></jsp:forward>
			<%
			break;
	}
} catch (Exception e) {
	e.printStackTrace();
}
%>

</body>
</html>
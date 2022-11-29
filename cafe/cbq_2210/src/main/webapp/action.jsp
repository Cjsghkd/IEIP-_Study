<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="db.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String sql ="";
		PreparedStatement pstmt = null;
		
		String orderno = request.getParameter("orderno");
		String custno = request.getParameter("custno");
		String custname = request.getParameter("custname");
		String drink = request.getParameter("drink");
		String amount = request.getParameter("amount");
		String date = request.getParameter("orderdate");
		String mode = request.getParameter("mode");
		
		switch(mode) {
			case "insert":
					sql = "insert into order_tbl2 values(?, ?, ?, ?, ?, ?)";
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
		}
		
	%>
</body>
</html>
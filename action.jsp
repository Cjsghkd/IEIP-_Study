<%@page import="java.sql.*"%>
<%@page import="DBPKG.Utill"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>action</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	Statement stmt = null; 
	
	String mode = request.getParameter("mode");
	
	String custno = request.getParameter("custno");
	String custname = request.getParameter("custname");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String joindate = request.getParameter("joindate");
	String grade = request.getParameter("grade");
	String city = request.getParameter("city");
	
	
	try {
		conn = Utill.getConnection();
		stmt = conn.createStatement();
		String sql = "";
		
		switch(mode) {
		case "insert" :
			sql = "INSERT INTO member_tbl VALUES(?,?,?,?,?,?,? )"; 
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, custno);
				pstmt.setString(2, custname);
				pstmt.setString(3, phone);
				pstmt.setString(4, address);
				pstmt.setString(5, joindate);
				pstmt.setString(6, grade);
				pstmt.setString(7, city);
				
				pstmt.executeUpdate();
				%>
					<jsp:forward page="join.jsp"></jsp:forward>
				<%
			break;
			
		case "modify" :		
			sql = "UPDATE member_tbl SET " + 
					"custname = '" + custname + "'," + 
					"phone = '" + phone + "'," + 
					"address = '" + address + "'," +
					"joindate = TO_DATE('" + joindate + "', 'yyyy-MM-dd')," +
					"grade = '" + grade + "'," + 
					"city = '" + city + "' " + 
					"WHERE custno = " + custno;
			
			stmt.executeUpdate(sql);
			%>
				<jsp:forward page="modify.jsp"></jsp:forward>
			<% 
			break;
		}
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	%>
</body>
</html>
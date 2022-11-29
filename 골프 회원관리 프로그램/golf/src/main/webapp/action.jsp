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
		String month = request.getParameter("month");
		String c_name = request.getParameter("c_name");	
		String c_no = request.getParameter("c_no");	
		String address = request.getParameter("address");	
		String class_name = request.getParameter("class_name");	
		String class_price = request.getParameter("class_price");	
		int teaher_code = Integer.parseInt(class_name) / 1000;
		
		String sql = "insert into TBL_CLASS_202211 values(?, ?, ?, ?, ?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, month);
		pstmt.setString(2, c_no);
		pstmt.setString(3, address);
		pstmt.setString(4, class_price);
		pstmt.setInt(5, teaher_code);
		
		pstmt.executeUpdate();
	%>
	<jsp:forward page="index.jsp"></jsp:forward>
</body>
</html>
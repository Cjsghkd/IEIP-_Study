<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>

<%

String month = request.getParameter("month");
String custmor_number = request.getParameter("custmor_number");
String place = request.getParameter("place");
String price = request.getParameter("price");
String class_name = request.getParameter("class_name");
int teaher_code = Integer.parseInt(class_name) / 1000;

try {
	String sql = "INSERT INTO TBL_CLASS_202201 VALUES(?, ?, ?, ?, ?)";
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	pstmt.setString(1, month);
	pstmt.setString(2, custmor_number);
	pstmt.setString(3, place);
	pstmt.setString(4, price);
	pstmt.setInt(5, teaher_code);
	
	pstmt.executeUpdate();
	
}
catch(Exception e) {
	e.printStackTrace();
}
%>

<jsp:forward page="index.jsp"></jsp:forward>
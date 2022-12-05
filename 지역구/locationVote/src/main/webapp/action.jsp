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
	String V_JUMIN = request.getParameter("V_JUMIN");
	String V_NAME = request.getParameter("V_NAME");
	String M_NO = request.getParameter("M_NO");
	String V_TIME = request.getParameter("V_TIME");
	String V_AREA = request.getParameter("V_AREA");
	String V_CONFIRM = request.getParameter("V_CONFIRM");
	
	String sql = "insert into vote_2005 values(?, ?, ?, ?, ?, ?)";
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	pstmt.setString(1, V_JUMIN);
	pstmt.setString(2, V_NAME);
	pstmt.setString(3, M_NO);
	pstmt.setString(4, V_TIME);
	pstmt.setString(5, V_AREA);
	pstmt.setString(6, V_CONFIRM);
	
	pstmt.executeUpdate();
%>
<jsp:forward page="votelist.jsp"></jsp:forward>
</body>
</html>
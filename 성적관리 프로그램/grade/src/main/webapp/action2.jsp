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
	String subcode = request.getParameter("subcode");
	String sql = "select * from TBL_SCORE_202210 where subcode = ?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, subcode);
	ResultSet rs = pstmt.executeQuery();
	if (rs.next()) {
		%>
			<jsp:forward page="suc.jsp"></jsp:forward>
		<%
	} else {
		%>
			<jsp:forward page="fail.jsp"></jsp:forward>
		<%
	}
%>
<jsp:forward page="gradesearch.jsp"></jsp:forward>
</body>
</html>
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
	<jsp:include page="header.jsp"></jsp:include>
	
	<section style="position: fixed; top: 70px; left: 0px; width: 100%; height: 100%; background-color: lightgray;">
		<h3 style="text-align: center">카페 메뉴</h3>
		
		<%
		String sql = "select * from menu_tbl2";
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			%>
			<form style="display: flex; align-content: center; justify-content: center; text-align: center">
				<table border="1">
				
				</table>
			</form>
			<%
		}
		%>
		
	</section>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="db.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>menuList</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<section style="position: fixed; top: 60px; width: 100%; height: 100%; background-color: lightgray">
	<h1 style="text-align: center;">
	카페 메뉴
	</h1>
	
	<form style="display: flex; align-content: center; justify-content: center; text-align: center;">
		<table border="1" style= "border-collapse: collapse">
			<tr>
				<td>메뉴번호</td>
				<td>메뉴이름</td>
				<td>가격</td>
				<td>칼로리</td>
			</tr>
			<%
				PreparedStatement pstmt = null;
				try {
					String sql = "SELECT * FROM menu_tbl";
					pstmt = con.prepareStatement(sql);
					ResultSet rs = pstmt.executeQuery();
					while(rs.next()) {
						%>
						
						<tr>
							<td><%=rs.getString(1) %></td>
							<td><%=rs.getString(2) %></td>
							<td><%=rs.getString(3) %>원</td>
							<td><%=rs.getString(4) %></td>
						</tr>
						
						 <% 
					}
					
				} catch(Exception e) {
					e.printStackTrace();
				}
			%>
		</table>
	</form>
	
	
	</section>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
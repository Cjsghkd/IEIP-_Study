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
	
	<section style="position: fixed; top: 80px; left: 0px; width: 100%; height: 100%; background-color: lightgray">
		
		<h2 style="text-align: center">후보자등수</h2>
		
		<form style="display: flex; align-content: center; justify-content: center; text-align: center">
			<table border="1">
				<tr>
					<td>후보번호</td>
					<td>성명</td>
					<td>총투표건수</td>
				</tr>
				<%
					String sql = "select me.M_NO, me.M_NAME, count(vo.M_NO) from vote_2005 vo, member_2005 me where vo.M_NO = me.M_NO group by me.M_NO, me.M_NAME order by count(vo.M_NO) desc";
					PreparedStatement pstmt = con.prepareStatement(sql);
					ResultSet rs = pstmt.executeQuery();
					while(rs.next()) {
						%>
							<tr>
								<td><%=rs.getString(1) %></td>
								<td><%=rs.getString(2) %></td>
								<td><%=rs.getString(3) %></td>
							</tr>
						<%
					}
				%>
			</table>
		</form>
		
	</section>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
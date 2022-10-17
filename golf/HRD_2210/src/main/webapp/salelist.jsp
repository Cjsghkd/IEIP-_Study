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
	
	<section style="position: fixed; top: 150px; left: 0px; width: 100%; height: 100%; background-color: lightgray; text-align: center">
		<h2>강사매출현황</h2>
		
		<form style="display: flex; align-content: center; justify-content: center;">
			<table border="1">
				<tr>
					<td style="width: 150px">강사코드</td>
					<td style="width: 150px">강의명</td>
					<td style="width: 150px">강사명</td>
					<td style="width: 150px">총매출</td>
				</tr>
				
				<%
					String sql = "SELECT TEACHER_CODE, CLASS_NAME, TEACHER_NAME, CLASS_PRICE FROM TBL_TEACHER_202201";
					PreparedStatement pstmt = con.prepareStatement(sql);
					ResultSet rs = pstmt.executeQuery();
					
					while(rs.next()) {
						%>
						
						<tr>
							<td style="text-align: center"><%=rs.getString(1) %></td>
							<td style="text-align: center"><%=rs.getString(2) %></td>
							<td style="text-align: right"><%=rs.getString(3) %></td>
							<td style="text-align: right"><%=rs.getInt(4) %></td>
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
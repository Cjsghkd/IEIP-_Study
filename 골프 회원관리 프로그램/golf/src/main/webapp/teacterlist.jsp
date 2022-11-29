<%@page import="java.text.DecimalFormat"%>
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
	
	<section style="position: fixed; top: 130px; left: 0px; width: 100%; height: 100%; background-color: lightgray;">
		<h3 style="text-align: center">강사조회</h3>
		<form style="display: flex; align-content: center; justify-content: center; text-align: center">
			<table border="1">
				<tr>
					<td>강사코드</td>
					<td>강사명</td>
					<td>강의명</td>
					<td>수강료</td>
					<td>강사자격취득일</td>
				</tr>
				<%
					String sql = "select * from TBL_TEACHER_202211";
					PreparedStatement pstmt = con.prepareStatement(sql);
					ResultSet rs = pstmt.executeQuery();
					while(rs.next()) {
						DecimalFormat format = new DecimalFormat("###,###,###");
						String date = rs.getString(5).substring(0,4) + "년" + rs.getString(5).substring(4,6) + "월" + rs.getString(5).substring(6,8) + "일";
						%>
						<tr>
							<td style="width: 150px"><%=rs.getString(1) %></td>
							<td style="width: 150px"><%=rs.getString(2) %></td>
							<td style="width: 150px"><%=rs.getString(3) %></td>
							<td style="width: 150px">₩<%=format.format(rs.getInt(4)) %></td>
							<td style="width: 150px"><%=date %></td>
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
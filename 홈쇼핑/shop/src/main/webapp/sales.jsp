<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="db.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<section style="position: fixed; top: 120px; left: 0; width: 100%; height: 100%; background-color: lightgray">
		<h3 style="text-align: center;">회원매출조회</h3>
		
		<form style="display: flex; align-content: center; justify-content: center; text-align: center">
			<table border="1">
				<tr>
					<td>회원번호</td>
					<td>회원성명</td>
					<td>고객등급</td>
					<td>매출</td>
				</tr>
				<%
					String sql = "SELECT me.custno, me.custname, me.grade, sum(price) FROM member_tbl_99 me, money_tbl_99 mo WHERE me.custno = mo.custno GROUP BY me.custno, me.custname, me.grade ORDER BY sum(price) desc";
					PreparedStatement pstmt = con.prepareStatement(sql);
					ResultSet rs = pstmt.executeQuery();
					
					while(rs.next()) {
						String grade = rs.getString(3);
						if (grade.equals("A")) {
							grade = "VIP";
						}
						else if (grade.equals("B")) {
							grade = "일반";
						}
						else if (grade.equals("C")) {
							grade = "직원";
						}
						%>
						
						<tr>
							<td><%=rs.getString(1) %></td>
							<td><%=rs.getString(2) %></td>
							<td><%=grade %></td>
							<td><%=rs.getString(4) %></td>
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
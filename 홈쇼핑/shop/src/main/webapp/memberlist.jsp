<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
		<h3 style="text-align: center;">회원목록조회/수정</h3>
		
		<form style="display: flex; align-content: center; justify-content: center; text-align: center">
			<table border="1">
				<tr>
					<td>회원번호</td>
					<td>회원성명</td>
					<td>전화번호</td>
					<td>주소</td>
					<td>가입일자</td>
					<td>고객등급</td>
					<td>거주지역</td>
				</tr>
				<%
					try {
						String sql = "SELECT * FROM member_tbl_99";
						PreparedStatement pstmt = con.prepareStatement(sql);
						ResultSet rs = pstmt.executeQuery();
						
						while(rs.next()) {
							String pre_grade = rs.getString(6);
							
							if (pre_grade.equals("A")) {
								pre_grade = "VIP";
							}
							else if (pre_grade.equals("B")) {
								pre_grade = "일반";
							}
							else if (pre_grade.equals("C")) {
								pre_grade = "직원";
							}
						%>
						<tr>
							<td><a href="modify.jsp?custno=<%=rs.getString(1)%>"><%=rs.getString(1) %></a></td>
							<td><%=rs.getString(2) %></td>
							<td><%=rs.getString(3) %></td>
							<td><%=rs.getString(4) %></td>
							<td><%=rs.getDate(5) %></td>
							<td><%=pre_grade %></td>
							<td><%=rs.getString(7) %></td>
						</tr>
						
						<%
						}
					}
					catch(Exception e) {
						e.printStackTrace();
					}
				%>
			</table>
		</form>

	</section>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
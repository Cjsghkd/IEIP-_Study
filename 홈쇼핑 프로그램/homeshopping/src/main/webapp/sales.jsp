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
	
	<section style="position: fixed; top: 100px; left: 0px; width: 100%; height: 100%; background-color: lightgray">
		<h2 style="text-align: center">회원매출조회</h2>
		
		<form style="display: flex; align-content: center; justify-content: center; text-align: center">
			<table border="1">
				<tr>
					<td>회원번호</td>
					<td>회원성명</td>
					<td>고객등급</td>
					<td>매출</td>
				</tr>
				<%
					String sql = "select me.custno, me.custname, me.grade, sum(mo.price) from membertbl me, moneytbl mo where me.custno = mo.custno group by me.custno, me.custname, me.grade order by sum(mo.price) desc";
					PreparedStatement pstmt = con.prepareStatement(sql);
					ResultSet rs = pstmt.executeQuery();
					while(rs.next()) {
						String grade = rs.getString(3);
						switch(grade) {
						case "A":
							grade = "VIP";
							break;
						case "B":
							grade = "일반";
							break;
						case "C":
							grade = "직원";
							break;
						}
						%>
						<tr>
							<td><%=rs.getInt(1) %></td>
							<td><%=rs.getString(2) %></td>
							<td><%=grade %></td>
							<td><%=rs.getInt(4) %></td>
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
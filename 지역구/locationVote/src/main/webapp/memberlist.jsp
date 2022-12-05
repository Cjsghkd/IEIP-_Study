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
		
		<h2 style="text-align: center">후보조회</h2>
			<form style="display: flex; align-content: center; justify-content: center; text-align: center">
				<table border="1">
					<tr>
						<td>후보번호</td>
						<td>성명</td>
						<td>소속정당</td>
						<td>학력</td>
						<td>주민번호</td>
						<td>지역구</td>
						<td>대표전화</td>
					</tr>	
					<%
						String sql = "select me.M_NO, me.M_NAME, pa.P_NAME, me.P_SCHOOL, me.M_JUMIN, me.M_CITY, pa.P_TEL1, pa.P_TEL2, pa.P_TEL3 from member_2005 me, party_2005 pa where me.P_CODE = pa.P_CODE";
						PreparedStatement pstmt = con.prepareStatement(sql);
						ResultSet rs = pstmt.executeQuery();
						while(rs.next()) {
							String P_SCHOOL = rs.getString(4);
							switch(P_SCHOOL) {
							case "1":
								P_SCHOOL = "고졸";
								break;
							case "2":
								P_SCHOOL = "학사";
								break;
							case "3":
								P_SCHOOL = "석사";
								break;
							case "4":
								P_SCHOOL = "박사";
								break;
							}
							String M_JUMIN = rs.getString(5).substring(0,6) + "-" + rs.getString(5).substring(6,13);
							%>
							<tr>
								<td><%=rs.getString(1) %></td>
								<td><%=rs.getString(2) %></td>
								<td><%=rs.getString(3) %></td>
								<td><%=P_SCHOOL %></td>
								<td><%=M_JUMIN %></td>
								<td><%=rs.getString(6) %></td>
								<td><%=rs.getString(7).trim()%>-<%=rs.getString(8).trim()%>-<%=rs.getString(9).trim()%></td>
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
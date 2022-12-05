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
		
		<h2 style="text-align: center">투표검수조회</h2>
		
			<form style="display: flex; align-content: center; justify-content: center; text-align: center">
				<table border="1">
					<tr>
						<td>성명</td>
						<td>생년월일</td>
						<td>나이</td>
						<td>성별</td>
						<td>후보번호</td>
						<td>투표시간</td>
						<td>유권자확인</td>
					</tr>
					<%
						String sql = "select V_NAME, V_JUMIN, M_NO, V_TIME, V_CONFIRM from vote_2005";
						PreparedStatement pstmt = con.prepareStatement(sql);
						ResultSet rs = pstmt.executeQuery();
						while(rs.next()) {
							String birth = "19" + rs.getString(2).substring(0,2) + "년" + rs.getString(2).substring(2,4) + "월" + rs.getString(2).substring(4,6) + "일생";
							String age = rs.getString(2).substring(0,2);
							switch(age) {
							case "99": 
								age = "만 21세";
								break;
							case "89": 
								age = "만 31세";
								break;
							case "79": 
								age = "만 41세";
								break;
							case "69": 
								age = "만 51세";
								break;
							case "59": 
								age = "만 61세";
								break;
							}
							String gender = rs.getString(2).substring(6,7);
							switch(gender) {
							case "1":
								gender = "남";
								break;
							case "2":
								gender = "여";
								break;
							}
							String time = rs.getString(4).substring(0,2) + ":" + rs.getString(4).substring(2,4); 
							String voter = rs.getString(5);
							switch(voter) {
							case "Y":
								voter = "확인";
								break;
							case "N":
								voter = "미확인";
								break;
							}
							%>
								<tr>
									<td><%=rs.getString(1) %></td>
									<td><%=birth %></td>
									<td><%=age %></td>
									<td><%=gender %></td>
									<td><%=rs.getString(3) %></td>
									<td><%=time %></td>
									<td><%=voter %></td>
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
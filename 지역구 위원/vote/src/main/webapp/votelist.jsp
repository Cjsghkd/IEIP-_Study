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
						String sql = "select V_NAME, V_JUMIN, M_NO, V_TIME, V_CONFIRM from TBL_VOTE_2020";
						PreparedStatement pstmt = con.prepareStatement(sql);
						ResultSet rs = pstmt.executeQuery();
						
						while (rs.next()) {
							String birth = "19" + rs.getString(2).substring(0,2) + "년0" + rs.getString(2).substring(2,3) + "월" + rs.getString(2).substring(3,5) + "일생";
							String age = rs.getString(2).substring(0, 2);
							switch(age) {
							case "59":
								age = "61";
								break;
							case "69":
								age = "51";
								break;
							case "79":
								age = "41";
								break;
							case "89":
								age = "31";
								break;
							case "99":
								age = "21";
								break;
							}
							String gender = rs.getString(2).substring(5,6);
							switch(gender) {
							case "1":
								gender = "남";
								break;
							case "2":
								gender = "여";
								break;
							}
							String time = rs.getString(4).substring(0,2) + ":" + rs.getString(4).substring(2,4);
							String check = rs.getString(5);
							switch(check) {
							case "Y":
								check = "확인";
								break;
							case "N":
								check = "미확인";
								break;
							}
							%>
							<tr>
								<td><%=rs.getString(1) %></td>
								<td><%=birth %></td>
								<td>만 <%=age %>세</td>
								<td><%=gender %></td>
								<td><%=rs.getString(3) %></td>
								<td><%=time %></td>
								<td><%=check %></td>
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
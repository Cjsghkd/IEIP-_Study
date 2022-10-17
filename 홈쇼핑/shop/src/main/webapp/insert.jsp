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
<script type="text/javascript" src="check.js"></script>
	<jsp:include page="header.jsp"></jsp:include>
	
	<section style="position: fixed; top: 120px; left: 0; width: 100%; height: 100%; background-color: lightgray">
		<h3 style="text-align: center;">홈쇼핑 회원 등록</h3>
		
		<form action="I_action.jsp" method="post" name="frm" style="display: flex; align-content: center; justify-content: center; text-align: center">
			<table border="1">
				<%
					String sql = "SELECT max(custno)+1 FROM member_tbl_99";
					PreparedStatement pstmt = con.prepareStatement(sql);
					ResultSet rs = pstmt.executeQuery();
					
					rs.next();
					%>
					<tr>
						<td>회원번호(자동발생)</td>
						<td><input name="custno" type="text" value="<%=rs.getString(1) %>" readonly></td>
					</tr>
					<tr>
						<td>회원성명</td>
						<td><input name="custname" type="text"></td>
					</tr>
					<tr>
						<td>회원전화</td>
						<td><input name="phone" type="text"></td>
					</tr>
					<tr>
						<td>회원주소</td>
						<td><input name="address" type="text"></td>
					</tr>
					<tr>
						<td>가입일자</td>
						<td><input name="joindate" type="text"></td>
					</tr>
					<tr>
						<td>고객등급[A:VIP, B:일반, C:직원]</td>
						<td><input name="grade" type="text"></td>
					</tr>
					<tr>
						<td>도시코드</td>
						<td><input name="city" type="text"></td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="button" value="등록" onclick="insert()">
							<input type="button" value="조회" onclick="search()">
						</td>
					</tr>
					<%
					
				%>
			</table>
		</form>

	</section>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
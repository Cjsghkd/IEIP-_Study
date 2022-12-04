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
<script type="text/javascript" src="scriptcheck.js"></script>
	<jsp:include page="header.jsp"></jsp:include>
	
	<section style="position: fixed; top: 100px; left: 0px; width: 100%; height: 100%; background-color: lightgray">
		<h2 style="text-align: center">홈쇼핑 회원 등록</h2>
		
		<form method="post" action="action.jsp" name="frm" style="display: flex; align-content: center; justify-content: center">
			<table border="1">
				<tr>
				<%
					String sql = "select max(custno + 1) from membertbl";
					PreparedStatement pstmt = con.prepareStatement(sql);
					ResultSet rs = pstmt.executeQuery();
					rs.next();
				%>
					<td style="text-align: center; width: 150px">회원번호(자동발생)</td>
					<td><input type="text" name="custno" value="<%=rs.getInt(1) %>" readonly></td>
				</tr>
				<tr>
					<td style="text-align: center; width: 150px">회원성명</td>
					<td><input type="text" name="custname"></td>
				</tr>
				<tr>
					<td style="text-align: center; width: 150px">회원전화</td>
					<td><input type="text" name="phone"></td>
				</tr>
				<tr>
					<td style="text-align: center; width: 150px">회원주소</td>
					<td><input type="text" name="address"></td>
				</tr>
				<tr>
					<td style="text-align: center; width: 150px">가입일자</td>
					<td><input type="text" name="joindate"></td>
				</tr>
				<tr>
					<td style="text-align: center; width: 150px">고객등급 [A:VIP,B:일반,C:직원]</td>
					<td><input type="text" name="grade"></td>
				</tr>
				<tr>
					<td style="text-align: center; width: 150px">도시코드</td>
					<td><input type="text" name="city"></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center">
						<input type="button" value="등록" onclick="insertcheck()">
						<input type="button" value="조회" onclick="search()">
					</td>
				</tr>
			</table>
		</form>
		
	</section>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
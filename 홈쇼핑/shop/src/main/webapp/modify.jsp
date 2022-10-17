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
<script type="text/javascript" src="check.js"></script>
	<jsp:include page="header.jsp"></jsp:include>
	
	<section style="position: fixed; top: 120px; left: 0; width: 100%; height: 100%; background-color: lightgray">
		<h3 style="text-align: center;">홈쇼핑 회원 정보 수정</h3>
		
		<form action="M_action.jsp" method="post" name="frm" style="display: flex; align-content: center; justify-content: center; text-align: center">
			<table border="1">
				<%
					String sql = "SELECT * FROM member_tbl_99 WHERE custno = " + request.getParameter("custno");
					PreparedStatement pstmt = con.prepareStatement(sql);
					ResultSet rs = pstmt.executeQuery();
					
					rs.next();
					%>
					<tr>
						<td>회원번호</td>
						<td><input name="custno" type="text" value="<%=request.getParameter("custno") %>" readonly></td>
					</tr>
					<tr>
						<td>회원성명</td>
						<td><input name="custname" type="text" value="<%=rs.getString(2)%>"></td>
					</tr>
					<tr>
						<td>회원전화</td>
						<td><input name="phone" type="text" value="<%=rs.getString(3)%>"></td>
					</tr>
					<tr>
						<td>회원주소</td>
						<td><input name="address" type="text" value="<%=rs.getString(4)%>"></td>
					</tr>
					<tr>
						<td>가입일자</td>
						<td><input name="joindate" type="text" value="<%=rs.getDate(5)%>"></td>
					</tr>
					<tr>
						<td>고객등급[A:VIP, B:일반, C:직원]</td>
						<td><input name="grade" type="text" value="<%=rs.getString(6)%>"></td>
					</tr>
					<tr>
						<td>도시코드</td>
						<td><input name="city" type="text" value="<%=rs.getString(7)%>"></td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="button" value="수정" onclick="modify()">
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
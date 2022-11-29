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
		<h3 style="text-align: center">회원정보조회</h3>
		
		<form style= "display: flex; align-content: center; justify-content: center; text-align: center">
			<table border="1">
				<tr>
					<td>수강월</td>
					<td>회원번호</td>
					<td>회원명</td>
					<td>강의명</td>
					<td>강의장소</td>
					<td>수강료</td>
					<td>등급</td>
				</tr>
				<%
					String sql = "select cl.regist_month, cl.c_no, me.c_name, te.class_name, cl.class_area, cl.tuition, me.grade from TBL_TEACHER_202211 te, TBL_MEMBER_202211 me, TBL_CLASS_202211 cl where me.c_no = cl.c_no and te.teacter_code = cl.teacher_code";
					PreparedStatement pstmt = con.prepareStatement(sql);
					ResultSet rs = pstmt.executeQuery();
					while(rs.next()) {
						String date = rs.getString(1).substring(0,4) + "년" + rs.getString(1).substring(4,6) + "월";
						DecimalFormat fm = new DecimalFormat("###,###,###");
						%>
							<tr>
								<td><%=date %></td>
								<td><%=rs.getInt(2) %></td>
								<td><%=rs.getString(3) %></td>
								<td><%=rs.getString(4) %></td>
								<td><%=rs.getString(5) %></td>
								<td>₩<%=fm.format(rs.getInt(6)) %></td>
								<td><%=rs.getString(7) %></td>
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
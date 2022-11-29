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
		<h3 style="text-align: center">강사매출현황</h3>
		
		<form  style="display: flex; align-content: center; justify-content: center; text-align: center">
			<table border="1">
				<tr>
					<td>강사코드</td>
					<td>강의명</td>
					<td>강사명</td>
					<td>총매출</td>
				</tr>
				<%
					String sql = "select cl.teacher_code, te.class_name, te.teacter_name, sum(cl.tuition) from TBL_TEACHER_202211 te, TBL_CLASS_202211 cl where te.teacter_code = cl.teacher_code group by cl.teacher_code, te.class_name, te.teacter_name order by cl.teacher_code asc";
					PreparedStatement pstmt = con.prepareStatement(sql);
					ResultSet rs = pstmt.executeQuery();
					while(rs.next()) {
						DecimalFormat fm = new DecimalFormat("###,###,###");
						%>
							<tr>
								<td style="width: 150px"><%=rs.getString(1) %></td>
								<td style="width: 150px"><%=rs.getString(2) %></td>
								<td style="width: 150px; text-align: right"><%=rs.getString(3) %></td>
								<td style="width: 150px; text-align: right">₩<%=fm.format(rs.getInt(4)) %></td>
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
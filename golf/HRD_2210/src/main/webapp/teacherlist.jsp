<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="db.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>teacherlist</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<section style="position: fixed; top: 150px; left: 0px; width: 100%; height: 100%; background-color: lightgray; text-align: center">
		<h2>강사조회</h2>
		
		<form style="display: flex; align-content: center; justify-content: center">
			<table border="1">
				<tr>
					<td style="width: 200px">강사코드</td>
					<td style="width: 200px">강사명</td>
					<td style="width: 200px">강의명</td>
					<td style="width: 200px">수강료</td>
					<td style="width: 200px">강사자격취득일</td>
				</tr>
				<% 
					try{
						String sql = "SELECT * FROM TBL_TEACHER_202201";
						PreparedStatement pstmt = con.prepareStatement(sql);
						ResultSet rs = pstmt.executeQuery();
						
						while (rs.next()) {
							int int_price = rs.getInt(4);
							DecimalFormat format_price = new DecimalFormat("￦###,###,###");
							String price = format_price.format(int_price);
							
							String teaher_date = rs.getString(5);
							String date =  teaher_date.substring(0,4) + "년" + teaher_date.substring(4,6) + "월" + teaher_date.substring(6,8) + "일";
							%>
							<tr>
								<td><%=rs.getString(1) %></td>
								<td><%=rs.getString(2) %></td>
								<td><%=rs.getString(3) %></td>
								<td><%=price %></td>
								<td><%=date %></td>
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
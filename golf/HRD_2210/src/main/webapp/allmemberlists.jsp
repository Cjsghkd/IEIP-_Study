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
	
	<section style="position: fixed; top: 150px; left: 0px; width: 100%; height: 100%; background-color: lightgray; text-align: center">
		<h2>회원정보조회</h2>
		
		<form style="display: flex; align-content: center; justify-content: center; text-align: center">
			<table border="1">
				<tr>
					<td style="width: 150px">수강일</td>
					<td style="width: 150px">회원번호</td>
					<td style="width: 150px">회원명</td>
					<td style="width: 150px">강의명</td>
					<td style="width: 150px">강의장소</td>
					<td style="width: 150px">수강료</td>
					<td style="width: 150px">등급</td>
				</tr> 
				
				<%
					try {
						String sql = "SELECT cl.REGIST_MONTH, cl.C_NO, me.C_NAME, te.CLASS_NAME, cl.CLASS_AREA, te.CLASS_PRICE, me.GRADE FROM TBL_TEACHER_202201 te, TBL_MEMBER_202201 me, TBL_CLASS_202201 cl WHERE te.TEACHER_CODE = cl.TEACHER_CODE AND me.C_NO = cl.C_NO";
						PreparedStatement pstmt = con.prepareStatement(sql);
						ResultSet rs = pstmt.executeQuery();
						
						while(rs.next()) {
							int pre_price = rs.getInt(6);
							DecimalFormat fo_price = new DecimalFormat("￦###,###,###");
							String price = fo_price.format(pre_price);
							
							String pre_date = rs.getString(1);
							String date = pre_date.substring(0,4) + "년" + pre_date.substring(4,6) + "월";
							%>
							
								<tr>
									<td><%=date %></td>
									<td><%=rs.getString(2) %></td>
									<td><%=rs.getString(3) %></td>
									<td><%=rs.getString(4) %></td>
									<td><%=rs.getString(5) %></td>
									<td><%=price %></td>
									<td><%=rs.getString(7) %></td>
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
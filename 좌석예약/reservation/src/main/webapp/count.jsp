<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="DBPKG.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<section style="position: fixed; top: 70px; left: 0px; width: 100%; height: 100%; background-color: lightgray">
		<h2 style="text-align: center">
			근무일수집계
		</h2>
		
		<form style="display: flex; align-content: center; justify-content: center; text-align: center">
			<table border="1">
				<tr>
					<td>사원번호</td>
					<td>이름</td>
					<td>부서명</td>
					<td>근무일수</td>
				</tr>
				
				<%
					try {
						String sql = "SELECT em.empno, empname, deptcode, count(resvno) FROM TBL_EMP_202108 em, TBL_RESV_202108 re WHERE em.empno = re.empno GROUP BY em.empno, empname, deptcode ORDER BY deptcode";
						PreparedStatement pstmt = conn.prepareStatement(sql);
						ResultSet rs = pstmt.executeQuery();
						while(rs.next()) {
							String deptcode = rs.getString(3);
							if (deptcode.equals("10")) deptcode = "영업팀";
							else if (deptcode.equals("20")) deptcode = "충무팀";
							else if (deptcode.equals("30")) deptcode = "구매팀";
							%>
							
							<tr>
								<td><%=rs.getString(1) %></td>
								<td><%=rs.getString(2) %></td>
								<td><%=deptcode %></td>
								<td><%=rs.getString(4) %></td>
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
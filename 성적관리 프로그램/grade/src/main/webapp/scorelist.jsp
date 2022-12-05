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
		<h2 style="text-align: center">성적현황</h2>
			<form style="display: flex; align-content: center; justify-content: center; text-align: center">
				<table border="1">
					<tr>
						<td>학번</td>
						<td>성명</td>
						<td>교과목</td>
						<td>교과목코드</td>
						<td>담당교수</td>
						<td>중간</td>
						<td>기말</td>
						<td>출석</td>
						<td>레포트</td>
						<td>기타</td>
						<td>평균</td>
						<td>총점</td>
						<td>학점</td>
					</tr>
					<%
						String sql = "select st.stuid, st.sname, su.subname, sc.subcode, su.proname, sc.midscore, sc.finalscore, sc.attend, sc.report, sc.etc from TBL_STUDENT_202210 st, TBL_SCORE_202210 sc, TBL_SUBJECT_202210 su where st.stuid = sc.sid AND sc.subcode = su.subcode order by st.sname";
						PreparedStatement pstmt = con.prepareStatement(sql);
						ResultSet rs = pstmt.executeQuery();
						while(rs.next()) {
							int avg_grade = (rs.getInt(6) + rs.getInt(7) + rs.getInt(8) + rs.getInt(9) + rs.getInt(10)) / 5; 
							double sum_grade = (rs.getInt(6)*0.3) + (rs.getInt(7)*0.3) + (rs.getInt(8)*0.2) + (rs.getInt(9)*0.1) + (rs.getInt(10)*0.1);
							String grade = "";
							if (sum_grade >= 95) grade = "A+";
							else if (sum_grade >= 90) grade = "A";
							else if (sum_grade >= 85) grade = "B+";
							else if (sum_grade >= 80) grade = "B";
							else if (sum_grade >= 75) grade = "C+";
							else if (sum_grade >= 70) grade = "C";
							else if (sum_grade >= 65) grade = "D+";
							else if (sum_grade >= 60) grade = "D";
							else if (sum_grade < 60) grade = "F";
							%>
							<tr>
								<td><%=rs.getString(1) %></td>
								<td><%=rs.getString(2) %></td>
								<td><%=rs.getString(3) %></td>
								<td><%=rs.getString(4) %></td>
								<td><%=rs.getString(5) %></td>
								<td><%=rs.getInt(6) %></td>
								<td><%=rs.getInt(7) %></td>
								<td><%=rs.getInt(8) %></td>
								<td><%=rs.getInt(9) %></td>
								<td><%=rs.getInt(10) %></td>
								<td><%=avg_grade %></td>
								<td><%=sum_grade %></td>
								<td><%=grade %></td>
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
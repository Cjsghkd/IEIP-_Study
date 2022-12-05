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
<script type="text/javascript" src="check.js"></script>
	<jsp:include page="header.jsp"></jsp:include>
	
	<section style="position: fixed; top: 70px; left: 0px; width: 100%; height: 100%; background-color: lightgray">
		<h3 style="text-align: center">도서 대여 프로그램</h3>
			<form name="frm" style="display: flex; align-content: center; justify-content: center">
				<table border="1">
				<%
					String sql = "select max(bor_no + 1) from borrow_tbl";
					PreparedStatement pstmt = con.prepareStatement(sql);
					ResultSet rs = pstmt.executeQuery();
					rs.next();
				%>
					<tr>
						<td style="text-align: center">대여번호</td>
						<td><input type="text" name="bor_no" value="<%=rs.getString(1)%>" readonly></td>
					</tr>
					<tr>
						<td style="text-align: center">고객이름</td>
						<td>
							<select name="m_name">
								<option value="">고객명
								<option value="101">유미
								<option value="102">바비
								<option value="103">순록
								<option value="104">광규
								<option value="105">까를로스
							</select>
						</td>
					</tr>
					<tr>
						<td style="text-align: center">고객번호</td>
						<td><input type="text" name="m_no"> 예) 101</td>
					</tr>
					<tr>
						<td style="text-align: center">직업</td>
						<td>
							<input type="radio" name="job" value="1"> 학생
							<input type="radio" name="job" value="2"> 교사
							<input type="radio" name="job" value="3"> 외부인
						</td>
					</tr>
					<tr>
						<td style="text-align: center">도서명</td>
						<td>
							<select name="bookname">
								<option value="">도서명
								<option value="10001">C언어
								<option value="10002">JAVA
								<option value="10003">셜록홈즈
								<option value="10004">해리포터
								<option value="10005">전지적독자시점
								<option value="10006">PYTHON
								<option value="10007">여름이었다
							</select>
						</td>
					</tr>
					<tr>
						<td style="text-align: center">대여날짜</td>
						<td><input type="text" placeholder="예) 20220303" name="bor_date"></td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: center">
							<input type="button" value="대출하기" onclick="borrow()"> &nbsp;
							<input type="button" value="다시하기" onclick="res()">
						</td>
					</tr>
				</table>
			</form>
	</section>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
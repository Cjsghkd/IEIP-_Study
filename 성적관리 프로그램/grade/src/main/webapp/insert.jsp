<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript" src="check.js"></script>
<jsp:include page="header.jsp"></jsp:include>
	
	<section style="position: fixed; top: 80px; left: 0px; width: 100%; height: 100%; background-color: lightgray">
		<h2 style="text-align: center">성적입력</h2>
			<form name="frm" style="display: flex; align-content: center; justify-content: center">
				<table border="1">
					<tr>
						<td style="text-align: center">학번</td>
						<td><input type="text" name="sid"></td>
					</tr>
					<tr>
						<td style="text-align: center">교과코드</td>
						<td>
							<select name="subcode">
								<option value="A001">A001-자바
								<option value="A002">A002-C언어
								<option value="A003">A003-데이터베이스
								<option value="A004">A004-웹프로그래밍
								<option value="A005">A005-영어
							</select>
						</td>
					</tr>
					<tr>
						<td style="text-align: center">중간</td>
						<td><input type="text" name="midscore"></td>
					</tr>
					<tr>
						<td style="text-align: center">기말</td>
						<td><input type="text" name="finalscore"></td>
					</tr>
					<tr>
						<td style="text-align: center">출석</td>
						<td><input type="text" name="attend"></td>
					</tr>
					<tr>
						<td style="text-align: center">레포트</td>
						<td><input type="text" name="report"></td>
					</tr>
					<tr>
						<td style="text-align: center">기타</td>
						<td><input type="text" name="etc"></td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: center">
							<input type="button" value="등록" onclick="gradeCheck()">
							<input type="button" value="취소" onclick="res()">
						</td>
					</tr>
				</table>
			</form>
	</section>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
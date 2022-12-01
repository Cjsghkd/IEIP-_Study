<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript" src="check1.js"></script>

	<jsp:include page="header.jsp"></jsp:include>
		<section style="position: fixed; top: 100px; left: 0px; width: 100%; height: 100%; background-color: lightgray">
			<h2 style="text-align: center">투표하기</h2>
				<form action="action.jsp" method="post" name="frm" style="display: flex; align-content: center; justify-content: center">
					<table border="1">
						<tr>
							<td style="text-align: center; width: 100px">주민번호</td>
							<td><input type="text" name="V_JUMIN"> 예 : 8906153154726</td>
						</tr>
						<tr>
							<td style="text-align: center; width: 100px">성명</td>
							<td><input type="text" name="V_NAME"></td>
						</tr>
						<tr>
							<td style="text-align: center; width: 100px">투표번호</td>
							<td>
								<select name="M_NO">
									<option value="">선택 안됨</option>
									<option value="1">1번</option>
									<option value="2">2반</option>
									<option value="3">3반</option>
									<option value="4">4번</option>
									<option value="5">5번</option>
								</select>
							</td>
						</tr>
						<tr>
							<td style="text-align: center; width: 100px">투표시간</td>
							<td><input type="text" name="V_TIME"></td>
						</tr>
						<tr>
							<td style="text-align: center; width: 100px">투표장소</td>
							<td><input type="text" name="V_AREA"></td>
						</tr>
						<tr>
							<td style="text-align: center; width: 100px">유권자확인</td>
							<td>
								<input type="radio" name="V_CONFIRM" value="Y"> 확인
								<input type="radio" name="V_CONFIRM" value="N"> 비확인
							</td>
						</tr>
						<tr>
							<td colspan="2" style="text-align: center">
								<input type="button" value="투표하기" onclick="voteCheck()"> &nbsp;
								<input type="button" value="다시하기" onclick="res()">
							</td>
						</tr>
					</table>
				</form>
		</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
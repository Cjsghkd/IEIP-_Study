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
		
		<h2 style="text-align: center">투표하기</h2>
			<form method="post" action="action.jsp" name="frm" style="display: flex; align-content: center; justify-content: center">
				<table border="1">
					<tr>
						<td style="text-align: center">주민번호</td>
						<td><input type="text" name="V_JUMIN"> 예 : 8906153154726</td>
					</tr>
					<tr>
						<td style="text-align: center">성명</td>
						<td><input type="text" name="V_NAME"></td>
					</tr>
					<tr>
						<td style="text-align: center">투표번호</td>
						<td>
							<select name="M_NO">
								<option value="">
								<option value="1">[1] 김후보
								<option value="2">[2] 이후보
								<option value="3">[3] 박후보
								<option value="4">[4] 조후보
								<option value="5">[5] 최후보
							</select>
						</td>
					</tr>
					<tr>
						<td style="text-align: center">투표시간</td>
						<td><input type="text" name="V_TIME"></td>
					</tr>
					<tr>
						<td style="text-align: center">투표장소</td>
						<td><input type="text" name="V_AREA"></td>
					</tr>
					<tr>
						<td style="text-align: center">유권자확인</td>
						<td>
							<input type="radio" name="V_CONFIRM" value="Y"> 확인
							<input type="radio" name="V_CONFIRM" value="N"> 미확인
						</td>
					</tr>
					<tr>
						<td colspan="2" style="text-align: center">
							<input type="submit" value="투표하기" onclick="vote()"> 
							<input type="button" value="다시하기" onclick="res()"> 
						</td>
					</tr>
				</table>
			</form>
	</section>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
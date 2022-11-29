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
	
	<section style="position: fixed; top: 130px; left: 0px; width: 100%; height: 100%; background-color: lightgray;">
		<h3 style="text-align: center">수강신청</h3>
		
		<form name="frm" style="display: flex; align-content: center; justify-content: center">
			<table border="1">
				<tr>
					<td style="text-align: center">수강월</td>
					<td><input type="text" name="month"> 2022년03월 예)202203</td>
				</tr>
				<tr>
					<td style="text-align: center">회원명</td>
					<td>
						<select name="c_name">
							<option value="">회원명</option>
							<option value="10001">홍길동</option>
							<option value="10002">장발장</option>
							<option value="10003">임꺽정</option>
							<option value="20001">성춘향</option>
							<option value="20002">이몽룡</option>
						</select>
					</td>
				</tr>
				<tr>
					<td style="text-align: center">회원번호</td>
					<td><input type="text" name="c_no"> 예)10001</td>
				</tr>
				<tr>
					<td style="text-align: center">강의장소</td>
					<td>
						<select name="address">
							<option value="">강의장소</option>
							<option value="서울본원">서울시 강남구</option>
							<option value="성남분원">성남시 분당구</option>
							<option value="대전분원">대전시 유성구</option>
							<option value="부산분원">부산시 서구</option>
							<option value="대구분원">대구시 북구</option>
						</select>
					</td>
				</tr>
				<tr>
					<td style="text-align: center">강의명</td>
					<td>
						<select name="class_name">
							<option value="">강의신청</option>
							<option value="100000">초급반</option>
							<option value="200000">중급반</option>
							<option value="300000">고급반</option>
							<option value="400000">심화반</option>
						</select>
					</td>
				</tr>
				<tr>
					<td style="text-align: center">수강료</td>
					<td><input type="text" name="class_price"> 원</td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center">
						<input type="button" value="수강신청" onclick="insertCheck()"> &nbsp; &nbsp;
						<input type="button" value="다시하기" onclick="res()">
					</td>
				</tr>
			</table>
		</form>
	</section>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
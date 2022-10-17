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
	
	<section style="position: fixed; top: 150px; left: 0px; width: 100%; height: 100%; background-color: lightgray; text-align: center">
		<h2>수강신청</h2>
		
		<form method="post" action="action.jsp" name="frm" style="display: flex; align-content: center; justify-content: center">
			<table border="1">
				<tr>
					<td style="width: 150px; height: 40px">수강월</td>
					<td style="text-align: left; padding-left: 20px"><input type="text" name="month" style="width: 150px"> 2022년2월13일 예)220213</td>
				</tr>
				<tr>
					<td style="width: 150px; height: 40px">회원명</td>
					<td style="text-align: left; padding-left: 20px">
					<select name="custmor_name" style="width: 150px" onchange="getvalue(this.value)">
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
					<td style="width: 150px; height: 40px">회원번호</td>
					<td style="text-align: left; padding-left: 20px"><input id="custmor_number" type="text" name="custmor_number" readonly style="width: 150px"> 예)10001</td>
				</tr>
				<tr>
					<td style="width: 150px; height: 40px">강의장소</td>
					<td style="text-align: left; padding-left: 20px">
						<select name="place" style="width: 150px">
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
					<td style="width: 150px; height: 40px">강의명</td>
					<td style="text-align: left; padding-left: 20px">
						<select name="class_name" style="width: 150px" onchange="getvalue2(this.value)">
							<option value="">강의신청</option>
							<option value="100000">초급반</option>
							<option value="200000">중급반</option>
							<option value="300000">고급반</option>
							<option value="400000">심화반</option>
						</select>
					</td>
				</tr>
				<tr>
					<td style="width: 150px; height: 40px">수강료</td>
					<td style="text-align: left; padding-left: 20px"><input id="price" name="price" type="text" readonly style="width: 150px"> 원</td>
				</tr>
				<tr>
					<td colspan="2" style="width: 150px; height: 40px">
						<input type="button" value="수강신청" onclick="insert()"> &nbsp;
						<input type="button" value="다시하기" onclick="rewrite()">
					</td>
				</tr>
			</table>
		</form>
		
	</section>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
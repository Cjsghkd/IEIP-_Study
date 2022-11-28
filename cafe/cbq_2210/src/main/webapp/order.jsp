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
	
	<section style="position: fixed; top: 70px; left: 0px; width: 100%; height: 100%; background-color: lightgray;">
		<h3 style="text-align: center">카페 메뉴 주문하기</h3>
		<form  name="frm" style="display: flex; align-content: center; justify-content: center">
			<table border="1">
			
			<%
				String sql = "select max(orderno+1) from order_tbl2";
				PreparedStatement pstmt = con.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				rs.next();
				
				String orderno = rs.getString(1);
			%>
			
				<tr>
					<td style="text-align: center">주문번호</td>
					<td><input type="text" value="<%=orderno %>" name="orderno" readonly></td>
				</tr>
				<tr>
					<td style="text-align: center">고객번호</td>
					<td><input type="text;" name="custno"></td>
				</tr>
				<tr>
					<td style="text-align: center">고객이름</td>
					<td><input type="text" name="custname"></td>
				</tr>
				<tr>
					<td style="text-align: center">메뉴번호</td>
					<td>
						<input type="radio" name="drink" value="10001">아메리카노
						<input type="radio" name="drink" value="10002">카페 라떼
						<input type="radio" name="drink" value="10003">카페 모카
						<input type="radio" name="drink" value="10004">돌체 라떼
						<input type="radio" name="drink" value="10005">콜드 브루
					</td>
				</tr>
				<tr>
					<td style="text-align: center">수량</td>
					<td>
						<select name="amount">
							<option value="1">1개(추가 주문시 선택)</option>
							<option value="2">2개</option>
							<option value="3">3개</option>
							<option value="4">4개</option>
							<option value="5">5개</option>
							<option value="6">6개</option>
							<option value="7">7개</option>
							<option value="8">8개</option>
							<option value="9">9개</option>
							<option value="10">10개</option>
						</select>
					</td>
				</tr>
				<tr>
					<td style="text-align: center">주문일자</td>
					<td><input type="text" placeholder="예) 2022 11 28" name="orderdate"></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center">
						<input type="button" value="주문하기" onclick="orderCheck()"> &nbsp; &nbsp;
						<input type="button" value="다시하기" onclick="res()">
					</td>
				</tr>
			</table>
		</form>
	</section>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
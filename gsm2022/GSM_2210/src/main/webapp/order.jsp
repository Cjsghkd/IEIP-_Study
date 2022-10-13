<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="db.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript" src="script2.js"></script>
	
	<jsp:include page="header.jsp"></jsp:include>

	<section
		style="position: fixed; top: 60px; width: 100%; height: 100%; background-color: lightgray">
		<h1 style="text-align: center;">카페 메뉴 주문하기</h1>

		<form
			style="display: flex; align-content: center; justify-content: center;"
			name="ordertable" action="action.jsp" method="post">
			<input type="hidden" name="mode" value="insert" >
			<table border="1">

				<%
				request.setCharacterEncoding("UTF-8");

				PreparedStatement pstmt = null;
				String orderno = "";
				try {
					String sql = "SELECT max(orderno)+1 from order_tbl";
					pstmt = con.prepareStatement(sql);
					ResultSet rs = pstmt.executeQuery();
					rs.next();
					orderno = rs.getString(1);
				%>
				<%
				} catch (Exception e) {
				e.printStackTrace();
				}
				%>

				<tr>
					<td style="text-align: center;">주문번호</td>
					<td><input type="text" name="orderno" value=<%=orderno%>
						readonly></td>
				</tr>
				<tr>
					<td style="text-align: center;">고객번호</td>
					<td><input type="text" name="custno"></td>
				</tr>
				<tr>
					<td style="text-align: center;">고객이름</td>
					<td><input type="text" name="custname"></td>
				</tr>
				<tr>
					<td style="text-align: center;">메뉴번호</td>
					<td><input type="radio" name="drink" value="10001">아메리카노
						<input type="radio" name="drink" value="10002">카페 라떼 
						<input type="radio" name="drink" value="10003">카페 모카 
						<input type="radio" name="drink" value="10004">둘체 라떼 
						<input type="radio" name="drink" value="10005">콜드 브루</td>
				</tr>
				<tr>
					<td style="text-align: center;">수량</td>
					<td>
					<select name="amount">
							<option value="1">1개(추가 주문시 선택)</option>
							<option value="2">2개</option>
							<option value="3">3개</option>
					</select>
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">주문일자</td>
					<td><input type="text" placeholder="예) 20221006" name="date"></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center;">
						<input type="button" value="주문하기" onclick="return ordercheck()">&nbsp; &nbsp; 
						<input type="button" value="다시하기"onclick="return rewrite()">
					</td>
				</tr>




			</table>
		</form>
	</section>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
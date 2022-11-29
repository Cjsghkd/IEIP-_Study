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
		<h3 style="text-align: center">주문 수정하기</h3>
		<form method="post" action="action.jsp" name="frm" style="display: flex; align-content: center; justify-content: center">
		<input type="hidden" name="mode" value="modify">
			<table border="1">
			
			<%
				String orderno = request.getParameter("orderno");
			
				String sql = "select * from order_tbl2 where orderno = ?";
				PreparedStatement pstmt = con.prepareStatement(sql);
				pstmt.setString(1, orderno);
				ResultSet rs = pstmt.executeQuery();
				if(rs.next())
			%>
			
				<tr>
					<td style="text-align: center">주문번호</td>
					<td><input type="text" value="<%=orderno %>" name="orderno" readonly></td>
				</tr>
				<tr>
					<td style="text-align: center">고객번호</td>
					<td><input type="text" name="custno" value="<%=rs.getInt(2) %>"></td>
				</tr>
				<tr>
					<td style="text-align: center">고객이름</td>
					<td><input type="text" name="custname" value="<%=rs.getString(3) %>"></td>
				</tr>
				<tr>
					<td style="text-align: center">메뉴번호</td>
					<td>
						<input type="radio" name="drink" value="10001" <% if(rs.getString(4).equals("10001")) out.println("checked"); %>>아메리카노
						<input type="radio" name="drink" value="10002" <% if(rs.getString(4).equals("10002")) out.println("checked"); %>>카페 라떼
						<input type="radio" name="drink" value="10003" <% if(rs.getString(4).equals("10003")) out.println("checked"); %>>카페 모카
						<input type="radio" name="drink" value="10004" <% if(rs.getString(4).equals("10004")) out.println("checked"); %>>돌체 라떼
						<input type="radio" name="drink" value="10005" <% if(rs.getString(4).equals("10005")) out.println("checked"); %>>콜드 브루
					</td>
				</tr>
				<tr>
					<td style="text-align: center">수량</td>
					<td>
						<select name="amount">
							<option value="1" <% if(rs.getString(5).equals("1")) out.println("selected"); %>>1개(추가 주문시 선택)</option>
							<option value="2" <% if(rs.getString(5).equals("2")) out.println("selected"); %> >2개</option>
							<option value="3" <% if(rs.getString(5).equals("3")) out.println("selected"); %>>3개</option>
							<option value="4" <% if(rs.getString(5).equals("4")) out.println("selected"); %>>4개</option>
							<option value="5" <% if(rs.getString(5).equals("5")) out.println("selected"); %>>5개</option>
							<option value="6" <% if(rs.getString(5).equals("6")) out.println("selected"); %>>6개</option>
							<option value="7" <% if(rs.getString(5).equals("7")) out.println("selected"); %>>7개</option>
							<option value="8" <% if(rs.getString(5).equals("8")) out.println("selected"); %>>8개</option>
							<option value="9" <% if(rs.getString(5).equals("9")) out.println("selected"); %>>9개</option>
							<option value="10" <% if(rs.getString(5).equals("10")) out.println("selected"); %>>10개</option>
						</select>
					</td>
				</tr>
				<tr>
					<td style="text-align: center">주문일자</td>
					<td><input type="text" placeholder="예) 2022 11 28" name="orderdate" value="<%=rs.getDate(6)%>"></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center">
						<input type="button" value="수정하기" onclick="orderCheck()"> &nbsp; &nbsp;
						<input type="button" value="다시하기" onclick="res()">
					</td>
				</tr>
			</table>
		</form>
	</section>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
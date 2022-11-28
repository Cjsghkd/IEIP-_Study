<%@page import="java.text.DecimalFormat"%>
<%@page import="java.sql.PreparedStatement"%>
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
	
	<section style="position: fixed; top: 70px; left: 0px; width: 100%; height: 100%; background-color: lightgray;">
		<h3 style="text-align: center">주문 조회 페이지</h3>
		
		<a href="order.jsp" style="padding-left: 990px">주문하기</a>
		
		<form style="display: flex; align-content: center; justify-content: center; text-align: center">
			<table border="1">
				<tr>
					<td>주문번호</td>
					<td>고객번호</td>
					<td>고객이름</td>
					<td>메뉴이름</td>
					<td>수량</td>
					<td>지불금액</td>
					<td>주문일자</td>
					<td>수정</td>
					<td>삭제</td>
				</tr>
				<%
					String sql = "select orderno, custno, custname, menuname, amount, amount*price, orderdate from menu_tbl2 mt, order_tbl2 ot where mt.menuno = ot.menuno";
					PreparedStatement pstmt = con.prepareStatement(sql);
					ResultSet rs = pstmt.executeQuery();
					
					while(rs.next()) {
						DecimalFormat price = new DecimalFormat("###,###,###");
						%>
							<tr>
								<td><%=rs.getInt(1) %></td>
								<td><%=rs.getInt(2) %></td>
								<td><%=rs.getString(3) %></td>
								<td><%=rs.getString(4) %></td>
								<td><%=rs.getInt(5) %></td>
								<td><%=price.format(rs.getInt(6)) + "원" %></td>
								<td><%=rs.getDate(7) %></td>
								<td><a href="modify.jsp?orderno=<%=rs.getString(1)%>">수정</a></td>
								<td>삭제</td>
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
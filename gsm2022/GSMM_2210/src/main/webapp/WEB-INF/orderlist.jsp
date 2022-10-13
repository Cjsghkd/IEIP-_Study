<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.text.*" %>
    
    <%@ include file="db.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>orderList</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<section style="position: fixed; top: 60px; width: 100%; height: 100%; background-color: lightgray">
	<h1 style="text-align: center;">
	주문 조회 페이지
	</h1>
	
	<a href="order.jsp" style="padding-left: 1020px;">주문하기</a>
	
	<form style="display: flex; align-content: center; justify-content: center; text-align: center;">
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
				PreparedStatement pstmt = null;
				try {
					String sql = "SELECT orderno, custno, custname, menuname, amount, amount*price, orderdate FROM order_tbl ot,menu_tbl mt WHERE ot.MENUNO = mt.MENUNO";
					pstmt = con.prepareStatement(sql);
					ResultSet rs = pstmt.executeQuery();
					DecimalFormat def = new DecimalFormat("###,###,###");
					
					while(rs.next()) {
						%> 
						<tr>
							<td><%=rs.getString(1) %></td>
							<td><%=rs.getString(2) %></td>
							<td><%=rs.getString(3) %></td>
							<td><%=rs.getString(4) %></td>
							<td><%=rs.getString(5) %></td>
							<td><%=def.format(rs.getInt(6)) %>원</td>
							<td><%=rs.getDate(7) %></td>
							<td><a href="order.jsp">주문수정</a></td>
							<td><a href="order.jsp">주문삭제</a></td>
						</tr>
						<% 
					}
				} catch(Exception e) {
					e.printStackTrace();
				}
			%>
		</table>
	</form>
	
	</section>
	
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
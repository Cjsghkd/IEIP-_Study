<%@page import="java.text.DecimalFormat"%>
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
	
	<section style="position: fixed; top: 70px; left: 0px; width: 100%; height: 100%; background-color: lightgray">
		<h3 style="text-align: center">도서 대여 프로그램</h3>
			<form style="display: flex; align-content: center; justify-content: center; text-align: center">
				<table border="1">
					<tr>
						<td>도서번호</td>
						<td>도서명</td>
						<td>장르</td>
						<td>가격</td>
						<td>남은 수량</td>
						<td>대출가능여부</td>
					</tr>
					<%
						String sql = "select bk.bookno,bk. bookname, bk.genre, bk.price, bk.amount, br.re_book from book_tbl bk, borrow_tbl br where bk.bookno = br.bookno";
						PreparedStatement pstmt = con.prepareStatement(sql);
						ResultSet rs = pstmt.executeQuery();
						while(rs.next()) {
							DecimalFormat fm = new DecimalFormat("###,###,###");
							int amount = rs.getInt(5);
							String re_book = rs.getString(6);
							String canborrow = "";
							switch(re_book) {
							case "대여":
								amount--;
								break;
							}
							if (amount > 0) canborrow = "대출하기";
							%>
							<tr>
								<td><%=rs.getString(1) %></td>
								<td><%=rs.getString(2) %></td>
								<td><%=rs.getString(3) %></td>
								<td>₩<%=fm.format(rs.getInt(4)) %></td>
								<td><%=amount %></td>
								<td><a href="bookborrow.jsp"><%=canborrow %></a></td>
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
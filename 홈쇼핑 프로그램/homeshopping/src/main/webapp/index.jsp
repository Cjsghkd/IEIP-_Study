<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<section style="position: fixed; top: 100px; left: 0px; width: 100%; height: 100%; background-color: lightgray">
		<h2 style="text-align: center">쇼핑몰 회원관리 프로그램</h2>
		&nbsp;&nbsp; 쇼핑몰 회원정보와 회원매출정보 데이터베이스를 구축하고 회원관리프로그램을 작성하는 프로그램이다. <br>
		&nbsp;&nbsp; 프로그램 작성 순서 <br>
		&nbsp;&nbsp; 1. 회원정보 테이블을 생성한다. <br>
		&nbsp;&nbsp; 2. 매출정보 테이블을 생성한다. <br>
		&nbsp;&nbsp; 3. 회원정보, 매출정보 테이블에 제시된 문제지의 참조데이터를 추가 생성한다. <br>
		&nbsp;&nbsp; 4. 회원정보 입력 화면프로그램을 작성한다. <br>
		&nbsp;&nbsp; 5. 회원정보 조회 프로그램을 작성한다. <br>
		&nbsp;&nbsp; 6. 회원매출정보 조회 프로그램을 작성한다. <br>
	</section>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>